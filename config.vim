" Syntax-Highlighting einschalten
syntax on
" Zeilennummern anzeigen
set number

" Backspace-Taste normal verwenden können
set backspace=2

" Tabulator-Einstellungen
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8 " UTF-8 verwenden
set fileencodings=utf-8

set autoindent " Automatisch einrücken
set laststatus=2 " Statusbar immer anzeigen

if has("gui_running")
  set cursorline " Aktuelle Zeile hervorheben
endif

set ruler " Aktuelle Zeile und Spalte des Cursors rechts unten anzeigen
set ttyfast " Schnelleres Terminaldarstellung

if has( "mac" ) || has( "macunix" )
  set guifont=Menlo\ Regular:h12
else
  set guifont=DejaVu\ Sans\ Mono\ 11
endif

"set guifont=Monaco\ 11
set history=1000 " Mehr Commands zwischenspeichern
set scrolloff=3 " Anzahl Zeilen die nach oben/unten immer angezeigt werden
" Wenn Cursor Screen verlässt, würde dies springen veranlassen
" set scrolljump=5 

" Damit undo auch nach schließen und öffnen eines files möglich ist
set undofile

" Beim Verlieren des Fokus Datei automatisch abspeichern
" au FocusLost * :wa

" Swap- und Backup-Files nicht im aktuellen Verzeichnis, sondern
" in tmp-Verzeichnis erstellen. Dann gibts keine Probleme mit git.
set backupdir=~/tmp,.
set directory=~/tmp,.

" Leader-Key umsetzen
let mapleader = ","

" § for Window switching
"noremap § <C-W>

" Stupid shift key fixes
" cmap W w
" cmap WQ wq
" cmap wQ wq
" cmap Q q

" Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

" Shortcut to rapidly toggle `set list`
nmap <leader>cl :set list!<CR>

" Kann nun mit ,dc das vimrc-File gleich laden
nmap <leader>dc :edit ~/.vim/config.vim<CR>

" Mit ,db Bundles-File laden
nmap <leader>db :edit ~/.vim/bundles.vim<CR>

" Mit ,dv das 'echte' .vimrc-File laden
nmap <leader>dv :edit $MYVIMRC<CR>

" reload vimrc-File
nmap <leader>dl :source $MYVIMRC<CR>

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" Zeilennummern an- und ausschalten
nmap <leader>cn :set number!<CR>

" Ins DmDoc-Verzeichnis springen
nmap <leader>dd :cd $HOME/dmdoc/DmDoc<CR>

" Ins Uni-Projekt springen
nmap <leader>du :cd $HOME/projekte/casmi<CR>

" Ins repo-Verzeichnis springen
nmap <leader>dr :cd $HOME/repo<CR>

" Ins gaia-Verzeichnis springen
nmap <leader>dg :cd $HOME/projekte/gaia<CR>

" NerdTree aufmachen
nmap <leader>n :NERDTree<CR>

" ack schnell aufrufen
nnoremap <leader>a :Ack

" Den zuletzt eingefügten Bereich nochmals markieren
nnoremap <leader>v V`]

" Split-View aufmachen
nnoremap <leader>w <C-w>v<C-w>l

" Mit Space kann nun Doppelpunkt
" eingegeben werden
nmap <space> :

" Tab configuration
" map <leader>tn :tabnew<cr>
" map <leader>te :tabedit
" map <leader>tc :tabclose<cr>
" map <leader>tm :tabmove

" Wechseln von Tabs mittels Tab und Shift-Tab
nmap <tab> :bn<CR>
nmap <S-tab> :bp<CR>
nmap <leader>c :bw<CR>
nmap <leader>bc :bw<CR>
nmap <leader>bd :bw<CR>

" bitte nicht beepen
set visualbell
set noerrorbells
set t_vb=

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv 

set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

" 
"noremap <tab> :bn<CR>

" Unsichtbare Zeichen prinzipiell darstellen
set list

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors

" Initiale Fenstergröße setzen
if has( "gui_running" )
  set lines=40 columns=120
endif

" Verwende 256 Farben
set t_Co=256

" Konsolentheme
" colorscheme desert256

" Auto-Neuladen von Files
set autoread

let g:solarized_termcolors=256

" Als GUI railscasts-Theme verwenden
" if has("gui_running")
" set background=dark
"  colorscheme max-solarized
" endif

syntax enable
set background=dark
colorscheme solarized

"Colors for MBE
hi MBEVisibleActive guibg=fg guifg=#A6DB29 ctermfg=154 ctermbg=235
hi MBEVisibleChangedActive guifg=#F1266F guibg=fg ctermbg=235 ctermfg=161
hi MBEVisibleChanged guifg=#F1266F ctermfg=166
hi MBEVisibleNormal guifg=#A6DB29 guibg=fg ctermbg=235 ctermfg=154 
hi MBEChanged guifg=#CD5907 
hi MBENormal guifg=#808080 ctermfg=240

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

" Command-T anpassen
let g:CommandTMaxFiles=40000

" Dürfte MBE beschleunigen
let g:miniBufExplCheckDupeBufs = 0

" Binärdateien brauchen nicht geladen werden
set wildignore+=*.xlsx,*.ico,*.png,*.jpg,*.gif,*.jpeg,*.xcf,*.xls,*.orig,*.swp,*.bak,*.pyc,
set wildignore+=*.class,*.obj,*.o,*.un~,*~
set wildignore+=$HOME/dmdoc/DmDoc/packages/**
set wildignore+=$HOME/dmdoc/DmDoc/public/ext-3.2.0/**
set wildignore+=$HOME/dmdoc/DmDoc/public/ext-3.4.0/**
set wildignore+=$HOME/dmdoc/DmDoc/public/ext-3.3.1/**
set wildignore+=$HOME/dmdoc/DmDoc/public/ext-4.0.0/**
set wildignore+=$HOME/dmdoc/DmDoc/public/tinymce-3.4.9/**
set wildignore+=$HOME/dmdoc/DmDoc/public/codemirror-2.0.1/**
set wildignore+=$HOME/dmdoc/DmDoc/public/codemirror-2.11/**
set wildignore+=$HOME/dmdoc/DmDoc/public/javascripts/jquery/**
set wildignore+=$HOME/dmdoc/DmDoc/public/javascripts/jquery.preferences/**
set wildignore+=$HOME/projekte/casmi/casmi
set wildignore+=$HOME/projekte/casmi/build/**

" Buffer wechseln auch wenn Datei bearbeitet wurde
set hidden

"Invisible character colors
"highlight NonText guifg=#444
"highlight SpecialKey guifg=#444

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar

set wildmenu " bei vervollständigen von Files, mehrere möglich

" Arrow-Keys deaktivieren
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Suchen und Ersetzen verbessern

" Normales Perl-Regex verwenden
nnoremap / /\v
vnoremap / /\v

set ignorecase " ignoriert Groß/Kleinschreibung
set smartcase " intelligente Case-Erkennung

" gleich beim Eingeben Highlighten
set incsearch
set showmatch
set matchtime=2 " How many tenths of a second to blink
set hlsearch

" Highlighting entfernen
nnoremap <leader><space> :noh<cr>

" mit j und k nicht in nächsthöhere
" Zeile springen, sondern in darunterliegende
nnoremap j gj
nnoremap k gk

" mit jj auch in normal mode zurück
" inoremap jj <ESC>

" Mit F9 kann man nun Ruby-Files Syntaxüberprüfen lassen
autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>

" Preferences from mswin.vim
" Ctrl+C/V/X sollten nun funktionieren
" source $VIMRUNTIME/mswin.vim
" behave mswin

" CTRL-X is Cut
vnoremap <C-X> "+x

" CTRL-C is Copy
vnoremap <C-C> "+y

" CTRL-V is Paste
map <C-V> "+gP
cmap <C-V> <C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q> <C-V>

" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Session
" ---------------
let g:session_autosave=0
let g:session_autoload=0
nnoremap <leader>os :OpenSession<CR>

" ---------------
" SpeedDating
" ---------------
let g:speeddating_no_mappings=1 " Remove default mappings (C-a etc.)
nmap <silent><leader>dm <Plug>SpeedDatingDown
nmap <silent><leader>dp <Plug>SpeedDatingUp
nmap <silent><leader>dn <Plug>SpeedDatingNowUTC

" ---------------
" Tabular
" ---------------
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>
nmap <Leader>t> :Tabularize /=>\zs<CR>
vmap <Leader>t> :Tabularize /=>\zs<CR>
nmap <Leader>t- :Tabularize /-<CR>
vmap <Leader>t- :Tabularize /-<CR>
nmap <Leader>t" :Tabularize /"<CR>
vmap <Leader>t" :Tabularize /"<CR>

" ---------------
" Fugitive
" ---------------
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>

" ---------------
" Ack.vim
" ---------------
nmap <silent> <leader>as :AckFromSearch<CR>

" ---------------
" Vundle
" ---------------
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean<CR>

" ---------------
" Ctrl-P
" ---------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
