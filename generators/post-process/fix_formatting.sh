#!/bin/bash

set -e

SCRIPT_DIR=$(dirname "$(realpath "$0")")
PARENT_DIR=$(dirname "$SCRIPT_DIR")
PARENT_DIR=$(dirname "$PARENT_DIR")
cd "$SCRIPT_DIR"

MARKDOWN_DIR="$PARENT_DIR/pages"

for FILE_PATH in "$MARKDOWN_DIR"/*.md; do
    # Skip if the FILE does not exist
    if [ ! -f "$FILE_PATH" ]; then
        continue
    fi

    # Read file contents into a variable
    CONTENTS=$(<"$FILE_PATH")

    # Perform modifications
    CONTENTS=$(echo "$CONTENTS" | sed 's/ NaN /  -  /g')

    # Remove absolute paths by removing the parent directory from the content paths
    CONTENTS=$(echo "$CONTENTS" | sed "s|$PARENT_DIR/||g")

    # Sanitize script tags
    CONTENTS=$(echo "$CONTENTS" | sed 's/<script>/< script >/g')
    CONTENTS=$(echo "$CONTENTS" | sed 's/<\/script>/<\/ script >/g')

    # Remove links from old MarkItDown table of contents
    CONTENTS=$(echo "$CONTENTS" | sed -E 's|\[([0-9\*]+)\]\(#_bookmark[0-9]+\)|[\1]|g')   # Match [**123**] --> keep parentheses
    CONTENTS=$(echo "$CONTENTS" | sed -E 's|\[([0-9\*]+),\]\(#_bookmark[0-9]+\)|[\1],|g') # Match [**123**], --> keep parentheses and comma
    CONTENTS=$(echo "$CONTENTS" | sed -E 's|\[([^\[\]]*?)\]\(#_bookmark[0-9]+\)|\1|g')    # Most strict, don't allow []
    CONTENTS=$(echo "$CONTENTS" | sed -E 's|\[([^\[]*?)\]\(#_bookmark[0-9]+\)|\1|g')      # Most strict, don't allow [
    CONTENTS=$(echo "$CONTENTS" | sed -E 's|\[([^#]*?)\]\(#_bookmark[0-9]+\)|\1|g')       # Less strict, don't allow #
    CONTENTS=$(echo "$CONTENTS" | sed -E 's|\[(.*?)\]\(#_bookmark[0-9]+\)|\1|g')          # Finally, allow everything

    # Remove table of contents for tables and figures
    CONTENTS=$(echo "$CONTENTS" | sed -E 's|\[(.*?)\]\(#_Toc[0-9]+\)|\1|g')
    CONTENTS=$(echo "$CONTENTS" | sed -E 's|\[(.*?)\]\(#_TOC_[0-9]+\)|\1|g')

    # Wrap PlantUML code blocks with triple backticks (fails because of tables)
    # CONTENTS=$(echo "$CONTENTS" | sed 's/@startuml/```\n@startuml/g')
    # CONTENTS=$(echo "$CONTENTS" | sed 's/@enduml/@enduml\n```/g')

    # # Remove all occurrences of footnote links
    # CONTENTS=$(echo "$CONTENTS" | sed -E 's/ ?\[↑\]\([^\)]+\)//g')

    # Normalize the characters
    CONTENTS=$(echo "$CONTENTS" | iconv -f UTF-8 -t ASCII//TRANSLIT)

    # Write modified contents back to the file
    echo "$CONTENTS" >"$FILE_PATH"
done

echo "Successfully fixed formatting of all files in $MARKDOWN_DIR."
