#!/bin/bash


if [[ "$#" -ne 2 ]]; then
    echo "Usage: $0 <filename> <num_records>"
    exit 1
fi

FILENAME=$1
NUM_RECORDS=$2

echo "Generating $NUM_RECORDS records into '$FILENAME'..."

#this loop is generating specified number of records.
for (( i=1; i<=NUM_RECORDS; i++ ))
do
    # Generate two random 32-bit integers 
    INT1=$(shuf -i 0-2147483647 -n 1)
    INT2=$(shuf -i 0-2147483647 -n 1)

    # Generate a 100-byte random ASCII string using dev/urandom
    ASCII_STRING=$(head /dev/urandom | LC_ALL=C tr -dc '[:print:]' | head -c 100)

    # Print the record in the format <integer><integer><ASCII_string>
    echo "${INT1}<${INT2}<${ASCII_STRING}"
done > "$FILENAME"
#Above whole thing is saved to filename which is mentioned by user.
echo "Generation complete."
echo "Final record count in '$FILENAME':"
wc -l < "$FILENAME"
