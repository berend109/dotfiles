" Spaces & tabs
set tabstop=4								"Number of visual spaces per TAB
set softtabstop=4							"Number of spaces in tab when editing

" UI Config
set number									"show number lines
set showcmd									"show last command in bottom bar
set showmatch								"higlight matching [{()}]
set wildmenu								"visual autocomplete for command menu

" Searching
set incsearch								"search as character are entered
set hlsearch								"higlight matches
nnoremap <leader><space> :nohlsearch<CR>	"\ and space will delete search higligts
