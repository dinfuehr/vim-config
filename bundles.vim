" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Navigation
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'fholgado/minibufexpl.vim.git'

" Visual
Bundle 'altercation/vim-colors-solarized'

" Comments out lines
Bundle 'scrooloose/nerdcommenter'

" Change surroundings easily
Bundle 'tpope/vim-surround'

Bundle 'tpope/vim-fugitive'

" Inserts closing quotes, parenthesis, brackets etc
Bundle 'Raimondi/delimitMate'

" Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'

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

Bundle 'hallison/vim-markdown'

" CSS-Improvements
Bundle 'hail2u/vim-css3-syntax'
"Bundle 'ap/vim-css-color'

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

" Rust syntax highlighting
Bundle 'rust-lang/rust.vim'

" Toml syntax highlighting"
Bundle 'cespare/vim-toml'

" Gradle syntax highlighting
Bundle 'tfnico/vim-gradle'

" Go syntax highlighting
Bundle 'fatih/vim-go'

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
