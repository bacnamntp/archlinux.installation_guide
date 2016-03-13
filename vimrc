" My vimrc file

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'bling/vim-airline'
Bundle 'easymotion/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'

" Plugins for web developer
Bundle 'tpope/vim-surround'
Bundle 'rstacruz/sparkup'
Bundle 'scrooloose/nerdtree'
Bundle 'junegunn/vim-easy-align'
Bundle 'Chiel92/vim-autoformat'
Bundle 'vim-scripts/taglist.vim'
Bundle 'mileszs/ack.vim'
Bundle 'sjbach/lusty'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'


" Color Themes
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
"colorscheme Monokai

colorscheme solarized
let g:solarized_termcolors=256
set background=dark
set t_Co=256
""""""""
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use :help 'option' to see the documentation for the given option.
set autoindent
set backspace=indent,eol,start
set complete-=i
set showmatch
set showmode
set smarttab

set nrformats-=octal
set shiftround

set ttimeout
set ttimeoutlen=50

set incsearch

set laststatus=2
set ruler
set showcmd
set wildmenu

set autoread

set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set list

set number
set hlsearch
set ignorecase
set smartcase

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" do not history when leavy buffer
set hidden

set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

set completeopt=menuone,longest,preview

"
" Plugins config
"

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/* 

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:airline_theme='dark'

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" NerdTree
map <C-a> :NERDTreeToggle<CR>

" Taglist
map <C-l> :TlistToggle<CR>

" Lusty
map <C-x> :LustyBufferGrep<CR>
