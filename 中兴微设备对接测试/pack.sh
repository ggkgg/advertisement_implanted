#!/bin/bash

TARGET_NAME=$1
VERSION=$2
cp -rf hex/$TARGET_NAME ../app/
sync
cd ../app/
echo $VERSION > version.txt
rm -rf app.tar
tar -cvf app.tar ./*
