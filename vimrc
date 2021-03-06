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
Bundle 'tobyS/pdv'
Bundle 'tobyS/vmustache'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'arnaud-lb/vim-php-namespace'


" Color Themes
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
colorscheme Monokai
colorscheme twilight256

"colorscheme solarized
"let g:solarized_termcolors=256
"set background=dark
"set t_Co=16
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

" Do not history when leavy buffer
set hidden

set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

set completeopt=menuone,longest,preview

" Set comma is the leader
let mapleader = ','

" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Make Alt key working

let c='a'
while c <= 'z'
exec "set <A-".c.">=\e".c
exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

"
" Plugins config
"

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/* 

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
map <M-t> :TlistToggle<CR>

" Lusty
map <C-l> :LustyBufferGrep<CR>
map <M-l> :LustyBufferExplorer<CR>

" Pdv
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
"nnoremap <C-p> :call pdv#DocumentCurrentLine()<CR>
nnoremap <C-c> :call pdv#DocumentWithSnip()<CR>

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<M-n>"
let g:UltiSnipsJumpBackwardTrigger="<M-p>"

" Vim-php-namespace
function! IPhpInsertUse()
  call PhpInsertUse()
  call feedkeys('a',  'n')
endfunction

autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
  call PhpExpandClass()
  call feedkeys('a', 'n')
endfunction

autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

