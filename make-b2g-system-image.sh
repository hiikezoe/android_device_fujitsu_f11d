#!/bin/sh

PRODUCT_OUT=../../../out/target/product/f11d
B2G_SYSTEM_BASE=$PRODUCT_OUT/b2g-system

rm -rf $B2G_SYSTEM_BASE
mkdir -p $B2G_SYSTEM_BASE

echo "Copying b2g system image files ..."
for FILE in `cat b2g-files.txt | grep -v ^# | grep -v ^$`; do
    DEST_DIR=$B2G_SYSTEM_BASE/`dirname $FILE`
    if [ ! -d $DEST_DIR ]; then
        mkdir -p $DEST_DIR
    fi
    cp -ra $PRODUCT_OUT/system/$FILE $DEST_DIR
done

rm -f $PRODUCT_OUT/b2g-system.img
make_ext4fs -l 56M $PRODUCT_OUT/b2g-system.img $B2G_SYSTEM_BASE
