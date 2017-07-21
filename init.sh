#!/bin/sh

# Install escentials
apt-get install -y zsh git tmux vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Move configs
cp .vimrc ~
cp .tmux.conf ~

# Setup new tmux session
tmux new -s $(hostname)
