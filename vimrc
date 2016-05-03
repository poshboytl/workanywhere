if &compatible
  set nocompatible               " Be iMproved
endif

call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
Plug 'Shutnik/jshint2.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-ruby/vim-ruby'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-repeat'
Plug 'tsukkee/unite-tag'
Plug 'wting/gitsessions.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'gcmt/taboo.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'keith/swift.vim'
Plug 'mikewest/vimroom'
Plug 'sjl/gundo.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'einars/js-beautify'
"Plug 'ervandew/supertab'
Plug 'groenewege/vim-less'
Plug 'ujihisa/unite-colorscheme'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'kchmck/vim-coffee-script'
"Plug 'kien/ctrlp.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'mattn/emmet-vim'
Plug 'romainl/flattened'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/gitignore'
Plug 'elzr/vim-json'
"colors
Plug 'tomasr/molokai'
Plug 'vim-scripts/pyte'
Plug 'vim-scripts/summerfruit256.vim'
Plug 'dsolstad/vim-wombat256i'
Plug 'vim-scripts/wombat256.vim'

call plug#end()


filetype plugin indent on
syntax enable

" jshint2
let jshint2_save = 1
let jshint2_max_height = 12


" gitgutter
let g:gitgutter_diff_args = '--ignore-all-space --ignore-blank-lines'

let g:python_host_prog = '/usr/local/bin/python2.7'
let g:session_autosave = 'no'
let g:python2_host_prog = '/usr/local/bin/python2.7'
let g:python3_host_prog = '/usr/local/bin/python3.5'

let g:gundo_preview_height = 30
let g:gundo_right = 1
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:syntastic_json_checkers = ['jsonlint']
let g:vim_json_syntax_conceal = 0
set guioptions-=L
set guioptions-=r 
let mapleader = "\<space>"
let g:mapleader = "\<space>"
let g:EasyGrepWindowPosition = "botright"
" Use deoplete.
let g:deoplete#enable_at_startup = 1
" 
set noshowmode
set autoread
set iskeyword=@,$,48-57,192-255,_
let g:lightline = {
            \ 'colorscheme': 'landscape',
            \ 'component': {
            \       'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
            \       'modified': '%{&filetype=="help"?"":&modified?"✍":&modifiable?"":"✗"}',
            \       'lineinfo': '✈ %l'
            \   },
            \ 'component_visible_condition': {
            \       'readonly': '(&filetype!="help"&& &readonly)',
            \       'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
            \       'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
            \ },
            \ 'component_function': {
            \       'fugitive': 'MyFugitive',
            \       'filename': 'MyFilename'
            \ },
            \ 'active': {
            \       'left': [ 
            \           ['lineinfo',  'fileencoding'],
            \           ['filename','readonly', 'modified' ] 
            \       ],
            \   'right': [ [ 'mode' ],
            \              [  'paste' ]
            \          ]
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }


let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" nerdtree
let g:NERDTreeWinPos = "bottom"
"let g:nerdtree_tabs_open_on_console_startup = 0
"let g:nerdtree_tabs_focus_on_files = 1
"let g:nerdtree_tabs_autofind = 1
set autochdir
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
nnoremap <leader>f :<C-u>NERDTree<CR>
"nnoremap <leader>e :<C-u>NERDTree .<CR>\|:wincmd p<CR>

" session
map <leader>ss :SaveSession 
map <leader>sl :OpenSession 
map <leader>sr :RestartVim 
inoremap <silent><expr> <s-tab>
    \ pumvisible() ? "\<c-p>" :
    \ "\<s-tab>"
inoremap <silent><expr> <tab>
    \ pumvisible() ? "\<c-n>" :
    \ "\<tab>"
inoremap <silent><expr> <s-tab> "\<c-n>"

" taboo
let g:taboo_tab_format=" %N %f%m |"

" snips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

let g:auto_save = 0  " enable AutoSave on Vim startup

" ctrlp
"let g:ctrlp_custom_ignore = {
            "\ 'dir':  '\v[\/]((\.(git|hg|svn))|(bower_components|node_modules|target))$',
            "\ 'file': '\v\.(exe|so|dll)$',
            "\ 'link': 'some_bad_symbolic_links',
            "\ }
"nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <c-b> :CtrlPBuffer<CR>
"inoremap <c-b> <ESC>:CtrlPBuffer<CR>
"let g:ctrlp_use_caching = 0
"if executable('ag')
    "set grepprg=ag\ --nogroup\ --nocolor

    "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"else
  "let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  "let g:ctrlp_prompt_mappings = {
    "\ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    "\ }
"endif


autocmd Filetype ruby,coffee,sass,scss,jade,erb setlocal ts=2 sw=2 expandtab
" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,erb,css,less,sass,scss EmmetInstall
autocmd FileType html,erb,css,less,sass,scss imap <buffer> <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


" markdown
let g:vim_markdown_folding_disabled=1

"inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


autocmd FileType ruby nnoremap <F5> :!ruby %<cr>
autocmd FileType ruby inoremap <F5> <ESC>:!ruby %<cr>
autocmd FocusLost * silent! wa
let g:session_autoload = 'no'

" tab
map <leader>1 :tabnext 1<cr>
map <leader>2 :tabnext 2<cr>
map <leader>3 :tabnext 3<cr>
map <leader>4 :tabnext 4<cr>
map <leader>5 :tabnext 5<cr>
map <leader>6 :tabnext 6<cr>
map <leader>7 :tabnext 7<cr>
map <leader>8 :tabnext 8<cr>
map <leader>9 :tabnext 9<cr>
map <leader><tab> :tabnext<cr>
nnoremap <C-T> :tabnew %:p:h<CR>

" fold
set foldenable
set foldlevel=10
set foldmethod=indent
set foldnestmax=5
nnoremap <space><space> za
vnoremap <space><space> zf
"autocmd FileType javascript call JavaScriptFold()

" beautify
autocmd FileType css noremap <buffer> <C-l> mz<C-U>:call CSSBeautify()<cr>`z<ESC>zz
autocmd FileType css noremap <buffer> <C-h> :call CssLint()<cr>
autocmd FileType html noremap <buffer> <C-l> mz<C-U>:call HtmlBeautify()<cr>`z<ESC>zz
autocmd FileType html noremap <buffer> <C-h> :call HtmlLint()<cr>
autocmd FileType javascript noremap <buffer>  <C-l> mz<C-U>:call JsBeautify()<cr>`z<ESC>zz
autocmd FileType javascript noremap <buffer>  <C-h> :JSHint()<cr>

" omni
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags



"encoding
set encoding=utf8
scriptencoding utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb18030,big5,euc-jp,euc-kr,latin1
autocmd BufNewFile,BufRead *.git/{,modules/**/}{COMMIT,MERGE}* set fenc=utf8



" better
set lazyredraw
map q: :q
"vnoremap <silent> y y`]
"vnoremap <silent> p p`]
"nnoremap <silent> p p`]
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
function! ClipboardYank()
    call system('pbcopy', @@)
endfunction
function! ClipboardPaste()
    let @@ = system('pbpaste')
endfunction

"vnoremap <silent> y y:call ClipboardYank()<cr>
"vnoremap <silent> d d:call ClipboardYank()<cr>
"nnoremap <silent> p :call ClipboardPaste()<cr>p
"onoremap <silent> y y:call ClipboardYank()<cr>
"onoremap <silent> d d:call ClipboardYank()<cr>
noremap ;; :%s:::g<Left><Left><Left>
noremap ;' :%s:::cg<Left><Left><Left><Left>
autocmd BufReadPost,FileReadPost *.jsx set syntax=javascript filetype=javascript
autocmd BufReadPost,FileReadPost *.vm set syntax=html filetype=html
map 0 ^
map j gj
map k gk
nnoremap Y "+y
nnoremap <silent><S-b> :<C-u>call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><S-w> :<C-u>call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%$','W')<CR>
noremap <C-S> :w<CR>
vnoremap <C-T> :tabnew %:p:h<CR>
noremap <F11> <C-u>:wincmd o<CR>
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif " Return to last edit position when opening files (You want this!)
set autoindent
set nosmartindent
set nocindent
set backspace=eol,start,indent
set background=light
"set completeopt=menuone
set expandtab
set listchars=tab:>·
set fileformats=unix,dos,mac
set history=10000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lbr
set mat=2
set mouse=
if has('mouse') | set mouse=a | endif
set mousemodel=extend
set nobackup
set switchbuf=usetab
set nolinebreak
set noswapfile
set nowb
set nowrap
set pastetoggle=<F4>
set relativenumber
set number
set sessionoptions-=buffers
set sessionoptions-=options
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set splitbelow
set splitright
set tabstop=4
set undodir=/Users/frank/.vim/undodir/
set undofile
set viminfo^=% " Remember info about open buffers on close

" wild
set whichwrap+=<,>,h,l
set wildignore=*.o,*~,*.pyc
set wildmenu
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <M-`> :b <C-Z>


if has("gui_running")
    set guifont=Sauce\ Code\ Powerline:h13
endif

" colorscheme
colorscheme molokai 
let g:molokai_original = 1
set colorcolumn=120
hi MatchParen term=reverse cterm=bold ctermfg=red ctermbg=none gui=bold guifg=#000000 guibg=#FD971F
map <F11> :let &background = ( &background == "dark"? "light" : "dark" )<CR>


" status line
if has("statusline")
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

" Set a nicer foldtext function

function! MyFilename()
    let t = ('' != expand('%:t'))
    if(t)
        let p = expand('%:p')
        let r =p
    else
        let r = '[No Name]'
    endif
    return r
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
  endif
  return ''
endfunction

function! HtmlLint()
    silent !clear
    execute "!/Users/frank/bin/html5-lint/html5check.py " . expand("%:p")
endfunction

function! CssLint()
    silent !clear
    execute "!csslint --format=compact " . expand("%:p")
endfunction

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir
set undolevels=1000         " How many undos
set undoreload=20000        " number of lines to save for undo

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

"Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
"call unite#custom#source('file_rec/async','sorters','sorter_rank', )
" replacing unite with ctrl-p
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_prompt='> '
let g:unite_split_rule = 'botright'
if executable('ag')
    let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts =
	\ '-i --vimgrep --hidden --ignore ' .
	\ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
	let g:unite_source_grep_recursive_opt = ''

    let g:unite_source_find_command = 'ag'
    let g:unite_source_find_default_opts = '--nocolor --nogroup --follow'
    let g:unite_source_rec_async_command =
            \ ['ag', '--follow', '--nocolor', '--nogroup',
    \  '--hidden', '-g', '']
    let g:unite_source_file_async_command = 'ag --nocolor --nogroup -g -l ""'
    let g:unite_source_rec_git_command = ['ag', '--nocolor', '--nogroup', '-g', '']
    let g:unite_source_grep_recursive_opt=''
endif
nnoremap <silent> <c-p> :UniteWithProjectDir -no-split file_rec/async:!<cr>
nnoremap <silent> <c-b> :Unite  buffer<cr>
nnoremap <silent> <c-g> :UniteWithProjectDir  grep:.<cr>
" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  nmap <buffer> <ESC>   <Plug>(unite_exit)
endfunction
autocmd FileType nerdtree call s:nerdtree_settings()
function! s:nerdtree_settings()
  " Play nice with supertab
  " Enable navigation with control-j and control-k in insert mode
  nmap <buffer> <ESC>   :NERDTreeClose<CR>
  nmap <buffer> <c-c>   :NERDTreeClose<CR>
  nmap <buffer> `   :NERDTreeClose<CR>
endfunction

augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END
" tmux
if exists('$TMUX')
  set term=screen-256color
endif
