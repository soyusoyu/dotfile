set nocompatible 
filetype off
filetype plugin indent off 

set fileencodings=iso-2022-jp,euc-jp,utf-8,cp932
" neobundleでプラグインを管理
if has('vim_starting')
        set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" 以下のプラグインをバンドル
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'
NeoBundleLazy 'Shougo/vimshell'
NeoBundle 'scrooloose/syntastic'
NeoBundleLazy 'mattn/emmet-vim'
"NeoBundle 'open-browser.vim'
NeoBundle 'mattn/webapi-vim'

" NeoBundle 'vim-scripts/dbext.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundleLazy 'thinca/vim-ref'
"NeoBundle 'Lokaltog/powerline'
" Perl関連プラグインをバンドル
"NeoBundle 'petdance/vim-perl'
"NeoBundle 'hotchpotch/perldoc-vim'

" シンタックス系プラグインをバンドル
NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
" 実行プラグインをバンドル
NeoBundleLazy 'thinca/vim-quickrun'

NeoBundleLazy 'https://github.com/thinca/vim-qfreplace'
NeoBundle 'https://github.com/ctrlpvim/ctrlp.vim'
" 編集履歴管理
"NeoBundle 'sjl/gundo.vim'

" tagsを利用したソースコード閲覧・移動補助機能 tagsファイルの自動生成
" NeoBundle 'Source-Explorer-srcexpl.vim'
" NERD_tree, taglist, srcexpl の統合
" NeoBundle 'trinity.vim'
" NeoBundle 'The-NERD-tree'
"NeoBundle 'vtreeexplorer'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'taglist.vim'
"NeoBundle 'grep.vim'

" NeoBundle 'tsukkee/unite-help'
"NeoBundle 'h1mesuke/unite-outline'
"NeoBundle 'Shougo/unite-outline'

NeoBundle 'tsukkee/unite-tag'
"NeoBundle 'choplin/unite-vim_hacks'

"NeoBundle 'https://github.com/vim-scripts/perl-support.vim'
"NeoBundle 'https://github.com/vim-scripts/SrcExpl'

NeoBundle 'https://github.com/tpope/vim-fugitive'
NeoBundle 'https://github.com/gregsexton/gitv'

"NeoBundle '5t111111/alt-gtags.vim'
" NeoBundle 'hewes/unite-gtags'

"NeoBundle 'https://github.com/c9s/perlomni.vim'
NeoBundle 'https://github.com/vim-scripts/DirDiff.vim'
NeoBundle 'https://github.com/fuenor/qfixhowm'
" QuickFixウィンドウでもプレビューや絞り込みを有効化
let QFixWin_EnableMode = 1

NeoBundle 'https://github.com/Lokaltog/vim-easymotion'

" メソッド定義元へのジャンプ
" NeoBundle 'szw/vim-tags'
NeoBundle 'majutsushi/tagbar'
" NeoBundle 'https://github.com/dag/vim2hs'
" NeoBundle 'https://github.com/eagletmt/ghcmod-vim'
"NeoBundle 'https://github.com/pbrisbin/vim-syntax-shakespeare/tree/master/syntax'
" NeoBundle 'https://github.com/eagletmt/neco-ghc'
" NeoBundle 'https://github.com/eagletmt/unite-haddock'

"go言語
"NeoBundle 'dgryski/vim-godef'
"NeoBundle 'vim-jp/vim-go-extra'

" NeoBundle 'fatih/vim-go'
"NeoBundleLazy 'fatih/vim-go', {
"            \ 'autoload' : { 'filetypes' : 'go'  }
"            \ }
" vim-ft-goは最新版のvimを使えない場合のみ
"NeoBundle 'google/vim-ft-go'
"set rtp^=$GOPATH/src/github.com/nsf/gocode/vim

"let g:CodeReviewer_reviewer = 'Karthick'
"let g:CodeReviewer_reviewFile = '$HOME/review_Karthick.rev'
"2NeoBundle 'https://github.com/vim-scripts/CodeReviewer.vim'

NeoBundle 'kana/vim-tabpagecd'
NeoBundle 'tpope/vim-surround'

" ruby
" ドキュメント参照
NeoBundleLazy 'yuku-t/vim-ref-ri'

" 自動で閉じる
NeoBundleLazy 'tpope/vim-endwise'

NeoBundle 'editorconfig/editorconfig-vim'

NeoBundleLazy 'vim-scripts/ruby-matchit', { "autoload" : { 
	\ "filetypes" : [ "ruby", "eruby" ] } }
 
""NeoBundleLazy 'marcus/rsense', {
""      \ 'autoload': {
""      \   'filetypes': 'ruby',
""      \ },
""      \ }
""let g:rsenseUseOmniFunc = 1
""NeoBundleLazy 'supermomonga/neocomplete-rsense.vim', { 'autoload' : {
""  \ 'insert' : 1,
""  \ 'filetypes': 'ruby',
""  \ }}
 
""if !exists('g:neocomplete#force_omni_input_patterns')
""  let g:neocomplete#force_omni_input_patterns = {}
""endif
""let g:neocomplete#force_omni_input_patterns.ruby =
         \ '[^. *\t]\.\w*\|\h\w*::'
let g:syntastic_ruby_checkers = ['rubocop']


NeoBundleLazy 'tpope/vim-rails'
NeoBundleLazy 'basyura/unite-rails'
NeoBundleLazy 'vim-ruby/vim-ruby'

NeoBundleLazy 'osyo-manga/vim-monster'
" Use neocomplete.vim
" Set async completion.
let g:monster#completion#rcodetools#backend = "async_rct_complete"

" Use neocomplete.vim
let g:neocomplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

" php 
NeoBundle 'violetyk/neocomplete-php.vim'
let g:neocomplete_php_locale = 'ja'
NeoBundle 'vim-scripts/tagbar-phpctags', {
  \   'build' : {
  \     'others' : 'chmod +x bin/phpctags',
  \   },
  \ }

NeoBundle 'violetyk/vim-phpclass'
NeoBundle 'kana/vim-gf-user'
"NeoBundle 'violetyk/cake.vim'
" let g:cakephp_enable_auto_mode = 1
NeoBundle 'joonty/vdebug'
" 関連ファイル
"/etc/php.d/xdebug.ini
"~/.phpenv/versions/5.x.xx/etc/conf.d/xdebug.ini 

" vim-php-cs-fixer {{{
NeoBundleLazy 'stephpy/vim-php-cs-fixer', {'functions': 'PhpCsFixerFixFile'}
nnoremap <Leader>php :<C-u>call<Space>PhpCsFixerFixFile()<CR>
    let s:hooks = neobundle#get_hooks('vim-php-cs-fixer')
    function! s:hooks.on_source(bundle) abort "{{{
    let g:php_cs_fixer_path = "$HOME/.vim/phpCsFixer/php-cs-fixer" " php-cs-fixerをインストールした場所を指定
    let g:php_cs_fixer_level = "all"                " which level ?
    " let g:php_cs_fixer_level                  = 'symfony'
    let g:php_cs_fixer_config = "default"           " configuration
    let g:php_cs_fixer_php_path = "php"             " Path to PHP
    " let g:php_cs_fixer_fixers_list            = 'align_equals,align_double_arrow'
    " let g:php_cs_fixer_fixers_list = ""             " List of fixers
    let g:php_cs_fixer_enable_default_mapping = 0   " Enable the mapping by default (<leader>pcd)
    let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
    let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.
    endfunction "}}}
"}}}


let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_args='--standard=psr2'

" outline
NeoBundleLazy 'vim-voom/VOoM'

" html 
NeoBundleLazy 'othree/html5.vim.git'
NeoBundleLazy 'hail2u/vim-css3-syntax'
NeoBundleLazy 'hokaccha/vim-html5validator'
NeoBundleLazy 'cakebaker/scss-syntax.vim'

" gtag
" NeoBundle 'vim-scripts/gtags.vim'

call neobundle#end()

set t_Co=256
set expandtab
set tabstop=4
set shiftwidth=4 "自動インデントでずれる幅
" ファイラー関連
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_preview_action= 'tabopen'
" mru,reg,buf
noremap :um :Unite file_mru -buffer-name=file_mru
noremap :ct :Unite tag -input=
noremap :ut :Unite tab -input=
noremap :fs :Unite file source


noremap :gr :Unite gtags/ref -input=
noremap :gd :Unite gtags/def -input=
noremap :gg :Unite gtags/grep 
noremap :gc :Unite gtags/completion -input=
noremap :gf :Unite gtags/file -input=

" 環境設定系
" シンタックスハイライト
"syntax on
" スクロールする時に下が見えるようにする
set scrolloff=5
" .swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" バックスペースで各種消せるようにする
set backspace=indent,eol,start
" ビープ音を消す
set vb t_vb=
set novisualbell
" 不可視文字を表示
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

" 行番号を表示
set number
" 右下に表示される行・列の番号を表示する
set ruler
" 移動コマンドを使ったとき、行頭に移動しない
"set nostartofline
" 対応括弧をハイライト表示する
set showmatch
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" 入力されているテキストの最大幅を無効にする
set textwidth=0
" インデントをshiftwidthの倍数に丸める
set shiftround
" 補完の際の大文字小文字の区別しない
set infercase
" 文字がない場所にもカーソルを移動できるようにする
"set virtualedit=onemore
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen
" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" インクリメンタルサーチを行う
set incsearch
" 検索結果をハイライト表示
set hlsearch
" コマンド、検索パターンを10000個まで履歴に残す
set history=10000
" xtermとscreen対応
set ttymouse=xterm2
" マウスモード有効
set mouse=v
" コマンドを画面最下部に表示する
set showcmd

" 日本語文字サイズ変更 
set ambiwidth=double
" w!! でスーパーユーザーとして保存（sudoが使える環境限定）
cmap w!! w !sudo tee > /dev/null %
" 入力モード中に素早くJJと入力した場合はESCとみなす
inoremap jj <Esc>
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
"nnoremap * *zz
nnoremap # #zz
"nnoremap g* g*zz
nnoremap g# g#zz
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk
" vを二回で行末まで選択
vnoremap v $h
" TABにて対応ペアにジャンプ
nnoremap <TAB> %
" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>
" T + ? で各種設定をトグル
nnoremap [toggle] <Nop>
nmap T [toggle]
nnoremap <silent> [toggle]s :setl spell!<CR>:setl spell?<CR>
nnoremap <silent> [toggle]l :setl list!<CR>:setl list?<CR>
nnoremap <silent> [toggle]t :setl expandtab!<CR>:setl expandtab?<CR>
nnoremap <silent> [toggle]w :setl wrap!<CR>:setl wrap?<CR>

" ~/.vimrc.localが存在する場合のみ設定を読み込む
let s:local_vimrc = expand('~/.vimrc.local')
if filereadable(s:local_vimrc)
    execute 'source ' . s:local_vimrc
endif
" /{pattern}の入力中は「/」をタイプすると自動で「\/」が、
" ?{pattern}の入力中は「?」をタイプすると自動で「\?」が 入力されるようになる
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
if has('unnamedplus')
   set clipboard& clipboard+=unnamedplus
else
   set clipboard& clipboard+=unnamed,autoselect
endif
"set clipboard=unnamedplus
"表示行単位で行移動する
nnoremap <silent> j gj
nnoremap <silent> k gk
"インサートモードでも移動
inoremap <c-d> <delete>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>
"画面切り替え
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
"<space>j, <space>kで画面送り
noremap [Prefix]j <c-f><cr><cr>
noremap [Prefix]k <c-b><cr><cr>

" ハイライト色設定
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4

" neocomplcacheを起動時に有効化する
let g:neocomplete#enable_at_startup = 1
" 大文字を区切りとしたワイルドカードのように振る舞う機能
let g:neocomplete#enable_camel_case_completion = 1
let g:neocomplete#enable_smart_case = 1
" _区切りの補完を有効化
" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#smart_case = 1
" シンタックスをキャッシュするときの最小文字長を3に
let g:neocomplete#min_syntax_length = 2
"手動補完時に補完を行う入力数を制御
let g:neocomplete#manual_completion_start_length = 1
let g:neocomplete#caching_percent_in_statusline = 1
let g:neocomplete#enable_skip_completion = 1
let g:neocomplete#skip_input_time = '0.5'
let g:acp_enableAtStartup = 0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'


" Perl用設定
autocmd BufNewFile,BufRead *.psgi   set filetype=perl
autocmd BufNewFile,BufRead *.t      set filetype=perl

let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'perlcritic', 'podchecker']
let g:neocomplete#dictionary_filetype_lists = { 'default'    : '', 'perl'       : $HOME . '/.vim/dict/perl.dict' }


" Enable snipMate compatibility feature.ｲ!
let g:neosnippet#enable_snipmate_compatibility = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

nmap f <Leader><Leader>f
nmap F <Leader><Leader>F

""noremap  gf <C-w>gf
""vnoremap gf <C-w>gf

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/snippets/snippets'
" Define dictionary.

" Java用設定
"SQLのJava文字リテラルへの整形(:Sqltoj, :Sqlfromj)
function! SQLToJava()
%s/^\(.\+\)$/"\1 " \+/g

normal G$
execute "normal ?+\&lt;CR&gt;"
normal xxggVG
echo "Convert to Java String is finished."
endfunction
command! Sqltoj :call SQLToJava()
function! SQLFromJava()
%s/^"\(.\+\) " *+*$/\1/g

normal ggVG
echo "Convert from Java String is finished."
endfunction
command! Sqlfromj :call SQLFromJava()

" 行末、行の最初への移動のキーマップ設定
map! <C-e> <Esc>$a
map! <C-a> <Esc>^a
map <C-e> <Esc>$a
map <C-a> <Esc>^a
" Ctrl+dで$、Ctrl+aで@
inoremap <C-d> $
inoremap <C-a> @
" \ + rでスクリプト実行
nmap <Leader>r <plug>(quickrun)

"set guifont=MS_Gothic:h11:cSHIFTJIS

nmap f <Leader><Leader>f
nmap F <Leader><Leader>F


" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" unite grepにhw(highway)を使う
if executable('hw')

    set grepprg=hw\ --no-group\ --no-color
    set grepformat=%f:%l:%m

    let g:unite_source_grep_command = 'hw'
    let g:unite_source_grep_default_opts = '--no-group --no-color'
    let g:unite_source_grep_recursive_opt = ''
endif


" for golang {{{
"set path+=$GOPATH/src/**
"let g:gofmt_command = 'goimports'
"au BufWritePre *.go Fmt
"au BufNewFile,BufRead *.go set sw=4 noexpandtab ts=4 completeopt=menu,preview

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:go_fmt_fail_silently = 1
"let g:go_fmt_autosave = 0
"let g:neocomplete#sources#omni#input_patterns.go = '\h\w\.\w*'
"au FileType go compiler go
" }}}

" gotags {{{
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
" }}}


"tab {{{
function! s:SID_PREFIX()
        return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

function! s:my_tabline()  "{{{
        let s = ''
        for i in range(1, tabpagenr('$'))
                let bufnrs = tabpagebuflist(i)
                let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
                let no = i  " display 0-origin tabpagenr.
                let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
                let title = fnamemodify(bufname(bufnr), ':t')
                let title = '[' . title . ']'
                let s .= '%'.i.'T'
                let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
                let s .= no . ':' . title
                let s .= mod
                let s .= '%#TabLineFill# '
        endfor
        let s .= '%#TabLineFill#%T%=%#TabLine#'
        return s
endfunction "}}}

" tab表示部
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2
" }}}

" ついになるものを補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ' ''<LEFT>
inoremap < <><LEFT>


" フォルダ指定grep {{{
function! s:select_grep()
endfunction

"}}}

command! GrepProDir :call select_grep()



" ctrl +space
imap <Nul> <C-x><C-]>

filetype plugin indent on
syntax on
