#!/bin/bash

git submodule sync

if [ "$1" == "pull" ]; then
	git submodule update --init --recursive --remote -j 8
else 
	git submodule update --init

fi
