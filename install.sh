#!/bin/bash

git clone git@github.com:victorhdsp/git-sync.git ~/git-sync
cd ~/git-sync
chmod 777 ~/git-sync/exec.sh
echo "alias git-sync=~/git-sync/exec.sh" >> ~/.zshrc"