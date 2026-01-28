#!/bin/bash

declare -a ARRAY_NAME=()

while getopts 'cs:h' opt; do
  case "$opt" in
  
      
      c)
        #echo "Processing option 'c'"
        ;;
      
     s)
       arg="$OPTARG"
       #echo "Processing option 's' with '${OPTARG}' argument"
       IN=${OPTARG}
       IFS=';' read -ra ADDR <<< "$IN"
       for i in "${ADDR[@]}"; do
      	 # process "$i"
	 #echo "$i"
	 ARRAY_NAME+=($i)
       done
       echo "${ARRAY_NAME[*]}"
       ;;
      


   
    ?|h)
      echo "Usage: $(basename $0) [-a] [-b] [-c arg]"
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"




