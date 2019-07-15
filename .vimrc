
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

filetype off
filetype plugin indent off 

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,cp932,utf-8
" curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" sh ./installer.sh ~/.vim/bundle/dein
set runtimepath+=$HOME/.vim/bundle/dein/repos/github.com/Shougo/dein.vim

" let g:python_host_prog='$HOME/.anyenv/envs/pyenv/versions/2.7.14/bin/python2'
let g:python_host_prog='/usr/local/bin/python2'
" let g:python3_host_prog='$HOME/.anyenv/envs/pyenv/versions/3.6.4/bin/python3'
let g:python3_host_prog='/usr/local/bin/python3'

"" pip3 install --upgrade neovim
"" gem install neovim
"  gem install rcodetools
"  gem install fastri
if dein#load_state('$HOME/.vim/bundle')
  call dein#begin('$HOME/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.vim/bundle/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('Shougo/deoplete.nvim')
""  call dein#add('prabirshrestha/vim-lsp')
  " 不要gem install language_server
  " gem install solargraph
  " npm install -g javascript-typescript-langserver
  " 不要 npm install -g typescript typescript-language-server
  " pip2 install python-language-server
  " pip3 install python-language-server
  call dein#add('autozimu/LanguageClient-neovim', {
      \ 'rev': 'next',
      \ 'build': 'bash install.sh',
      \ })
  call dein#add('junegunn/fzf')

  call dein#add('ctrlpvim/ctrlp.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/unite.vim')

  call dein#add('Shougo/neomru.vim')

  call dein#add('Shougo/vimfiler')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('tsukkee/unite-tag')
  call dein#add('tpope/vim-fugitive')
  call dein#add('gregsexton/gitv')
  call dein#add('vim-scripts/DirDiff.vim')

  " QuickFixウィンドウでもプレビューや絞り込みを有効化
  call dein#add('fuenor/qfixhowm')

  call dein#add('itchyny/lightline.vim')

  call dein#add('Lokaltog/vim-easymotion')

  call dein#add('majutsushi/tagbar')
  call dein#add('kana/vim-tabpagecd')
  call dein#add('tpope/vim-surround')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('w0rp/ale')
  call dein#add('mattn/emmet-vim')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('thinca/vim-quickrun')
  call dein#add('thinca/vim-qfreplace')
  call dein#add('joonty/vdebug')
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('h1mesuke/vim-alignta')
  "call dein#add('ludovicchabant/vim-gutentags')
  " call dein#add('tpope/vim-projectionist')
  call dein#add('lilydjwg/colorizer')
  " call dein#add('jsfaint/gen_tags.vim')
  " call dein#add('dbakker/vim-projectroot')
  " call dein#add( 'vim-syntastic/syntastic')


  " インサートモード時に有効化
  ""call dein#add('Shougo/neocomplete.vim', { 'on_i': 1 })

  " ファイルタイプ別
  call dein#add('vim-perl/vim-perl', { 'on_ft': 'perl' })
  call dein#add('c9s/perlomni.vim', { 'on_ft': 'perl' })
  " let g:syntastic_enable_perl_checker = 1
  " let g:syntastic_perl_checkers = ['perl', 'perlcritic', 'podchecker']

  call dein#add('davidhalter/jedi-vim', { 'on_ft': 'python' })
  call dein#add('Vimjas/vim-python-pep8-indent', { 'on_ft': 'python' })

  " hs
  call dein#add('dag/vim2hs', { 'on_ft': 'hs' })
  call dein#add('eagletmt/ghcmod-vim', { 'on_ft': 'hs' })
  call dein#add('eagletmt/neco-ghc', { 'on_ft': 'hs' })
  call dein#add('eagletmt/unite-haddock', { 'on_ft': 'hs' })

  " ruby
  " gem install json rest-client solargraph
  " call dein#add('hackhowtofaq/vim-solargraph', { 'on_ft': [ "ruby", "eruby" ] })
  " call dein#add('osyo-manga/vim-monster', { 'on_ft': [ "ruby", "eruby" ] })
  " call dein#add('uplus/deoplete-solargraph', { 'on_ft': [ "ruby", "eruby" ] })
  call dein#add('vim-scripts/ruby-matchit', { 'on_ft': [ "ruby", "eruby" ] })
  call dein#add('tpope/vim-rails', { 'on_ft': 'ruby' })
  call dein#add('basyura/unite-rails', { 'on_ft': 'ruby' })
  call dein#add('vim-ruby/vim-ruby', { 'on_ft': 'ruby' })
  call dein#add( 'tpope/vim-endwise', { 'on_ft': [ "ruby", "elixir" ] })


  " typescript
  call dein#add('leafgarland/typescript-vim.git')
  call dein#add( 'peitalin/vim-jsx-typescript', { 'on_ft': 'typescript' })

  "/etc/php.d/xdebug.ini
  "~/.phpenv/versions/5.x.xx/etc/conf.d/xdebug.ini 
  " let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
  " let g:syntastic_php_phpcs_args='--standard=psr2'

  " html 
  call dein#add('othree/html5.vim.git', { 'on_ft': 'html' })
  call dein#add('hokaccha/vim-html5validator', { 'on_ft': 'html' })
  call dein#add('hail2u/vim-css3-syntax', { 'on_ft': 'css' })
  call dein#add('cakebaker/scss-syntax.vim', { 'on_ft': 'scss' })
  "go
  call dein#add('dgryski/vim-godef', { 'on_ft': 'go' })
  call dein#add('vim-jp/vim-go-extra', { 'on_ft': 'go' })
  call dein#add('fatih/vim-go', { 'on_ft': 'go' })

  call dein#add('elixir-editors/vim-elixir')
  call dein#add('slashmili/alchemist.vim', { 'on_ft': 'elixir' })
""  call dein#add('kbrw/elixir.nvim', { 'on_ft': 'elixir' })
  call dein#add('avdgaag/vim-phoenix', { 'on_ft': 'elixir' })
  call dein#add('slim-template/vim-slim', { 'on_ft': 'elixir' })

  " php
  call dein#add('roxma/LanguageServer-php-neovim', { 'on_ft': 'php' })
  " cd ~/.vim/bundle/repos/github.com/roxma/LanguageServer-php-neovim/
  " composer install
  " composer run-script parse-stubs

  " You can specify revision/branch/tag.
  " "call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
" let g:monster#completion#backend = 'solargraph'
" let g:monster#completion#solargraph#backend = "async_solargraph_suggest"
" let g:deoplete#sources#omni#input_patterns = {
" \   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
" \}
" let g:monster#debug#enable = 1

" let g:gen_tags#ctags_auto_gen = 1
" let g:gen_tags#gtags_auto_gen = 1
call deoplete#custom#var('omni', 'input_patterns', {
    \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
\})

let g:deoplete#enable_at_startup = 1
" let g:LanguageClient_autoStart = 1
"    \ 'ruby': ['language_server-ruby'],
" \ 'typescript': ['javascript-typescript-stdio'],
" \ 'javascript': ['javascript-typescript-stdio'],
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['solargraph', 'stdio'],
    \ 'javascript': ['typescript-language-server', '--stdio'],
    \ 'python': ['pyls'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor'
    let g:unite_source_grep_recursive_opt = ''

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
                \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
                \ }
endif

let g:syntastic_check_on_wq = 0

let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'
" slashmili/alchemist.vim
let g:alchemist_tag_disable = 1

" Add or remove your plugins here:
" if executable('ag')
"     set grepprg=ag\ --nogroup\ --nocolor
"     set grepformat=%f:%l:%m
"     let g:unite_source_grep_command = 'ag'
"     let g:unite_source_grep_default_opts = '--nogroup --nocolor'
"     let g:unite_source_grep_recursive_opt = ''
" endif


" ファイラー関連
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_preview_action= 'tabopen'

" Enable snipMate compatibility feature.ｲ!
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/snippets/snippets'

" QuickFixウィンドウでもプレビューや絞り込みを有効化
let QFixWin_EnableMode = 1

let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ }

" インサートモード時に有効化
""call dein#add('Shougo/neocomplete.vim', { 'on_i': 1 })

" ファイルタイプ別
" let g:syntastic_enable_perl_checker = 1
" let g:syntastic_perl_checkers = ['perl', 'perlcritic', 'podchecker']

"set rtp^=$GOPATH/src/github.com/nsf/gocode/vim
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

autocmd BufRead,BufNewFile *.ts set filetype=typescript
autocmd BufRead,BufNewFile *.tsx set filetype=typescript

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

noremap :cp :CtrlP

noremap :um :Unite file_mru -buffer-name=file_mru
noremap :ct :Unite tag -input=
noremap :ut :Unite tab -input=
noremap :fs :Unite file source
noremap :gr :Unite gtags/ref -input=
noremap :gd :Unite gtags/def -input=
noremap :gg :Unite gtags/grep 
noremap :gc :Unite gtags/completion -input=
noremap :gf :Unite gtags/file -input=
noremap :ag :tabnew <CR>:grep
noremap :ts :tabnew <CR>:ts
noremap :tm :tabnew <CR>:terminal

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


set t_Co=256
set expandtab
set tabstop=4
set shiftwidth=4 "自動インデントでずれる幅

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
set clipboard+=unnamedplus
" if has('unnamedplus')
"    set clipboard& clipboard+=unnamedplus
" else
"     set clipboard& clipboard+=unnamed,autoselect
" endif
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

" Perl用設定
autocmd BufNewFile,BufRead *.psgi   set filetype=perl
autocmd BufNewFile,BufRead *.t      set filetype=perl

""noremap  gf <C-w>gf
""vnoremap gf <C-w>gf

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

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

" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

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


" Commands 
    command! -range BlockDiff1 :<line1>,<line2>call BlockDiff_GetBlock1() 
    command! -range BlockDiff2 :<line1>,<line2>call BlockDiff_GetBlock2()
" ---------- Code -------------------------------------------------------------
fun! BlockDiff_GetBlock1() range
  let s:regd = @@
  " copy selected block into unnamed register
  exe a:firstline . "," . a:lastline . "y"
  " save block for later use in variable
  let s:block1 = @@
  " restore unnamed register
  let @@ = s:regd
endfun

fun! BlockDiff_GetBlock2() range
  let s:regd = @@
  exe a:firstline . "," . a:lastline . "y"

  " Open new tab, paste second selected block
  tabnew
  normal P
  " to prevent 'No write since last change' message:
  se buftype=nowrite
  diffthis

  " vsplit left for first selected block
  lefta vnew
  " copy first block into unnamed register & paste
  let @@ = s:block1
  normal P
  se buftype=nowrite

  " start diff
  diffthis

  " restore unnamed register
  let @@ = s:regd
endfun



" tab表示部
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2
" }}}

" ついになるものを補完
" inoremap { {}<LEFT>
" inoremap [ []<LEFT>
" inoremap ( ()<LEFT>
" inoremap " ""<LEFT>
" inoremap ' ''<LEFT>
" inoremap ' ''<LEFT>
" inoremap < <><LEFT>


" ctrl +space
"" imap <Nul> <C-x><C-]>
imap <C-Space> <C-x><C-]>

tnoremap <silent> <ESC> <C-\><C-n>

nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
vnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
vnoremap <silent> <C-p> "0p<CR>


" wget https://gist.githubusercontent.com/luan/6362811/raw/bfdf372168a5d5b97402a70f080f150218fe5044/Hybrid.itermcolors
" g
" mkdir -p ~/.vim/colors
" mv vim-hybrid ~/.vim/colors
" colorscheme hybrid

" vimdiffの色設定
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21

filetype plugin indent on
syntax on


