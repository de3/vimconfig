#!/usr/bin/env bash

PWD=${PWD}
HOME=${HOME}
VIMRC=.vimrc
BUNDLES=$PWD"/common_config/bundles.vim"
COLORS=$PWD"/colors"
VIMDIR=$HOME"/.vim"

# create folder
if [ ! -d $VIMDIR"/common_config" ]; then
  mkdir -p $VIMDIR"/common_config"
fi
if [ ! -d $VIMDIR"/colors" ]; then
  mkdir -p $VIMDIR"/colors"
fi

# copy config files
cp $BUNDLES $VIMDIR"/common_config/"
cp -r $COLORS"/" $VIMDIR"/colors/"
