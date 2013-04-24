#!/bin/sh

VENDOR=fujitsu
DEVICE=f11d

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Copying device files from $1 ..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp $1/$FILE $BASE/$FILE
done

./setup-makefiles.sh
