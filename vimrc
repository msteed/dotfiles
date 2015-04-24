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
set wildmenu
set wildignorecase
set scrolloff=1
set showcmd
set tags=./tags;
set grepprg=gid
set complete=.,w,b,u,t,i
set foldmethod=indent
set nofoldenable
set fillchars=vert:\ ,fold:.,diff:.
set directory=~/vim-tmp//,/tmp//
"set nojoinspaces
set background=dark
"set titlestring=%t\ -\ vim
set number
set cursorline
set notitle t_ts=
set mouse=a
"set ttymouse=xterm2
set ttimeoutlen=100

if &term == "linux"
    set fillchars=vert:\ ,fold:-,diff:-
endif

" Ctrl-S = save and Ctrl-Q = close
" These two require 'stty -ixon' in the shell for non-gui vim
nmap <C-q> :q<CR>
nmap <C-s> :w<CR>

" Alt-+ and Alt-- = resize windows
"nmap <M-=> <C-w>+
"nmap <M--> <C-w>-
nmap = <C-w>+
nmap - <C-w>-

" Alt-F = find the current word in the ID database
" Ctrl-N and Ctrl-P = next and previous matches
"nmap <M-f> :silent lgrep "<cword>" \| lwindow<CR><C-l>
nmap f :silent lgrep "<cword>" \| lwindow<CR><C-l>
nmap <C-n> :lnext<CR>
nmap <C-p> :lprevious<CR>

syntax enable

if &t_Co < 88
    let g:CSApprox_loaded = 1
    colorscheme default
else
    "let g:solarized_termcolors=256
    "let g:solarized_degrade=0
    "let g:solarized_bold=1
    "let g:solarized_underline=0
    "let g:solarized_italic=0
    "let g:solarized_contrast="normal"
    "let g:solarized_diffmode="normal"
    "let g:solarized_menu=0
    "let g:solarized_termtrans=1
    "colorscheme solarized
    "highlight ErrorMsg ctermbg=224
    "highlight MatchParen term=NONE ctermfg=224 ctermbg=NONE cterm=NONE
    "highlight cFormat ctermfg=166
    "highlight Folded term=NONE cterm=NONE

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
