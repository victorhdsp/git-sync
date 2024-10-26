#!/bin/bash

FILE=$1
TARGET=$2
IGNORE=.cloneignore

(
    echo "#!/bin/bash";
    echo "CLONEIGNORE=\`cat $TARGET/github/$IGNORE\`";
    echo '(';
    echo "echo 'rsync -avu --delete \\'";
    echo -e "echo '\t$TARGET/github/* $TARGET/vogsphere \\'"
    echo 'for IGNORE in $CLONEIGNORE; do';
    echo -e '\techo "\t--exclude='\$IGNORE' \\\\"';
    echo 'done';
    echo -e 'echo "\t--exclude=.git \\\\"'
    echo -e "echo \"\t--exclude=$IGNORE\""
    echo ") > $TARGET/tmp.sh";

    echo "echo 'bash    $TARGET/tmp.sh'"
    echo "echo 'rm      $TARGET/tmp.sh'"
) > $TARGET/$FILE
