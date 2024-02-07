

"ADD https://raw.githubusercontent.com/ambergon/DockerVimSetting/master/.vimrc /root/.vimrc


"jj で normalへ 
inoremap jj <Esc>


set nocompatible
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,sjis,cp932
set fileformats=unix,dos

"常に中央に
set scrolloff=999


set bomb
set binary
set ttyfast
set backspace=indent,eol,start
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set splitright
set splitbelow
"buffer change tab no stop
set hidden
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set ruler
set gcr=a:blinkon0
set laststatus=2
set modeline
set modelines=10
set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set autoread
set noerrorbells visualbell t_vb=
set clipboard+=unnamed,autoselect
set mouse=a
set whichwrap=b,s,h,l,<,>,[,]

"行表示
set number
"相対的な行番号
set relativenumber



"" カーソルの形状を変更
"\e[N q"
"N = カーソルの種類 0-6
"0-1 点滅短径 
"2   短径
"3   点滅下線
"4   下線
"5   点滅垂直
"6   垂直
"insert
let &t_SI.="\e[2 q"
"normal
let &t_EI.="\e[6 q"


"カーソルを行末+1まで。visualモードで文字列のないところへカーソルを持っていけるように。
"set virtualedit+=block
"set virtualedit+=onemore
set virtualedit+=onemore,block





"折り返し時のindent
set breakindent
"折り返し時に>付与
set showbreak=\>
"折り返し時に文字をずらす
set briopt=shift:-2


"window
"カレントwindowの横幅最小サイズ
set winwidth=90
set winheight=45

" ペアを登録する。飛んだりハイライトしたり
set matchpairs=(:),{:},[:],（:）


"ターミナルでの挙動
"commandモードに移行を簡略化
"tmap <C-w>; <C-w>:

"terminalで新しいwindowを開いた際に設定を適用
"buffer list に入れないように。
autocmd TerminalWinOpen * set nobuflisted



""gdbを実行できるように。
"Termdebug
"TermdebugCommand
"gcc -gでデバッグを有効化したexeを用意すること。
packadd termdebug

"mouse無効
"gdbで余計なものが出ないように。
set mouse=

