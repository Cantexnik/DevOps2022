#!/bin/bash


if [ $# -eq 3 ]
then

backup_source=$1
backup_destination=$2
backup_limit=$3

    if [ -d $backup_destination ]; then
        echo "Directory $backup_destination already exists"
            else
            mkdir $backup_destination
            echo "Destination directory created"
    fi

    echo "Source: $backup_source"
    echo "Destination: $backup_destination"
    echo "Backup limit: $backup_limit"

    bkpName=$backup_destination/"backup_"`date +%Y%m%d_%H%M%S_%3N`".tar"

   
    echo 

    if tar cvf ${bkpName} ${backup_source}
    then
        bkpCount=`ls $backup_destination | wc -l`

        if [ ${bkpCount} -gt $backup_limit ]
        then
            oldBkp=`ls -1 $backup_destination | head -1`
            file4remove=$backup_destination$oldBkp
            rm ${file4remove}
            echo
            echo "Backup $file4remove remove"
            echo
        fi
        echo "Backup successfully created"

        exit 0

    else

        exit 255

    fi

else
    echo "ERROR: Not enough parameters!"
    echo "Enter Source, Destination and number of backups in folder"
    exit 255
fi