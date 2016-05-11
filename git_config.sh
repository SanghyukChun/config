#!/bin/bash

git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto
git config --global push.default matching

git config --global alias.l "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold red)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)<%an>%C(reset)%C(bold yellow)%d%C(reset)' --all"
git config --global alias.st status
