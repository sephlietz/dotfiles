#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")" || exit;

git pull origin master;

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "brew.sh" \
      --exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
