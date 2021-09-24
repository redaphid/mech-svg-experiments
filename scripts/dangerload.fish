#!/usr/bin/env fish

#https://github.com/scour-project/scour
 function svg-export-id -a id -a file
    set -q file[1]; or set file "./canvas.svg"
    set tmp_file tmp/$id-inkscape.svg
    inkscape --export-type="svg" --export-id="$id" --export-id-only --export-filename="$tmp_file" $file
    scour --disable-style-to-xml --strip-xml-prolog -i $tmp_file -o "tmp/$id.svg"
    echo "tmp/$id.svg"
 end