#!/bin/bash

FILE=$1
TARGET=$2

(
    echo "#!/bin/bash";
    echo "cd $TARGET/vogsphere/.";
    echo "git add $TARGET/vogsphere/.";
    echo "git commit $TARGET/vogsphere -m \"update\"";
    echo "("
    echo "    echo 'git add .'"
    echo "    echo 'git commit -m \"other update\"'"
    echo "    echo 'git push'"
    echo ") > $TARGET/tmp.sh"

    echo "echo 'bash    $TARGET/tmp.sh'"
    echo "echo 'rm      $TARGET/tmp.sh'"
) > $TARGET/$FILE

