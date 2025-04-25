#!/bin/bash

set -e

SCRIPT_DIR=$(dirname "$(realpath "$0")")
PARENT_DIR=$(dirname "$SCRIPT_DIR")
PARENT_DIR=$(dirname "$PARENT_DIR")
cd "$SCRIPT_DIR"

INPUT_DIR="$PARENT_DIR/pages"
OUTPUT_JEKYLL_DIR="$PARENT_DIR/_pages"

rm -rf "$OUTPUT_JEKYLL_DIR/01-WG11"
rm -rf "$OUTPUT_JEKYLL_DIR/02-WG10"
rm -rf "$OUTPUT_JEKYLL_DIR/03-WG9"
rm -rf "$OUTPUT_JEKYLL_DIR/04-WG8"
rm -rf "$OUTPUT_JEKYLL_DIR/05-WG7"
rm -rf "$OUTPUT_JEKYLL_DIR/06-WG6"
rm -rf "$OUTPUT_JEKYLL_DIR/07-WG5"
rm -rf "$OUTPUT_JEKYLL_DIR/08-WG4"
rm -rf "$OUTPUT_JEKYLL_DIR/09-WG3"
rm -rf "$OUTPUT_JEKYLL_DIR/10-WG2"
rm -rf "$OUTPUT_JEKYLL_DIR/11-WG1"
rm -rf "$OUTPUT_JEKYLL_DIR/12-TIFG"
rm -rf "$OUTPUT_JEKYLL_DIR/13-SuFG"
mkdir -p "$OUTPUT_JEKYLL_DIR/01-WG11"
mkdir -p "$OUTPUT_JEKYLL_DIR/02-WG10"
mkdir -p "$OUTPUT_JEKYLL_DIR/03-WG9"
mkdir -p "$OUTPUT_JEKYLL_DIR/04-WG8"
mkdir -p "$OUTPUT_JEKYLL_DIR/05-WG7"
mkdir -p "$OUTPUT_JEKYLL_DIR/06-WG6"
mkdir -p "$OUTPUT_JEKYLL_DIR/07-WG5"
mkdir -p "$OUTPUT_JEKYLL_DIR/08-WG4"
mkdir -p "$OUTPUT_JEKYLL_DIR/09-WG3"
mkdir -p "$OUTPUT_JEKYLL_DIR/10-WG2"
mkdir -p "$OUTPUT_JEKYLL_DIR/11-WG1"
mkdir -p "$OUTPUT_JEKYLL_DIR/12-TIFG"
mkdir -p "$OUTPUT_JEKYLL_DIR/13-SuFG"

# Determine the working group on outlier files
normalize_working_group() {
    local GROUP="$1"
    if [[ "$GROUP" == "SFG" ]]; then
        echo "WG11"
    else
        echo "$GROUP"
    fi
}

for FILE_PATH in "$INPUT_DIR"/*.md; do
    # Skip if the FILE does not exist
    if [ ! -f "$FILE_PATH" ]; then
        continue
    fi

    FILE_NAME=$(basename "$FILE_PATH")
    WORKING_GROUP=$(echo "$FILE_NAME" | sed -E 's/^O-?RAN[.-]([^.-]+).*/\1/')
    WORKING_GROUP=$(normalize_working_group "$WORKING_GROUP")

    case "$WORKING_GROUP" in
    "WG11") TARGET_DIR="$OUTPUT_JEKYLL_DIR/01-WG11" ;;
    "WG10") TARGET_DIR="$OUTPUT_JEKYLL_DIR/02-WG10" ;;
    "WG9") TARGET_DIR="$OUTPUT_JEKYLL_DIR/03-WG9" ;;
    "WG8") TARGET_DIR="$OUTPUT_JEKYLL_DIR/04-WG8" ;;
    "WG7") TARGET_DIR="$OUTPUT_JEKYLL_DIR/05-WG7" ;;
    "WG6") TARGET_DIR="$OUTPUT_JEKYLL_DIR/06-WG6" ;;
    "WG5") TARGET_DIR="$OUTPUT_JEKYLL_DIR/07-WG5" ;;
    "WG4") TARGET_DIR="$OUTPUT_JEKYLL_DIR/08-WG4" ;;
    "WG3") TARGET_DIR="$OUTPUT_JEKYLL_DIR/09-WG3" ;;
    "WG2") TARGET_DIR="$OUTPUT_JEKYLL_DIR/10-WG2" ;;
    "WG1") TARGET_DIR="$OUTPUT_JEKYLL_DIR/11-WG1" ;;
    "TIFG") TARGET_DIR="$OUTPUT_JEKYLL_DIR/12-TIFG" ;;
    "SuFG") TARGET_DIR="$OUTPUT_JEKYLL_DIR/13-SuFG" ;;
    *) TARGET_DIR="" ;;
    esac

    if [ -z "$TARGET_DIR" ]; then
        echo "Unknown working group for file: $FILE_NAME"
        exit 1
    fi

    CONTENTS=$(cat "$FILE_PATH")
    CONTENTS=$(echo "$CONTENTS" | sed 's/{{/{ {/g')
    CONTENTS=$(echo "$CONTENTS" | sed 's/}}/} }/g')

    # Remove the header if it starts with ##
    if [[ "$CONTENTS" == \#\#\ * ]]; then
        CONTENTS=$(echo "$CONTENTS" | sed '1{/^## /d}')
    fi

    # Replace "- View in [Reader Mode](https://simewu.com/spec-reader/pages/<work_group>/" with "- View in [GitHub Mode]({{site.github_page_url}}/"
    CONTENTS=$(echo "$CONTENTS" | sed 's|- View in \[Reader Mode\](https:\/\/simewu.com\/spec-reader\/pages\/[^/]\+\/|- View in [GitHub Mode]({{site.github_page_url}}\/|g')

    # Add .md to the end of the url
    CONTENTS=$(echo "$CONTENTS" | sed 's|\(- View in \[GitHub Mode\].*\))\.|\1.md).|g')

    # Replace "- Go back to [Table of Contents](../README.md)." with "- Go back to [Table of Contents]({{site.baseurl}}/)."
    CONTENTS=$(echo "$CONTENTS" | sed 's/- Go back to \[Table of Contents\](..\/README.md).*/- Go back to [Table of Contents]({{site.baseurl}}\/)./')

    # Replace "- Download the [Original Document](../documents" with "- Download the [Original Document]({{site.download_url}}"
    CONTENTS=$(echo "$CONTENTS" | sed 's/- Download the \[Original Document\](https:\/\/github.com\/Simewu\/spec-reader\/raw\/refs\/heads\/main\/documents\//- Download the [Original Document]({{site.download_url}}\//')

    # Insert table of contents after Download line: * toc\n{:toc}
    CONTENTS=$(echo "$CONTENTS" | sed '0,/\(- Download the \[Original Document\].*\)/s//\1\n\n---\n\n* toc\n{:toc}/')

    # Replace "(../assets/images" with "({{site.baseurl}}/assets/images"
    CONTENTS=$(echo "$CONTENTS" | sed 's|(../assets/images|({{site.baseurl}}/assets/images|g')

    # Wrap tables in divs
    CONTENTS=$(echo "$CONTENTS" | awk 'BEGIN { in_table = 0 }
    /\|/ {
        if (!in_table) {
            print "<div class=\"table-wrapper\" markdown=\"block\">\n"
            in_table = 1
        }
        print
        next
    }
    {
        if (in_table) {
            print "\n</div>"
            in_table = 0
        }
        print
    }
    END {
        if (in_table)
            print "\n</div>"
    }')

    # Insert header for Jekyll
    HEADER="---\n"
    HEADER+="title: $FILE_NAME\n"
    HEADER+="author: O-RAN Alliance, $WORKING_GROUP\n"
    HEADER+="layout: post\n"
    HEADER+="---\n"
    CONTENTS="$HEADER$CONTENTS"

    echo -e "$CONTENTS" >"$TARGET_DIR/$FILE_NAME"
done

echo "Successfully processed files into Jekyll format."
