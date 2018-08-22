#!/bin/bash
# Get the aliases and functions

# echo "Hello World"
today() {
    echo -n "Today's date is: "
    date +"%A, %B %-d, %Y"
}

# today
# echo "All Clear"

# counter=1

# for d in ./*;
# do
#   temp=${d##./}
#   echo - $counter - ${temp%%.sh};
#   counter=$((counter + 1))
# done
