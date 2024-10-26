#!/bin/bash

PROJECT=$1
VOGSPHERE=$2
GITHUB=$3
TARGET=`pwd`
ROOT=${0%/*}

STARTER=starter.sh
CLEAR_DIR=clear_dir.sh
CLONE_DIR=clone_dir.sh
COMMIT=commit.sh

mkdir   $TARGET/$PROJECT;
cd      $TARGET/$PROJECT;
bash    $ROOT/scripts/$STARTER $STARTER $VOGSPHERE $GITHUB
bash    $TARGET/$STARTER
bash    $ROOT/scripts/$CLEAR_DIR $CLEAR_DIR $TARGET/$PROJECT
bash    $ROOT/scripts/$CLONE_DIR $CLONE_DIR $TARGET/$PROJECT
bash    $ROOT/scripts/$COMMIT $COMMIT $TARGET/$PROJECT

bash    $ROOT/commands/pre-commit.sh pre-commit.sh $TARGET/$PROJECT
chmod 777 $ROOT/commands/pre-commit.sh