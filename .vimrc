


set hls ic
    
set cursorline
set cursorcolumn

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
call plug#end()

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set laststatus=2
filetype indent on

map <F7> gg=G<C-o><C-o>
map <F8> :%s/\s\+$//e<Enter>
":command Spaces %s/\s\+$//e"
highlight ColorColumn ctermbg=gray
set colorcolumn=80
set backspace=2
set mouse=a
set et|retab
set tabstop=4
set shiftwidth=4
syntax enable
colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage
