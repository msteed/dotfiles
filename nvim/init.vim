set tabstop=8 softtabstop=4 shiftwidth=4 expandtab shiftround
set nowrap
set nowrapscan
set ignorecase smartcase
set splitbelow splitright
set noequalalways
set nostartofline
set modeline
set wildignorecase
set wildignore+=*.egg-info/*
set scrolloff=1
set inccommand=split
set grepprg=~/bin/getrefs
set grepformat=%f:%l:%c:%m
set complete=.,w,b,u,t,i
set foldmethod=indent
set nofoldenable
set fillchars=vert:\ ,fold:.,diff:.
set nojoinspaces
set number
set undofile
set cursorline
set guicursor=
set title
set ttimeoutlen=10

" Ctrl-S = save and Ctrl-Q = close
" These two may require 'stty -ixon' in the shell for non-gui vim
nmap <C-q> :q<CR>
nmap <C-s> :w<CR>

" Ctrl-J and Ctrl-K = resize windows
nmap <C-j> <C-w>+
nmap <C-k> <C-w>-

" prefix-F = grep for the current word or visual selection
" Ctrl-N and Ctrl-P = next and previous matches
nmap `f :silent lgrep "\b<cword>\b" \| lwindow \| setlocal nocursorline<CR><CR><C-l>
vmap `f "vy:silent lgrep "v" \| lwindow<CR><C-l>
nmap <C-n> :lnext<CR>
nmap <C-p> :lprevious<CR>

set background=dark
colorscheme solarized
