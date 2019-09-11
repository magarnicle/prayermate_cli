#!/bin/bash
category_idx=$(bin/get_category_idx.sh "$1" "$4")
subject_idx=$(bin/get_subject_idx.sh $category_idx "$2" "$4")
jq ".Categories[$category_idx].subjects[$subject_idx].cards[$3]" $4
