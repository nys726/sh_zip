#!/bin/sh

REMOVE_DATE=+2

HOME=/home/user
ANSWER_DIR=$HOME/.answer
S3_DIR=$ANSWER_DIR/s3.data
for bucket in `ls -d $S3_DIR/*`;
do
    BUCKET_DIR=$bucket
    IMAGE_DIR=$BUCKET_DIR/image
    LOG_DIR=$BUCKET_DIR/log

    find $IMAGE_DIR/* -mtime $REMOVE_DATE -exec rm -rf {} \;
    find $LOG_DIR/* -mtime $REMOVE_DATE -exec rm -rf {} \;
done

#find $IMAGE_DIR/* -mtime $REMOVE_DATE -exec ls {} \;

#find $LOG_DIR/* -mtime $REMOVE_DATE -exec ls {} \;
