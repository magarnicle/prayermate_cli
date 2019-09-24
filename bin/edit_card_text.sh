#!/bin/bash
category_idx=$(bin/get_category_idx.sh "$1" "$4")
echo $category_idx
subject_idx=$(bin/get_subject_idx.sh $category_idx "$2" "$4")
echo $subject_idx
tmp=$(mktemp)
echo $tmp
card_text=$(bin/get_card_text.sh "$1" "$2" "$3" "$4")
echo "$card_text"
echo "$card_text" > "$tmp"
cat "$tmp"
vim "$tmp"
cleaned_text=$(cat "$tmp" | sed -e 's/^"//' -e 's/"$//' -e 's/\\n//g' -e 's/\\t/	/g')
tmp_out=$(mktemp)
jq '.Categories['"$category_idx"'].subjects['"$subject_idx"'].cards['"$3"'].text = "'"$cleaned_text"'"' $4 > "$tmp_out" && mv "$tmp_out" $4

