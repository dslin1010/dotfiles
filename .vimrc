set nocompatible              " be iMproved, required
filetype off                  " required

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
