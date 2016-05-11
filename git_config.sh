#!/bin/bash
if [ "$#" -ne 1 ]; then
  flag='local'
else
  flag='global'
fi

git config --$flag user.name larry-chun
git config --$flag user.email "larry.chun@kakaocorp.com"
git config --$flag color.branch auto
git config --$flag color.diff auto
git config --$flag color.interactive auto
git config --$flag color.status auto
git config --$flag push.default matching

git config --$flag alias.l "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold red)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)<%an>%C(reset)%C(bold yellow)%d%C(reset)' --all"
git config --$flag alias.ci 'commit --author "larry-chun <larry.chun@kakaocorp.com>"'
git config --$flag alias.st status
