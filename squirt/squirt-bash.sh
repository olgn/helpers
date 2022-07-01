#!/bin/bash

#output 
OUTPUT=""

# Determine directory prefixes -
# different in git bash vs ubuntu
if [ -d "/mnt/c" ] 
then
    PREFIX_C="/mnt/c"
    PREFIX_D="/mnt/d"
else
    PREFIX_C="/c"
    PREFIX_D="/d"
fi

# Interactive prompt for directory selection
PS3="Please select a directory: "
options=("C" "D" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "C")
            DIR_STRING="${PREFIX_C}/Users/User/Documents/Coordinate Solutions/Code"
            OUTPUT="${OUTPUT}/${DIR_STRING}"
            cd "${DIR_STRING}"
            break
            ;;
        "D")
            DIR_STRING="${PREFIX_D}/cs"
            cd "${DIR_STRING}"
            OUTPUT="${OUTPUT}/${DIR_STRING}"
            break
            ;;
        "Quit")
            exit
            ;;
    esac
done

options=( $(ls -1) )
PS3="$prompt "
select opt in "${options[@]}" "Quit" ; do
    if (( REPLY == 1 + ${#options[@]} )) ; then
        exit

    elif (( REPLY > 0 && REPLY <= ${#options[@]} )) ; then
        OUTPUT="${OUTPUT}/$opt"
        if [ "$1" == ui ] ; then
            echo "cd \"${OUTPUT}\" && cd ui && nvm use && yarn start"
        else
            echo "cd \"${OUTPUT}\""
        fi
        exit
    fi
done