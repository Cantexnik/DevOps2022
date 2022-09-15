#!/bin/bash


if [ $# -eq 3 ]
then

Src4bkp=$1
Dst4bkp=$2
bkpLimit=$3

    if [ -d $Dst4bkp ]; then
        echo "Directory $Dst4bkp already exists"
        else
        mkdir $Dst4bkp
        echo "Destination directory created"
    fi

    echo "Source: "$Src4bkp
    echo "Destination: "$Dst4bkp
    echo "Backup limit: "$bkpLimit

    bkpName=$Dst4bkp/"backup_"`date +%Y%m%d_%H%M%S_%3N`".tar"

   
    echo 

    if tar cvf ${bkpName} ${Src4bkp}
    then
        bkpCount=`ls $Dst4bkp | wc -l`

        if [ ${bkpCount} -gt $bkpLimit ]
        then
            oldBkp=`ls -1 $Dst4bkp | head -1`
            file4remove=$Dst4bkp$oldBkp
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