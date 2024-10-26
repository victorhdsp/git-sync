#!/bin/bash

PROJECT=$2
VOGSPHERE=$3
GITHUB=$4
TARGET=`pwd`
ROOT=$TARGET/${0%/*}

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

        chmod 777 $ROOT/code_maker.sh
        bash $ROOT/code_maker.sh $PROJECT $VOGSPHERE $GITHUB
    ;;
esac;