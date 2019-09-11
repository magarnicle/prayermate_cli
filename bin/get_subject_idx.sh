#!/bin/bash
category_idx=$(bin/get_category_idx.sh "$1" "$3")
jq ".Categories[$category_idx].subjects[].name" $3 | nl -v 0 | grep "$2" | cut -f 1 | sed -e 's/ //g'
