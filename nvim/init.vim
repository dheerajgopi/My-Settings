" Load plugins managed by pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set expandtab           " tabs are spaces
set tabstop=4           " set tabstop

set number              " line number
set cursorline

filetype indent on      " filetype specific indentation
filetype plugin on      " filetype specific plugins
set smartindent

set shiftwidth=4
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching parantheses
set pastetoggle=<F7>   " toggle set paste

syntax enable           " enable syntax processing

set background=dark
colorscheme gruvbox

map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" Python-mode
" Keys :
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode = 1
let g:pymode_rope = 0

" Documentation
" let g:pymode_doc = 1
" let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checkers = ["pyflakes", "pep8"]
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Jedi-Vim
let g:jedi#auto_initialization = 1

" use tabs when going to a definition etc
let g:jedi#use_tabs_not_buffers = 1
