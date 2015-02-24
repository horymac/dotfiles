"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/hory/.vim/bundle/neobundle.vim/
endif
" Required:
call neobundle#begin(expand('/Users/hory/.vim/bundle'))
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'ivanov/vim-ipython'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

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
"map <F9> <ESC>:bw<CR>
"map <F9> <ESC>:e ++enc=utf-8<CR> :set fileencoding=utf-8<CR>

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

"-------------------
"jedi config
"-------------------
" docstringは表示しない
autocmd FileType python setlocal completeopt-=preview

