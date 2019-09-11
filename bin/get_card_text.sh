#!/bin/bash
jq ".text" <(bin/get_card.sh "$1" "$2" "$3" "$4") | sed -e 's/^"//' -e 's/"$//' -e 's/\\n//g'
