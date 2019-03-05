#!/bin/bash

TEMPLATE_NAME="template-node-koa"
SRC_ZIP="https://github.com/trawor/${TEMPLATE_NAME}/archive/master.zip"
TMP_PATH="/tmp/template-download"

# Project Prepare
read -rp "Project Name(lowercase-without-space): " PRJ
if [ -n "$PRJ" ]; then
  PRJ_NAME=$(echo "$PRJ" | tr "[:upper:]" "[:lower:]")
else
  PRJ_NAME="test-template-node-koa"
fi

PRJ_PATH="$PWD/$PRJ_NAME"




echo "> Create $PRJ to $PRJ_PATH"
# Check
if [ -n "$(ls -A $PRJ_PATH)" ]; then
  read -rp "$PRJ_PATH is NOT Empty, continue?(y/N)" yn
  case $yn in
    [Yy]* ) rm -rf "$PRJ_PATH";;
    * ) exit;;
  esac
fi

# Download
mkdir -p "$TMP_PATH"
curl -SL "$SRC_ZIP" -o "$TMP_PATH/template.zip"

unzip "$TMP_PATH/template.zip" -d "$TMP_PATH"
mv -v "${TMP_PATH}/${TEMPLATE_NAME}-master" "$PRJ_PATH"

# Init
ls -lA "$PRJ_PATH"
sed -i -e "s/.*\"name\":.*/  \"name\": \"$PRJ_NAME\",/" "$PRJ_PATH/package.json"

# Clean
rm -rf "$TMP_PATH"