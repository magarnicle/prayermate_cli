#!/bin/bash
category_idx=$(bin/get_category_idx.sh "$1" "$5")
subject_idx=$(bin/get_subject_idx.sh $category_idx "$2" "$5")
cleaned_text=$(echo "$4" | sed -e 's/^"//' -e 's/"$//' -e 's/\\n//g' -e 's/\\t/	/g')
jq '.Categories['"$category_idx"'].subjects['"$subject_idx"'].cards['"$3"'].text = "'"$cleaned_text"'"' $5

