#!/bin/bash
category_idx=$(bin/get_category_idx.sh "$1" "$5")
subject_idx=$(bin/get_subject_idx.sh $category_idx "$2" "$5")
cleaned_text=$(echo "$4" | sed -e 's/^"//' -e 's/"$//' -e 's/\\n//g' -e 's/\\t/	/g')
current_text=$(bin/get_card_text.sh "$1" "$2" "$3" "$5")
combined="$cleaned_text""$current_text"
bin/set_card_text.sh "$1" "$2" "$3" "$combined" "$5"

