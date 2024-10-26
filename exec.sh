#!/bin/bash

PROJECT=$2
VOGSPHERE=$3
GITHUB=$4
TARGET=`pwd`
ROOT=${0%/*}

case $1 in
    start)
        if  ["$PROJECT" == ""]; then
            echo "Qual nome do projeto ?";
            read PROJECT
        fi;

        if  ["$VOGSPHERE" == ""]; then
            echo "Qual o clone da vogsphere ?";
            read VOGSPHERE
        fi;

        if  ["$GITHUB" == ""]; then
            echo "Qual o clone do github ?";
            read GITHUB
        fi;
        bash $ROOT/code_maker.sh $PROJECT $VOGSPHERE $GITHUB
    ;;
esac;