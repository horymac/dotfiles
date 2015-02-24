"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/         "required
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'   "required

" Add or remove your Bundles here:
" ************* bundle list of NeoBundle **************
NeoBundle 'scrooloose/syntastic'            " syntax check
NeoBundle 'davidhalter/jedi-vim'            " auto complete for python
NeoBundle 'hynek/vim-python-pep8-indent'    " python pep8 indent
NeoBundle 'scrooloose/nerdtree'             " tree file view
NeoBundle 'tomtom/tcomment_vim'             " comment ON/OFF

call neobundle#end()

filetype plugin indent on       " required
filetype indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"End NeoBundle Scripts-------------------------

"=====================
"jedi config
"=====================
" jediにvimの設定を任せると'completeopt+=preview'するので
" 自動設定機能をOFFにし手動で設定を行う
let g:jedi#auto_vim_configuration = 0
" 補完の最初の項目が選択された状態だと使いにくいためオフにする
let g:jedi#popup_select_first = 0
" quickrunと被るため大文字に変更
let g:jedi#rename_command = '<Leader>R'
" docstringは表示しない
autocmd FileType python setlocal completeopt-=preview
  
"=====================
" syntastic settings
"=====================
let g:syntastic_python_checkers = ['pyflakes', 'pep8']

"--------------------
" 基本的な設定
"--------------------
"新しい行のインデントを現在行と同じにする
set autoindent
"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/vimbackup
" "クリップボードをWindowsと連携する
"set clipboard=unnamed
"vi互換をオフする
set nocompatible
"スワップファイル用のディレクトリを指定する
"set directory=$HOME/vimbackup
" ~.swpファイルを作らない
set noswapfile
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" タブ文字の表示幅
set tabstop=2
" vimが挿入するインデントの幅
set shiftwidth=2
"タブの代わりに空白文字を指定する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden
"インクリメンタルサーチを行う
set incsearch
"行番号を表示する
set nonumber

"構文ハイライト
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
syntax on

"文字コードと改行文字を表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"キーバインド設定
imap <C-j> <esc>
map <C-h> <esc>:bp<CR>
map <C-l> <esc>:bn<CR>
map <C-q> <esc>:bw<CR>
"map <F9> <ESC>:bw<CR>
"map <F9> <ESC>:e ++enc=utf-8<CR> :set fileencoding=utf-8<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>  " for NERDTree

"物理行で上下動作
nnoremap j gj
nnoremap k gk

"閉括弧が入力された時、対応する括弧を強調する
set showmatch
"新しい行を作った時に高度な自動インデントを行う
set smarttab
" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh
" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

