#!/bin/bash

set -e

SCRIPT_DIR=$(dirname "$(realpath "$0")")
PARENT_DIR=$(dirname "$SCRIPT_DIR")
PARENT_DIR=$(dirname "$PARENT_DIR")
cd "$SCRIPT_DIR"

INPUT_MARKDOWN_DIR="$PARENT_DIR/pages"
OUTPUT_MARKDOWN_DIR="$PARENT_DIR/pages"
OUTPUT_IMG_DIR="$PARENT_DIR/assets/images"
IMAGE_URI="../assets/images"

if ! command -v perl &>/dev/null; then
    echo "Perl is not installed. Installing..."
    sudo apt-get install -y perl
fi

if ! command -v inkscape &>/dev/null; then
    echo "Inkscape is not installed. Installing..."
    sudo apt-get install -y inkscape
fi

# rm -rf "$OUTPUT_IMG_DIR"
if [ ! -d "$OUTPUT_IMG_DIR" ]; then
    echo "Creating '$OUTPUT_IMG_DIR' directory..."
    mkdir -p "$OUTPUT_IMG_DIR"
fi

if [ "$INPUT_MARKDOWN_DIR" != "$OUTPUT_MARKDOWN_DIR" ]; then
    rm -rf "$OUTPUT_MARKDOWN_DIR"
fi
if [ ! -d "$OUTPUT_MARKDOWN_DIR" ]; then
    echo "Creating '$OUTPUT_MARKDOWN_DIR' directory..."
    mkdir -p "$OUTPUT_MARKDOWN_DIR"
fi

replace_text() {
    local FILE="$1"
    local SEARCH="$2"
    local REPLACE="$3"
    local TEMP="${FILE}.tmp"

    SEARCH="$SEARCH" REPL="$REPLACE" \
        perl -0777 -pe 'BEGIN{$s=$ENV{SEARCH};$r=$ENV{REPL}} s/\Q$s\E/$r/g' "$FILE" >"$TEMP" 2>/dev/null || {

        echo "    Data was too large, falling back to slower method"
        while IFS= read -r LINE; do
            LINE="${LINE//$SEARCH/$REPLACE}"
            printf '%s\n' "$LINE"
        done <"$FILE" >"$TEMP"
    }
    mv "$FILE.tmp" "$FILE"
}

for DOC_NAME in "$INPUT_MARKDOWN_DIR"/*.md; do
    echo
    echo "Processing $DOC_NAME..."

    OUTPUT_DOC_NAME="$OUTPUT_MARKDOWN_DIR/$(basename "$DOC_NAME")"
    if [ "$INPUT_MARKDOWN_DIR" != "$OUTPUT_MARKDOWN_DIR" ]; then
        cp "$DOC_NAME" "$OUTPUT_DOC_NAME"
    else
        OUTPUT_DOC_NAME="$DOC_NAME"
    fi

    # Find all data URIs in the Markdown file
    mapfile -t URIS < <(
        grep -oP 'data:image/[a-zA-Z0-9.+-]+;base64,[A-Za-z0-9+/=]+' "$OUTPUT_DOC_NAME" | sort -u
    )

    for URI in "${URIS[@]}"; do
        # Extract the metadata and base64 blob from the data URI
        META=${URI%%,*} # Metadata part
        B64=${URI#*,}   # Base64 part
        MIME=${META#data:image/}
        MIME=${MIME%;base64}

        case "$MIME" in
        jpeg | jpg) EXTENSION=jpg ;;
        png) EXTENSION=png ;;
        gif) EXTENSION=gif ;;
        svg+xml) EXTENSION=svg ;;
        *) EXTENSION="bin" ;; # Fallback for unknown MIME types
        esac

        HASH=$(printf '%s' "$URI" | sha256sum | cut -c1-12)

        # Convert tiff to png using ImageMagick
        if [ "$MIME" = "tiff" ]; then
            HASH="$HASH.tiff"
            EXTENSION=png
            if [ ! -f "$OUTPUT_IMG_DIR/$HASH.$EXTENSION" ]; then
                B64=$(echo "$B64" | base64 -d | convert - -quality 100 -depth 8 png:- | base64)
                echo "    Converted TIFF to PNG"
            fi
        fi

        # Convert EMF to PNG using Inkscape
        if [ "$MIME" = "x-emf" ]; then
            HASH="$HASH.emf"
            EXTENSION=png
            if [ ! -f "$OUTPUT_IMG_DIR/$HASH.$EXTENSION" ]; then
                TEMP_EMF=$(mktemp --suffix=.emf)
                echo "$B64" | base64 -d >"$TEMP_EMF"
                inkscape "$TEMP_EMF" \
                    --export-type=png \
                    --export-filename="$OUTPUT_IMG_DIR/$HASH.png" \
                    --export-width=2048

                if [ -f "$OUTPUT_IMG_DIR/$HASH.png" ]; then
                    # convert "$OUTPUT_IMG_DIR/$HASH.png" -trim +repage "$OUTPUT_IMG_DIR/$HASH.png" # Crop the image
                    B64=$(base64 "$OUTPUT_IMG_DIR/$HASH.png")
                    rm -f "$TEMP_EMF"
                    echo "    Converted EMF to PNG using Inkscape"
                else
                    echo "    Failed to convert EMF to PNG using Inkscape"
                    rm -f "$TEMP_EMF"
                    continue
                fi
            fi
        fi

        # Check if the extension is "bin" and remove the data URI
        if [ "$EXTENSION" = "bin" ]; then
            echo "    Skipping unknown MIME type: $MIME..."
            replace_text "$OUTPUT_DOC_NAME" "$URI" ")(Failed to render image, unsupported type: $MIME)"
            continue
        fi

        # Generate a unique filename based on the hash of the URI
        IMG_NAME="$HASH.$EXTENSION"
        IMG_PATH="$OUTPUT_IMG_DIR/$IMG_NAME"

        # Check if the image already exists
        if [ ! -f "$IMG_PATH" ]; then
            echo "    Saving image $IMG_NAME"
            printf '%s' "$B64" | base64 -d >"$IMG_PATH"
        fi

        # Replace the data URI in the Markdown file with the file path
        echo "    Replacing image URI with $IMG_NAME"
        replace_text "$OUTPUT_DOC_NAME" "$URI" "$IMAGE_URI/$IMG_NAME"
    done
done

echo "Successfully extracted images from Markdown files."
