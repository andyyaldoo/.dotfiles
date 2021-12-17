" -------------------General Settings------------------ "
set nocp
" syntax enable

" Make backspace behave like every other editor.
set backspace=indent,eol,start 

" Leader was '\', but ',' is more convenient.
let mapleader = ","

" Line numbers
set number
filetype plugin on

" -------------------Visuals------------------ "

colorscheme brogrammer

set linespace=15
" set listchars=eol:¬,tab:▸\,trail:.,extends:>,precedes:<
" set listchars=eol:¬,tab:▸
" set listchars=tab:▸\ ,eol:$
set listchars=tab:▸\ 

set list
" -------------------Split Management------------------ "
set splitbelow                                                                                      " Make splits default to below...
set splitright                                                                                      " and to the righp
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
" ☠ 
nmap <C-H> <C-W><C-H>

" -------------------Search------------------ "
set hls " hlsearch
set is  " incsearch
nmap <Leader><space> :nohlsearch<CR>

" -------------------Mapping------------------ "
nmap ; :
map <Leader>ev :tabedit ~/.vimrc<CR>

" -------------------Plugins------------------ "
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
" Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
" Plug 'bling/vim-airline'
Plug 'takac/vim-hardtime'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'rstacruz/sparkup'
Plug 'editorconfig/editorconfig-vim'
" Plug 'ryanoasis/vim-devicons'
Plug 'prettier/vim-prettier'
" Plug 'tpope/vim-fugitive'
" Plug 'plasticboy/vim-markdown'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" -------------------Tabs------------------ "
set tabstop=2   " The width of a TAB is set to 2.
		            " Still it is a \t. It is just that
		            " Vim will interpret it to be having
		            " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

"------------Plugins--------------"

"/
"/ vim-hardtime
"/
let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["h", "j", "k", "l", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
" map <c-R> :CtrlPBufTag<CR>
" map <c-P> :CtrlPMRUFiles<CR>

"/
"/ NERDCommenter
"/
let NERDSpaceDelims=1

"/
"/ vim-go
"/
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_functions = 1

"/
"/ fzf
"/
noremap <silent> <leader>f :FZF<cr>
noremap <silent> <leader>F :FZF ~<cr>

"/
"/ vim-gitgutter
"/
set updatetime=100
" let g:gitgutter_highlight_lines = 1

" -------------------AutoCommand------------------ "
" Automatically source upon save
augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc so %
augroup end

" Notes and tips 

"/
"/ vim-surround
"/
" - press 'yss' to operate on the current line
"
"
"
" NOTES
" - :g/pattern/command/g(lobal)c(onfirmation)
" - U will undo the whole line
" - Use 'operator [number] motion' technique more often`
" - :w FILENAME = "save as" 
" - :r FILENAME = "read filename"
" - :cd mydirectory = "change directory (vim wide)
" - :.,<line-number><comand> = execute <command> from current line to
"   <line-number>
" - There are only one file form vim which is .vimrc and one folder which is
"   .vim
"   There are three types of options
"   - bool
"   - string
"   - number
"
"   To set a boolean value
"   :set boolopt
"
"   To unset a boolean value
"   :se noboolopt
"
"   To toggle
"   :se boolopt!
"
" <nummber> G moves to that line number
"
" Ctrl+O go back to previous cursor
"
" Copying from one file to another in vim
  " Can't simply use y on first file and then p on the other file
  " Other way is to do :w FILENAMME on first file and then :r FILENAME on the
  " other file
"
" :r can also be used to pipe output of command
" e.g. :r !ls
"      :r !pwd
"
"   To check the current value
"   :se boolopt?
"   :verb se boolopt? -- to also show which line it was last defined
"
"   To set to default value
"   :se boolopt&
"
"   vim -u NONE -U NONE -N ~/.vimrc -- useful for debuggin
"
" K on a text will go to the docs depending on the location of your cursor

" map jj to <Esc> in insert mode and then map caps lock to control
:imap jj <Esc>

" Because I don't like the red color when searching
hi Search cterm=bold ctermfg=15 ctermbg=59
hi IncSearch cterm=bold ctermfg=15 ctermbg=59

