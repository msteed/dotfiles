set tabstop=8 softtabstop=4 shiftwidth=4 expandtab shiftround
set nowrap
set nowrapscan
set ignorecase smartcase
set splitbelow splitright
set noequalalways
set nostartofline
set modeline
set wildignorecase
set scrolloff=1
set inccommand=split
set grepprg=~/bin/getrefs
set grepformat=%f:%l:%c:%m
set complete=.,w,b,u,t,i
set foldmethod=indent
set nofoldenable
set fillchars=vert:\ ,fold:.,diff:.
set nojoinspaces
set background=dark
set number
set cursorline
set notitle
set ttimeoutlen=100

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
