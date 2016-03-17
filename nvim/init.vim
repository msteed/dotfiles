set laststatus=2
set tabstop=8 softtabstop=4 shiftwidth=4 expandtab shiftround
set nowrap
set nowrapscan incsearch hlsearch
set ignorecase smartcase
set autoindent
set splitbelow splitright
set noequalalways
set nostartofline
set modeline
set wildignorecase
set scrolloff=1
set showcmd
set tags=./tags;
set grepprg=~/bin/getrefs
set grepformat=%f:%l:%c:%m
set complete=.,w,b,u,t,i
set foldmethod=indent
set nofoldenable
set fillchars=vert:\ ,fold:.,diff:.
set directory=~/vim-tmp//,/tmp//
set nojoinspaces
set background=dark
"set titlestring=%t\ -\ vim
set ruler
set number
set cursorline
set notitle
set ttimeoutlen=100

if &term == "linux"
    set fillchars=vert:\ ,fold:-,diff:-
endif

" Ctrl-S = save and Ctrl-Q = close
" These two require 'stty -ixon' in the shell for non-gui vim
nmap <C-q> :q<CR>
nmap <C-s> :w<CR>

" Alt-+ and Alt-- = resize windows
nmap <M-=> <C-w>+
nmap <M--> <C-w>-

" Alt-F = grep for the current word or visual selection
" Ctrl-N and Ctrl-P = next and previous matches
nmap <M-f> :silent lgrep "\b<cword>\b" \| lwindow \| setlocal nocursorline<CR><CR><C-l>
vmap <M-f> "vy:silent lgrep "v" \| lwindow<CR><C-l>
nmap <C-n> :lnext<CR>
nmap <C-p> :lprevious<CR>

syntax enable

if &t_Co < 88
    let g:CSApprox_loaded = 1
    colorscheme default
else
    let g:hybrid_use_Xresources=1
    colorscheme hybrid
    highlight MatchParen ctermfg=NONE ctermbg=NONE cterm=BOLD
    highlight Folded cterm=NONE
    highlight Error cterm=NONE
    "highlight LineNr ctermbg=235 ctermfg=240
    "highlight CursorLineNr ctermbg=235 ctermfg=2 cterm=NONE
    highlight CursorLineNr ctermfg=3 cterm=NONE
    highlight Special ctermfg=9
    highlight cFormat ctermfg=11
endif

filetype plugin on
filetype indent on
