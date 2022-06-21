#!/bin/bash

fish_install () {
  if [ ! -f /usr/bin/fish ]
  then
    sudo apt-add-repository ppa:fish-shell/release-3
    sudo apt-get update
    sudo apt-get update
  fi
  cp ./fish ~/.config/fish/
  fisher install ilancosman/tide@v5 || curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher && fisher install ilancosman/tide@v5
  fisher install jethrokuan/z
  (brew install exa\
    || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"\
    && test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"\
    && test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"\
    && test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.bash_profile\
    && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.profile\
  )
  brew install exa
  brew install ghq
  brew install peco
}

nvim_install () {
  cp ./nvim ~/.config/
}

tmux_install () {
  cp './tmux/*' ~
}

if [ "$1" = "fish" ]
then
  fish_install()
elif [ $1 = "nvim" ]
then
  nvim_install()
  echo "c"
elif [ $1 = "tmux" ]
then
  tmux_install()
else
  fish_install()
  nvim_install()
  tmux_install()
fi
