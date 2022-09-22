#!/bin/bash

# ===========================Task===========================
# Сгенерировать в папке n файлов и внести в четный > even, нечетный > odd
# ==========================================================

saveFolder="/tmp/files/"
deep=15
#создание файлов
for (( i=1; i <= $deep; i++ ))
    do
    touch "${saveFolder}file$i"
    done
echo "Files created:"
#ls -l $saveFolder

#запись в файлы
for (( i=1; i <= $deep; i++ ))
    do
    if [ $((i%2)) -eq 0 ]
        then
        echo "even" >> "${saveFolder}file$i"
        else        
        echo "odd" >> "${saveFolder}file$i"
    fi
    echo "file$i"
    
    cat ${saveFolder}file$i
    
    echo
done