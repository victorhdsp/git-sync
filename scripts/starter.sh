#!/bin/bash

FILE=$1
VOGSPHERE=$2
GITHUB=$3

(
    echo "#!/bin/bash";
    echo "git clone $VOGSPHERE $PWD/vogsphere";
    echo "git clone $GITHUB $PWD/github";
) > $TARGET/$FILE
