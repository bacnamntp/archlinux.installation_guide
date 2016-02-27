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
