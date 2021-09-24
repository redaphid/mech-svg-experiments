#!/usr/bin/env fish
 function svg-export-id -a file -a id
    set tmp_file tmp/$id-inkscape.svg
    inkscape --export-type="svg" --export-id="$id" --export-id-only --export-filename="$tmp_file" $file
    scour --strip-xml-prolog -i $tmp_file -o images/$id.svg
    # rm $tmp_file
 end