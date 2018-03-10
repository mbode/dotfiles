#!/usr/bin/env sh

if [ "$(which zsh)" = "$SHELL" ]; then
    echo "zsh already installed"
else
    echo "zsh not installed"
    echo "Adding zsh to whitelisted system shells"
    sudo grep -q -F "$(which zsh)" /etc/shells || sudo -s echo "$(which zsh)" | sudo tee -a /etc/shells
    echo "Changing login shell to zsh"
    chsh -s "$(which zsh)"
fi;
