#!/usr/bin/env sh

if [ "$(command -v zsh)" = "$SHELL" ]; then
    echo "zsh already installed"
else
    echo "zsh not installed"
    echo "Adding zsh to whitelisted system shells"
    sudo grep -q -F "$(command -v zsh)" /etc/shells || sudo -s echo "$(command -v zsh)" | sudo tee -a /etc/shells
    echo "Changing login shell to zsh"
    chsh -s "$(command -v zsh)"
fi;
