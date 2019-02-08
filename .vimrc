set nocompatible              " be iMproved, required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'ascenator/L9', {'name': 'newL9'}
" " Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'The-NERD-Commenter'
"Plugin 'jellybeans.vim'
"Plugin 'vividchalk.vim'
"Plugin 'Syntastic'
"Plugin 'altercation/vim-colors-solarized' 
"Plugin 'hybrid.vim'
"Plugin 'taglist.vim'
"Plugin 'scrooloose/nerdtree' 
"Plugin 'mattn/emmet-vim'
"Plugin 'https://github.com/Lokaltog/vim-powerline'
"Plugin 'Yggdroot/indentLine'
"Plugin 'https://github.com/nathanaelkane/vim-indent-guides.git'
"Plugin 'chase/vim-ansible-yaml'  
"Plugin 'lepture/vim-jinja'
"Plugin 'hynek/vim-python-pep8-indent'

"Plugin 'derekwyatt/vim-scala'
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
"call vundle#end()            " required

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

filetype plugin on

" For indent-guides
let g:indent_guides_auto_colors=0
hi IndentGuidesEven ctermbg=238
hi IndentGuidesOdd ctermbg=236

" For Powerline
set nocompatible
set laststatus=2
set statusline+='%F'
set encoding=utf-8
let g:Powerline_stl_path_style='full'

"colorscheme 

" For ctags
let Tlist_Ctags_Cmd='/usr/local/bin/ctags/'
highlight LineNr ctermfg=grey
set tags=tags;
set autochdir

let g:hybrid_use_iTerm_colors = 1
" colorscheme hybrid

set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

syntax on
set nu

set ruler  " Show ruler

filetype indent on 
set wildmenu 
set showmatch 

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" space open/closes folds
nnoremap <space> za
vnoremap <space> zf

if has('mouse')
  set mouse=a
endif

set softtabstop=2
set shiftwidth=2 " Set the default shift width for indents
set expandtab   " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels
set cc=80
