#!/usr/bin/env sh

echo "Dumping homebrew..."
brew bundle dump --force

echo "Dumping pip2..."
pip2 freeze > requirements2.txt

echo "Dumping pip3..."
pip3 freeze > requirements3.txt
