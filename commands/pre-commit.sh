#!/bin/bash

FILE=$1
TARGET=$2

(
    echo "#!/bin/bash";
    echo "bash $TARGET/clear_dir.sh";
    echo "bash $TARGET/clone_dir.sh";
    echo "bash $TARGET/commit.sh";
) > $TARGET/github/.git/hooks/$FILE