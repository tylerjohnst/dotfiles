for file in .{alises,functions}; do
    [ -r "$file" ] && source $file
done
