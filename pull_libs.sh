#!/bin/bash

LIB_IN_SUBMODULE_URL="<url>"

SUBMODULE_NAME="<submodule_name>"

if [ ! -d $SUBMODULE_NAME ]; then
  git clone "$LIB_IN_SUBMODULE_URL" $SUBMODULE_NAME
fi

submodule_revision=`cat <file_name>`

cd SUBMODULE_NAME

git fetch -q

git reset --hard "$submodule_revision"
