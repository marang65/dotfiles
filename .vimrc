"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                
"                  ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"                  ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"                  ██║   ██║██║██╔████╔██║██████╔╝██║     
"                  ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                   ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                    ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"                
"                    https://github.com/brandon-wallace
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable compatibilty with Vi.
set nocompatible

" Allow plugins to be used.
filetype plugin indent on

" Use syntax highlighting.
syntax on

" Show line numbers.
set number
set relativenumber

" Highlight line with cursor.
set cursorline

" Split window to open a pane in the bottom.
set splitbelow

" Split window to open a pane to the right.
set splitright

" Always leave a number of rows below cursor.
set scrolloff=10

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab stop to 4 spaces.
set tabstop=4

" Indent automatically.
set autoindent

" Use the appropriate number of spaces to insert a tap in insert mode.
set expandtab

" Show command in the last line of the screen.
set showcmd

" Show the line and column position of cursor.
set ruler

" Show matching words during a search.
set showmatch

" Highlight matching words while searching for text.
set hlsearch

" Set the number of lines to save in history.
set history=8000

" Back up files.
set backup

" Set a directory to save file backups with full path.
set backupdir=~/.vim/backup//

" Undo changes to files after saving them.
set undofile

" Set a directory to save undo data with full path.
set undodir=~/.vim/undo//

" Set number of times a file can be undone.
set undoreload=2000

" Undo changes to files after saving them.
set undofile

" Set location for temporary (swp) files.
set directory=/tmp

" Check to see if an file has changed by another text editor.
set autoread

" Switch to another buffer without saving.
set hidden

" Set text width
set textwidth=120

" Hide mouse when typing.
set mousehide

" Set colorscheme.
colorscheme molokai

" Greatly enhance command line tab completion.
set wildmenu

" Set wildmode.
set wildmode=list:longest

" Ignore files.
set wildignore=*.jpg,*.mp4,*.zip,*.iso,*.pdf,*.pyc,*.odt,*.png,*.gif,*.tar,*.gz,*.xz,*.bz2,*.tgz,*.db,*.exe,*.odt,*.xlsx,*.docx,*.tar,*.rar,*.img,*.odt,*.m4a,*.bmp,*.ogg,*.mp3,*.gzip,*.flv,*.deb,*.rpm

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
call plug#end()
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash as the leader key.
let mapleader = "."

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
nnoremap <silent> <leader>p :%w !lp<CR>

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Map the F5 key to run a Python script inside Vim.
" I map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

