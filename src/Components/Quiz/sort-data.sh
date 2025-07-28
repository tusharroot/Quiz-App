#!/bin/bash

# Script to sort a dataset file based on the first column.

if [[ "$#" -ne 1 ]]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

INPUT_FILE=$1

if [[ ! -f "$INPUT_FILE" ]]; then
    echo "Error: File '$INPUT_FILE' not found."
    exit 1
fi

# k1,1n specifies sorting numerically
sort -t'<' -k1,1n "$INPUT_FILE"
