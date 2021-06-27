#!/bin/bash


# check to see is git command line installed in this machine
IS_GIT_AVAILABLE="$(git --version)"
if [[ $IS_GIT_AVAILABLE == *"version"* ]]; then
  echo "Git is Available"
else
  echo "Git is not installed"
  exit 1
fi


# copy list of vs-code extensions that currently installed
code --list-extensions --show-versions > ./vscode-extensions.txt

# copy other dot files 
cp  $HOME/{.bashrc,.bash_aliases,.bash_functions,.gitconfig,.profile,.bash_logout} .


# Check git status
gs="$(git status | grep -i "modified")"
# echo "${gs}"

# If there is a new change
if [[ $gs == *"modified"* ]]; then
  echo "push"
fi


# push to Github
git add .;
git commit -m "New backup `date +'%Y-%m-%d'`";
git push origin main

echo ""
echo "====================================="
echo "Config files backed up SUCCESSFULLY!!"
echo "====================================="
