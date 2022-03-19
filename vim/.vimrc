so ~/.vim/plugins.vim

"---------------------------------
"  Airline Settings
"---------------------------------

colorscheme molokai
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'jsformatter'

"---------------------------------
"  Key Mappings
"---------------------------------

" The default leader is \, but a comma is much better.
let mapleader = ','

" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" Insert mode non-recursive mapping.
inoremap kj <Esc>
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

" No operation / disabled arrow keys.
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
"map <c-space> ?


"---------------------------------
"  Split Management
"---------------------------------
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"---------------------------------
"  Settings
"---------------------------------

"set foldmethod=marker               "auto folding: using 3 open/closing curly brackets
syntax enable
set backspace=indent,eol,start      "Make backspace behave like every other editor.
set tabstop=2                       "Tab width when on normal mode
set expandtab
set softtabstop=2                   "Tab width when on insert mode
set shiftwidth=2                    "Indentation size using shift + >
set so=7                            "Set 7 lines to to the cursor - when moving vertically using j/k
set autoindent                      "Auto indent
set smartindent                     "Smart indent
set wrap                            "Wrap lines
set wildmenu                        "Visual autocomplete for command menu

"---------------------------------
"  Visuals
"---------------------------------

" colorscheme murphy " good colorschemes: murphy, slate, molokai, badwolf, solarized
set t_CO=256                        "Use 256 colors. This is useful for Terminal Vim.
set guifont=Fira_Code:h17
"set number                          "Let's activate line numbers.
set relativenumber
set ruler
set linespace=15                    "Macvim-specific line-height.

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set cursorline                   "highlight current line
"set background=dark              "configure Vim to use brighter colors

"---------------------------------
"  Search
"---------------------------------

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch


"---------------------------------
"  Auto-Commands
"---------------------------------

"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


"---------------------------------
"  Save Text Folding
"---------------------------------
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
