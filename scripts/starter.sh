#!/bin/bash

FILE=$1
TARGET=$2
VOGSPHERE=$3
GITHUB=$4

(
    echo "#!/bin/bash";
    echo "git clone $VOGSPHERE $PWD/vogsphere";
    echo "git clone $GITHUB $PWD/github";
) > $TARGET/$FILE
