#!/bin/bash
category_idx=$(bin/get_category_idx.sh "$1" "$5")
subject_idx=$(bin/get_subject_idx.sh $category_idx "$2" "$5")
cleaned_text=$(echo "$4" | sed -e 's/^"//' -e 's/"$//' -e 's/\\n/
current_text=$(bin/get_card_text.sh "$1" "$2" "$3" "$5")
bin/set_card_text.sh "$1" "$2" "$3" "$cleaned_text" "$5"
bin/append_card_text.sh "$1" "$2" "$3" "$current_text" "$5"
