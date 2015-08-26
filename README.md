# freistil IT dotfiles

Our collection of configuration files for zsh, tmux and many other command line tools.


## Installation

We use [rcm](https://github.com/thoughtbot/rcm "thoughtbot/rcm · GitHub") for the setup and management of dotfiles. For the initial installation, use these commands:

    cd ~
    git clone <repository> .dotfiles
    RCRC="$HOME/.dotfiles/rcrc" rcup -v

For updating your setup, execute:

    cd ~/.dotfiles
    git pull
    rcup -v


## Customisation

You can customise your settings by adding your own dotfiles. See "Multiple dotfile directories" in the [rcm man page](http://thoughtbot.github.io/rcm/rcm.7.html).

