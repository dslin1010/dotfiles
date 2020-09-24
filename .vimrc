set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""''Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'crusoexia/vim-monokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required

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
" Put your non-Plugin stuff after this line""""""""""""""''''}''""'"''''}''""''"''"''""''"""''"''"""""


set tags=./tags,./TAGS,tags;~,TAGS;~

""set nu
set cursorline
set tabstop=4
set shiftwidth=4
set hlsearch
" set clipboard=unnamedplus
"show the file path
set laststatus=2
set statusline+=%F
set splitright

" Color configuration
""set bg=dark
""color evening  " Same as :colorscheme evening
""hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap [ []<Esc>i
:inoremap ( ()<Esc>i
:inoremap {{ {}<Esc>i
:inoremap {<CR> {<CR>}<Esc>ko

set pastetoggle=<F2>

:imap fd <Esc>
:map oo <C-]>
:map ww <C-t>

nmap <CR> o<Esc>

syntax on
""set foldmarker={{{,}}}
""set foldmethod=marker
set foldmethod=indent
set foldlevel=2
set nofoldenable
set foldnestmax=10 

set cscopetag
set csto=0

if filereadable("cscope.out")
	   cs add cscope.out   
  elseif $CSCOPE_DB != ""
       cs add $CSCOPE_DB
  endif
	   set cscopeverbose
	   
""nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
""nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
""nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
""nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
""nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
""nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
""nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
""nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>


