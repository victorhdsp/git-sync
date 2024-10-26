#!/bin/bash

FILE=$1
TARGET=$2

(
    echo "#!/bin/bash";
    echo "FILES=\`ls $TARGET/vogsphere\`";
    echo 'for FILE in $FILES; do';
    echo -e "\trm -rf $TARGET/vogsphere/\$FILE;";
    echo 'done';
) > $TARGET/$FILE
chmod 777 $TARGET/$FILE
