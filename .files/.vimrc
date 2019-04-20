" ******************************************************************************
" Plugin System
" ******************************************************************************
" Install Vim Plug if it's not currently installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Begin plugin system
call plug#begin('~/.vim/plugins')

" Ale
Plug 'w0rp/ale'

" Emmet vim
Plug 'mattn/emmet-vim'

" Color scheme: Ir black
Plug 'twerth/ir_black'

" HTML5 colors
Plug 'othree/html5.vim'

" Nerd commenter
Plug 'scrooloose/nerdcommenter'

" Nove Vim
Plug 'trevordmiller/nova-vim'

" Ultisnips
Plug 'sirver/ultisnips'

" Vim airline
Plug 'bling/vim-airline'

" Vim css
Plug 'hail2u/vim-css3-syntax'

" Vim easymotion
Plug 'easymotion/vim-easymotion'

" Vim javascript
Plug 'pangloss/vim-javascript'

" Vim react
Plug 'mxw/vim-jsx'

" Vim snippets
Plug 'honza/vim-snippets'

" Vim surround
Plug 'tpope/vim-surround'

" End plugin system
call plug#end()



" ******************************************************************************
" General
" ******************************************************************************
" Automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Make backspace behave well
set backspace=indent,eol,start

" Inbuilt Vim functions (but not included by default)
" To compare recovered file from swap file with the original.
" usage: Press 'R' for Recovery prompt appears, then type :DiffOrig to compare.
" Once you are done, save the buffer, and delete the swap file.
" command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" Show Unwanted Characters
set listchars=tab:»-,trail:×,extends:»,precedes:«,nbsp:-
set list

" Show both absolute and relative line number
set number relativenumber

" Show the line and column number of the cursor position
set ruler

" Show command in the last line of the screen.
set showcmd

" Show match (When a bracket is inserted, briefly jump to a matching one)
set showmatch



" ******************************************************************************
" Appearance
" ******************************************************************************
" Colorscheme
autocmd BufEnter * colorscheme nova
autocmd BufEnter *.py colorscheme ir_black

" Enable syntax highlighting
syntax on

" File type based settings
filetype plugin indent on



" ******************************************************************************
" Copy/Paste
" ******************************************************************************
" Copy to system clipboard
set clipboard=unnamed

" Paste toggle
set pastetoggle=<F1>



" ******************************************************************************
" Indenting
" ******************************************************************************
" Automatically set the indent of a new line (local to buffer)
set autoindent

" Enables automatic C program style indenting
set cindent

" Use the appropriate number of spaces when <Tab> is pressed in insert mode.
set expandtab

" Smart autoindenting when starting a new line
set smartindent

" Number of columns when tab is hit in insert mode
set softtabstop=2

" Number of columns text is indented with the reindent operations (<< and >>)
set shiftwidth=2

" Number of columns a tab count for
set tabstop=2

" Indention settings based on file type
" format golang upon save (Error happens)
" autocmd FileType go autocmd BufWritePre <buffer> Fmt

" For Go lang:
"   Don't expand tabs to spaces
"   Don't show list
"   Indent: 4
autocmd FileType go setlocal noexpandtab nolist shiftwidth=4 softtabstop=4 tabstop=4

" For Python, indent: 4
autocmd Filetype py setlocal softtabstop=4 shiftwidth=4 tabstop=4



" ******************************************************************************
" Mapping
" ******************************************************************************
" Change leader to space
let mapleader = " "


" Emmet trigger key CTRL-E
" By default, CTRL-E is used to scroll window [count] lines downwards in the
" buffer, which I don't use. So, mapping for emmet.
let g:user_emmet_leader_key='<C-E>'

" Movement: better handle up and down of word-wrapped lines
nmap j gj
nmap k gk

" Pluggins
nmap <leader>f <Plug>(ale_fix)

" Save, quit, exit file
" Ctrl-s to save (by default, Ctrl-s key combination is used for te
" stop the data from arriving so that a fast scrolling display can
" to analyze. I don't need this functionality, so it's safe to rema
inoremap <silent><C-S> <C-O>:update<CR>
noremap  <silent><C-S> :update<CR>
vnoremap <silent><C-S> <C-C>:update<CR>

" Ctrl-q to quit (by default, Ctrl-q key combination is used to sta
" output again, which has been stopped using Ctrl-s. Since I am not
" Ctrl-s/Ctrl-q as the terminal driver flow, it's safe to remap.)
inoremap <silent><C-q> <ESC>:confirm q<CR>
noremap  <silent><C-q> <ESC>:confirm q<CR>
vnoremap <silent><C-q> <ESC>:confirm q<CR>

" Ctrl-j to save (if applicable) and quit (by default, Ctrl-j is us
" <CR> (depending on the mode), which means it's safe to remap, bec
" same functionality can be easily accomplished using other keys. I
" other keys are easier to use for those operations.)
inoremap <silent><C-j> <ESC>:x<CR>
noremap  <silent><C-j> <ESC>:x<CR>
vnoremap <silent><C-j> <ESC>:x<C

" Toggle number or nonumber
nnoremap <F7> :set nonumber! norelativenumber!<CR>

" Visual block reselect after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Visual select command v so that the command selects text starting from
" beginning of the line to end of the line ignoring the new line character.
" If I had used $ in stead of g_, the selected text would have included the
" new line character (\n).
nnoremap <leader>v 0vg_

" Visual select command to select from current cursor position to end of the
" line (excluding new line character)
nnoremap <leader><leader>v vg_



" ******************************************************************************
" Plugins
" ******************************************************************************
" Ale - General
" Enable completion where available.
let g:ale_completion_enabled = 1
" Ale with Vim Airline
let g:airline#extensions#ale#enabled = 1
  " Try and fix your JS code with ESLint
"let g:ale_fixers = {
"\   'javascript': ['eslint'],
"\}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" Ale - JavaScript
let g:ale_javascript_eslint_executable='../../universal/node_modules/eslint'
let g:ale_javascript_flow_executable='../universal/node_modules/.bin/flow'

" Emmet vim (not working. trying to share <tab> as leader key for both emmet and ultisnips)
" let g:user_emmet_leader_key='<tab>'

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Vim JavaScript
" Enable flow colors
let g:javascript_plugin_flow = 1



" ******************************************************************************
" Searching
" ******************************************************************************
" Highlight all search matches
set hlsearch

" Incremental search, search as you type
set incsearch

" Ignore case when searching
set ignorecase

" Ignore case when searching lowercase
set smartcase



" ******************************************************************************
" Tmux
" ******************************************************************************
" Rename window to the current (opened) file name (or 'vim' if it fails)
autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter *
  \ call system("tmux rename-window '" . expand("%:t") . "'")

" Restore automatic window title on Vim exit
autocmd VimLeave * call system("tmux setw automatic-rename")
