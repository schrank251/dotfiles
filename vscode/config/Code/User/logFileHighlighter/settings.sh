#!/bin/bash

set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

cp settings.json settings.tmp.json

for I in Blue Cyan Green Magenta Red Yellow; do
    sort --reverse --output="$I" "$I"
	truncate -s -1 "$I"
    sed -i "s/$I/$(cat $I | tr '\n' '|')/" settings.tmp.json
done

sed -i 's/\\/\\\\/g' settings.tmp.json

jq --indent 4 --slurpfile src settings.tmp.json '.["logFileHighlighter.customPatterns"] = $src[0]["logFileHighlighter.customPatterns"]' ../settings.json > settings.out.json

#rm settings.tmp.json

cp settings.out.json ../settings.json
rm settings.out.json
