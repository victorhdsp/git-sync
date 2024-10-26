#!/bin/bash

rm -rf ~/git-sync
git clone git@github.com:victorhdsp/git-sync.git ~/git-sync
echo "alias git-sync=~/git-sync/exec.sh" >> "~/.zshrc"