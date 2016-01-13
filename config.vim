" syntax highlighting
syntax on

" line numbers
set number

" change backspace behavior
set backspace=2

" tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" tags file path
set tags=tags;/

" auto save
:au FocusLost * silent! wa

set encoding=utf-8
set fileencodings=utf-8

set autoindent
set laststatus=2

if has("gui_running")
  " highlight current line
  set cursorline
endif

" show curret row and column
set ruler

" faster terminal emulation
set ttyfast

if has( "mac" ) || has( "macunix" )
  set guifont=Menlo\ Regular:h14
else
  set guifont=DejaVu\ Sans\ Mono\ 11
endif

" save more commands in history
set history=1000

" offset to top/bottom when scrolling
set scrolloff=3

" allow undo even after file was closed
set undofile

" save swap and backup files not in current directory
set backupdir=~/tmp,.
set directory=~/tmp,.

let mapleader = ","

" easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

" vertical buffer
nnoremap <leader>w <C-w>v<C-w>l

" toggle list
nmap <leader>cl :set list!<CR>

" toggle line numbers
nmap <leader>cn :set number!<CR>

" re-select pasted text
nnoremap <leader>v V`]

" open split view
nnoremap <leader>w <C-w>v<C-w>l

" space means :
nmap <space> :

" switch between buffers with tab and shift-tab
nmap <tab> :bn<CR>
nmap <S-tab> :bp<CR>

" easier closing of buffers
nmap <leader>c :bw<CR>
nmap <leader>bc :bw<CR>
nmap <leader>bd :bw<CR>

" no beeping
set visualbell
set noerrorbells
set t_vb=

" visual shifting (does not exit visual mode)
vnoremap < <gv
vnoremap > >gv

set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" better complete options to speed it up
set complete=.,w,b,u,U

" show invisible characters (tabs, eol,..)
set list

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" set initial window size
if has( "gui_running" )
  set lines=40 columns=120
endif

" use 256 colors
set t_Co=256

" auto reload of files
set autoread

let g:solarized_termcolors=256

syntax enable
set background=dark
colorscheme solarized

"colors for MiniBufExpl
hi MBEVisibleActive guibg=fg guifg=#A6DB29 ctermfg=154 ctermbg=235
hi MBEVisibleChangedActive guifg=#F1266F guibg=fg ctermbg=235 ctermfg=161
hi MBEVisibleChanged guifg=#F1266F ctermfg=166
hi MBEVisibleNormal guifg=#A6DB29 guibg=fg ctermbg=235 ctermfg=154
hi MBEChanged guifg=#CD5907
hi MBENormal guifg=#808080 ctermfg=240

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

" don't check for unique file names
" made MiniBufExpl very slow over time
let g:miniBufExplCheckDupeBufs = 0

" do not load binary files
set wildignore+=*.xlsx,*.ico,*.png,*.jpg,*.gif,*.jpeg,*.xcf,*.xls,*.orig,*.swp,*.bak,*.pyc
set wildignore+=*.class,*.obj,*.o,*.un~,*~

" allows switching from unsaved buffer
set hidden

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar

set wildmenu

" use perl regexes for searching
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase

" highlight search text
set incsearch
set showmatch
set matchtime=2 " How many tenths of a second to blink
set hlsearch

" remove highlighting
nnoremap <leader><space> :noh<cr>

" j jumps one line down
" inconvenient for long lines
nnoremap j gj
nnoremap k gk

" delete trailing whitespaces
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

" delete it on every save for every file
autocmd BufWrite * :call DeleteTrailingWS()

" remap 0 to ^
map 0 ^

" vundle
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bu :BundleInstall!<CR>
nmap <Leader>bc :BundleClean<CR>

" ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
