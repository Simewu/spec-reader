#!/bin/bash

set -e

if ! command -v realpath &>/dev/null; then
    echo "Package \"coreutils\" not found, installing..."
    sudo apt-get install -y coreutils
fi

SCRIPT_DIR=$(dirname "$(realpath "$0")")
PARENT_DIR=$(dirname "$SCRIPT_DIR")
cd "$SCRIPT_DIR"

INPUT_DIR="$PARENT_DIR/documents"
OUTPUT_DIR="$PARENT_DIR/pages"
README_FILE="$PARENT_DIR/_README.md"
VENV_ACTIVATE="dependencies/venv/bin/activate"
DOCUMENT_DOWNLOAD_LINK="https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents" # "../documents"

# Create directories if they do not exist
if [ ! -d "$INPUT_DIR" ]; then
    echo "Creating '$INPUT_DIR' directory..."
    mkdir -p "$INPUT_DIR"
fi

rm -rf "$OUTPUT_DIR"
if [ ! -d "$OUTPUT_DIR" ]; then
    echo "Creating '$OUTPUT_DIR' directory..."
    mkdir -p "$OUTPUT_DIR"
fi

# Activate virtual environment
source "$VENV_ACTIVATE"

# Function to URL-encode filenames
url_encode() {
    local STR="$1"
    local ENCODED=""
    local I C
    for ((I = 0; I < ${#STR}; I++)); do
        C="${STR:$I:1}"
        case "$C" in
        [a-zA-Z0-9.~_-]) ENCODED+="$C" ;;
        *) printf -v ENCODED '%s%%%02X' "$ENCODED" "'$C" ;;
        esac
    done
    echo "$ENCODED"
}

# Determine the working group on outlier files
normalize_working_group() {
    local GROUP="$1"
    if [[ "$GROUP" == "SFG" ]]; then
        echo "WG11"
    else
        echo "$GROUP"
    fi
}

# Clear previous file
>"$README_FILE"

# Write initial content to README
echo "# Web App for O-RAN Specification Reading" >>"$README_FILE"
echo >>"$README_FILE"

# Step 1: Collect all files + WG into an array
declare -a ENTRIES
while IFS= read -r FILE; do
    FILE_NAME=$(basename "$FILE")
    WORKING_GROUP=$(echo "$FILE_NAME" | sed -E 's/^O-?RAN[.-]([^\.-]+).*/\1/')
    WORKING_GROUP=$(normalize_working_group "$WORKING_GROUP")
    ENTRIES+=("$WORKING_GROUP|$FILE")
done < <(find "$INPUT_DIR" -type f)

# Step 2: Sort by WORKING_GROUP then by filename, and then process each entry
IFS=$'\n' SORTED=($(printf '%s\n' "${ENTRIES[@]}" | sort -t '|' -k1.3nr -k2,2))
unset IFS

echo
echo "Sorted list of files:"
for ENTRY in "${SORTED[@]}"; do
    IFS='|' read -r WORKING_GROUP FILE <<<"$ENTRY"
    FILE_NAME=$(basename "$FILE")
    echo "$WORKING_GROUP: $FILE_NAME"
done
echo

TOTAL_FILES=${#SORTED[@]}
CURRENT_FILE=0
PREVIOUS_WORKING_GROUP=""

for ENTRY in "${SORTED[@]}"; do
    CURRENT_FILE=$((CURRENT_FILE + 1))
    IFS='|' read -r WORKING_GROUP FILE <<<"$ENTRY"
    FILE_NAME=$(basename "$FILE")
    OUTPUT_FILE_NAME="$FILE_NAME.md"
    OUTPUT_FILE_PATH="$OUTPUT_DIR/$OUTPUT_FILE_NAME"
    WORKING_GROUP=$(echo "$FILE_NAME" | sed -E 's/^O-?RAN[.-]([^.-]+).*/\1/')
    WORKING_GROUP=$(normalize_working_group "$WORKING_GROUP")

    echo
    echo "Processing $FILE_NAME... ($CURRENT_FILE of $TOTAL_FILES)"

    markitdown "$FILE" -o "$OUTPUT_FILE_PATH" --keep-data-uris

    ENCODED_FILENAME=$(url_encode "$OUTPUT_FILE_NAME")
    ENCODED_FILENAME="${ENCODED_FILENAME%.md}"

    # Prepend link back to table of contents in individual file
    TEMP_FILE=$(mktemp)
    {
        echo "## $FILE_NAME"
        echo
        echo "- View in [Reader Mode](https://simewu.com/spec-reader/pages/$WORKING_GROUP_INDEXED/$ENCODED_FILENAME)."
        echo "- Go back to [Table of Contents](../README.md)."
        echo "- Download the [Original Document]($DOCUMENT_DOWNLOAD_LINK/$FILE_NAME)."
        echo
        echo "---"
        echo
        cat "$OUTPUT_FILE_PATH"
        echo
        echo "---"
        echo
        echo "- View in [Reader Mode](https://simewu.com/spec-reader/pages/$WORKING_GROUP_INDEXED/$ENCODED_FILENAME)."
        echo "- Go back to [Table of Contents](../README.md)."
        echo "- Download the [Original Document]($DOCUMENT_DOWNLOAD_LINK/$FILE_NAME)."
        echo
    } >"$TEMP_FILE"
    mv "$TEMP_FILE" "$OUTPUT_FILE_PATH"

    # Add markdown link to README.md
    # If the working group changed from the previous one, make a new header for it
    if [[ "$WORKING_GROUP" != "$PREVIOUS_WORKING_GROUP" ]]; then
        echo >>"$README_FILE"
        echo "## $WORKING_GROUP" >>"$README_FILE"
        echo >>"$README_FILE"
        PREVIOUS_WORKING_GROUP="$WORKING_GROUP"
    fi
    echo "- [$OUTPUT_FILE_NAME](./pages/$ENCODED_FILENAME)" >>"$README_FILE"
done

echo
echo "Successfully processed $TOTAL_FILES files."

cd "$SCRIPT_DIR"

echo "Extracting images to their own directory..."
./post-process/extract_images.sh

echo "Successfully extracted images to their own directory."
