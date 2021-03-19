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

" indent a new line the same amount as the line just typed
set autoindent

" On pressing tab, insert 4 spaces
" set expandtab

" set the theme
colorscheme slate

" make backspace work
set backspace=2

" stop the bell
set belloff=all

" allows auto-indenting depending on file type
filetype plugin indent on

" Searching
set incsearch								" search as character are entered
set hlsearch								" higlight matches
nnoremap <leader><space> :nohlsearch<CR>	" \ and space will delete search higligts

" UI Config
set showcmd									" show last command in bottom bar
set showmatch								" higlight matching [{()}]
set wildmenu								" visual autocomplete for command menu

" no swap file
set noswapfile

" control tabs
" use shift key and arrow to go forward an backwards
noremap <S-Right>  	:tabnext<cr>
noremap <S-Left> 	:tabprevious<cr>
noremap <F3>		:tabclose<cr>

" Explore settings
noremap <F2> 		:Explore<CR>
let g:netrw_liststyle = 3					" Set nerdtree view on style 3
let g:netrw_banner = 0						" turn off banner in nerdtree
let g:netrw_browse_split = 3				" open file in tabview
let g:netrw_winsize = 20					" open explorer in 20% width
