# my awk script to scan each line of a log file for a specific text, then print it and the field next to it.
# use it to scan and print a value of a field in a message for all lines.
# mawk <log file>
# use > or >> to redirect output
awk '{
    printf $1" "$2" "$3" "
    i=1
    while (i < 100)
    {
        if ($i == "ord_status:") {
            print $i" "$(i+1)" "
            break
        }
        i++
    }
}' $1

