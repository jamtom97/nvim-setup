set nocompatible              " be iMproved, required
filetype off                  " required
''automates installing vim.plug into autoload... 
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
let g:airline_theme='afterglow'
" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim.plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plug 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"""MY PLUGINS"""
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-python/python-syntax'                                                                                                                   
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'morhetz/gruvbox'
Plug 'overcache/NeoSolarized'      
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'danilo-augusto/vim-afterglow' 
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:deoplete#enable_at_startup = 1
let g:python_highlight_all = 1
syntax enable "enable syntax processing
syntax on

:command NE NERDTree

set tabstop=4 "sets visual spaces=4

set background=dark
"let g:gruvbox_contrast_dark = 'hard'
"autocmd vimenter * ++nested colorscheme gruvbox
"colorschemei medic_chalk
"colorscheme embark
colorscheme afterglow 
"colorscheme NeoSolarized "sets our colorscheme

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set expandtab "tabs become a shortcut for 4 spaces

set softtabstop=4 "number of spaces in tab when editing

set number "show line numbers

set showcmd "show command in bottom bar

set cursorline "highlight current line

filetype indent on "load filetype-specific indent files

set wildmenu "visual autocomplete for command menu

set lazyredraw "redraw only wqhen you need to

set showmatch "highlight matching [{()}]

set incsearch "search as characters are entered

set hlsearch "highlight matches


nnoremap <ESC><ESC> :nohlsearch<RETURN>
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_
let g:python3_host_prog = '/usr/local/bin/python3'
