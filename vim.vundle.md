##############################################################
##    HOW TO SET UP VIM FOR A BEST LOOKING
##############################################################

Installation

- Install Vundle

- git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

- Install vim-sublime .vimrc

- curl https://raw.githubusercontent.com/grigio/vim-sublime/master/vimrc > $HOME/.vimrc

- Then open vim and run

- :BundleInstall

- (Don't worry about the 'Monokai' error), quit and enter in vim again to apply the changes

- You can also add machine specific config to ~/.local.vim

- For best results make sure your $TERM env variable is 256 colours; export TERM=xterm-256color

- Note: to have the correct font in the bottom bar you need a Powerline font installed and selected in the terminal.

- Color scheme: monokai

- Plugin for color schemes: flazz/vim-colorschemes

- If use taglist plugin -> need to install ctags on Archlinux

- If use ack plugin -> need to install ack on Archlinux

- If use ultisnips plugin -> need to add filetype=off in .vimrc file
  To use snippets with file type -> need to set file type ->Ex  :set ft=php.laravel

- Install sublime material hybrid theme for vim if you want.


