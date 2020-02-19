" Put this file in your home folder
" Windows \home\UserName\_vimrc
" Linux ~/.vimrc

" Turn on syntax highlighting.
syntax on
        
" Automatically wrap text that extends beyond the screen length.
set wrap

" Status bar
set laststatus=2

" Show line numbers
set relativenumber

" Set status line display
set statusline=[FILE=%t]\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime('%c')}

" show existing tab with 4 spaces width
set tabstop=4
        
" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
" set expandtab

" set the theme
colorscheme desert

" make backspace work
set backspace=2

" stop the anoying windows bell
set belloff=all
