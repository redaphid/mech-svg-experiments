#!/usr/bin/env fish
 function svg-export-id -a file -a id
    set tmp_file tmp/$id-inkscape.svg
    inkscape --export-type="svg" --export-id="$id" --export-id-only --export-filename="$tmp_file" $file
 end