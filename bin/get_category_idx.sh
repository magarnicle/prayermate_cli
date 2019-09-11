#!/bin/bash
jq '.Categories[].name' $2 | nl -v 0 | grep "$1" | cut -f 1 | sed -e 's/ //g'
