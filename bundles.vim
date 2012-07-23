" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Navigation
" Bundle 'ZoomWin'
" Bundle 'wincent/Command-T'
" This fork is required due to remapping ; to :
" Bundle 'christoomey/vim-space'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'mutewinter/LustyJuggler'
Bundle 'kien/ctrlp.vim'
Bundle 'fholgado/minibufexpl.vim.git'

" Visual
" Bundle 'sjl/badwolf'
Bundle 'altercation/vim-colors-solarized'
" Bundle 'tomasr/molokai'
" Bundle 'nanotech/jellybeans.vim'

" UI Additions
" Bundle 'mutewinter/vim-indent-guides'
" Bundle 'Lokaltog/vim-powerline'
" Bundle 'scrooloose/nerdtree'
" Bundle 'Rykka/colorv.vim'
"Bundle 'tomtom/quickfixsigns_vim'

" Commands
" Comments out lines
Bundle 'scrooloose/nerdcommenter'

" Change surroundings easily
Bundle 'tpope/vim-surround'

" Increases dates/times with Ctrl-A/X
Bundle 'tpope/vim-speeddating'

Bundle 'tpope/vim-fugitive'

" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
" Aligning text
Bundle 'godlygeek/tabular'

" easy ack calling
Bundle 'mileszs/ack.vim'

" Seems to work only with Mac
" Bundle 'gmarik/sudo-gui.vim'


" Bundle 'milkypostman/vim-togglelist'
"Bundle 'mutewinter/swap-parameters'

" Automatic Helpers
" Bundle 'IndexedSearch'

" Lets save sessions
" Bundle 'xolox/vim-session'

" Inserts closing quotes, parenthesis, brackets etc
Bundle 'Raimondi/delimitMate'

" Bundle 'scrooloose/syntastic'


" Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'

" Bundle 'Shougo/neocomplcache'

" ---- Language Additions -----

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-endwise'

" JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'

" Other Languages
" Bundle 'msanders/cocoa.vim'
" Bundle 'mutewinter/taskpaper.vim'
" Bundle 'mutewinter/nginx.vim'
" Bundle 'timcharper/textile.vim'
" Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
" Bundle 'acustodioo/vim-tmux'
Bundle 'hallison/vim-markdown'

" CSS-Improvements
Bundle 'hail2u/vim-css3-syntax'
Bundle 'skammer/vim-css-color'

" LESS-Syntax-Highlighting
Bundle 'groenewege/vim-less'

" MatchIt
Bundle 'matchit.zip'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

" Libraries
" Bundle 'L9'
Bundle 'tpope/vim-repeat'
Bundle 'tomtom/tlib_vim'
" Bundle 'mathml.vim'

" SnipMate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "snipmate-snippets"
Bundle "garbas/vim-snipmate"

" highlight trailing whitespaces
Bundle "bronson/vim-trailing-whitespace"

" casm syntax highlighting
Bundle "dinfuehr/vim-syntax-casm"

filetype plugin indent on " required! 

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
