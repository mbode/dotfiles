#!/usr/bin/env sh

echo "Dumping homebrew..."
brew bundle dump --force

echo "Dumping pip..."
pip freeze > requirements.txt
