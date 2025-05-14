#!/bin/bash

set -e

SCRIPT_DIR=$(dirname "$(realpath "$0")")
PARENT_DIR=$(dirname "$SCRIPT_DIR")
PARENT_DIR=$(dirname "$PARENT_DIR")
cd "$SCRIPT_DIR"

INPUT_DOCUMENTS_DIR="$PARENT_DIR/documents"
INPUT_MARKDOWN_DIR="$PARENT_DIR/pages"
COMBINED_FILE="$PARENT_DIR/assets/oran_specifications_combined.md"
COMBINED_FILENAME=$(basename "$COMBINED_FILE")

# Create directories if they do not exist
if [ ! -d "$INPUT_DOCUMENTS_DIR" ]; then
    echo "Could not find '$INPUT_DOCUMENTS_DIR' directory."
    exit 1
fi

if [ ! -d "$INPUT_MARKDOWN_DIR" ]; then
    echo "Could not find '$INPUT_MARKDOWN_DIR' directory."
    exit 1
fi

# Determine the working group on outlier files
normalize_working_group() {
    local GROUP="$1"
    if [[ "$GROUP" == "SFG" ]]; then
        echo "WG11"
    else
        echo "$GROUP"
    fi
}

# Clear previous files
>"$COMBINED_FILE"

# Step 1: Collect all files + WG into an array
declare -a ENTRIES
while IFS= read -r FILE; do
    FILE_NAME=$(basename "$FILE")
    WORKING_GROUP=$(echo "$FILE_NAME" | sed -E 's/^O-?RAN[.-]([^\.-]+).*/\1/')
    WORKING_GROUP=$(normalize_working_group "$WORKING_GROUP")
    ENTRIES+=("$WORKING_GROUP|$FILE")
done < <(find "$INPUT_DOCUMENTS_DIR" -type f)

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

for ENTRY in "${SORTED[@]}"; do
    CURRENT_FILE=$((CURRENT_FILE + 1))
    IFS='|' read -r WORKING_GROUP FILE <<<"$ENTRY"
    FILE_NAME=$(basename "$FILE")
    OUTPUT_FILE_NAME="$FILE_NAME.md"
    OUTPUT_FILE_PATH="$INPUT_MARKDOWN_DIR/$OUTPUT_FILE_NAME"
    WORKING_GROUP=$(echo "$FILE_NAME" | sed -E 's/^O-?RAN[.-]([^.-]+).*/\1/')
    WORKING_GROUP=$(normalize_working_group "$WORKING_GROUP")

    if [ ! -f "$OUTPUT_FILE_PATH" ]; then
        echo "    Could not find $OUTPUT_FILE_PATH, skipping..."
        continue
    fi

    CONTENTS=$(cat "$OUTPUT_FILE_PATH")

    # Remove headers and footers
    CONTENTS=$(echo "$CONTENTS" | sed '/- View in \[Reader Mode\].*/d')
    CONTENTS=$(echo "$CONTENTS" | sed '/- Go back to \[Table of Contents\].*/d')
    CONTENTS=$(echo "$CONTENTS" | awk '!/- Download the \[Original Document\].*/ {print} /- Download the \[Original Document\].*/ {getline; if ($0 != "---") print $0}')
    CONTENTS=$(echo "$CONTENTS" | sed '/- Download the \[Original Document\].*/d')

    # Add section header and append content to the combined markdown file
    echo "---" >>"$COMBINED_FILE"
    echo "# File: $FILE_NAME" >>"$COMBINED_FILE"
    echo >>"$COMBINED_FILE"
    echo "---" >>"$COMBINED_FILE"
    echo >>"$COMBINED_FILE"
    echo "$CONTENTS" >>"$COMBINED_FILE"
    echo >>"$COMBINED_FILE"
done

echo
echo "Successfully combined all files into $COMBINED_FILE"
