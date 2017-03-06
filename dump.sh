#!/usr/bin/env sh

echo "Dumping homebrew..."
brew bundle dump --force

echo "Dumping pip..."
pip freeze > requirements.txt

echo "Dumping pip3..."
pip3 freeze > requirements3.txt
