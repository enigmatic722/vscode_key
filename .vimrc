let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
set nossl

set novisualbell
set nocompatible
filetype plugin on
runtime macros/matchit.vim

""colorscheme industry
set wildcharm=<C-n>
set cursorline
nnoremap cu :set cursorline! <CR>
set shell=powershell
set shellcmdflag=-command
set autochdir
set splitright
set splitbelow
set matchpairs+=<:>
set omnifunc=syntaxcomplete#Complete
set suffixesadd=.java
set path+=**
set nu rnu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufNewFile,BufRead * setlocal formatoptions-=ro
""autocmd BufRead,BufNewFile *.jsp set filetype=html
autocmd BufRead *.class set syntax=java
autocmd! FileType json set filetype=jsonc

autocmd! BufNewFile *.java exe "normal ipublic class " . expand('%:t:r') . " {\n\n\<Esc>gg"
autocmd! BufRead *.java if getfsize(expand('%'))==0|exe "normal ipublic class " . expand('%:t:r') . " {\n\n\<Esc>gg"|endif
noremap <C-z> <Esc>
noremap <C-m> %
nnoremap <home> ^
inoremap <home> <c-o>^

nnoremap <C-n> :set rnu!<cr>
nnoremap <A-i> :tabr<CR>
nnoremap <A-;> :tabl<CR>
nnoremap tt gt
nnoremap tn :tabnew 
nnoremap ti :tabr<CR>
nnoremap t; :tabl<CR>
nnoremap <A-r> <C-r>
nnoremap <A-m> J
nnoremap <A-left> <C-o>
nnoremap <A-right> <C-i>
nnoremap g. <C-i>
nnoremap g, <C-o>
nnoremap <A-right> <C-i>
nnoremap <C-k> [c
nnoremap <C-j> ]c
noremap <A-c> y
inoremap <C-o>o <Esc>o
inoremap <C-o>O <Esc>O
command! P normal! p
nnoremap <leader>c  :windo diffthis<cr>
command! Off normal! :diffoff!<cr>

noremap <A-b> <C-b>
noremap <A-v> <C-v>
inoremap <A-v> <C-v>

if !exists('g:lasttab')
  let g:lasttab = 1
endif
""nmap gl :exe "tabn ".g:lasttab<CR>
""au TabLeave * let g:lasttab = tabpagenr()

" noremap <A-o> :Gj 
nnoremap co :copen<cr>

set fileencodings=utf-8,big5,gbk,latin1
set encoding=utf-8
set ignorecase
set laststatus=2
set autoread
set nowrap
"set list listchars=tab:\:\ ,trail:·,extends:?,precedes:?,nbsp:×
set ai
"set ruler
set hlsearch
set background=dark
set termguicolors
set laststatus=2

"set virtualedit=block # visual block
set iskeyword+=\$
syntax on
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

nnoremap dl ^"_D
nnoremap d "_d
nnoremap D "_D
nnoremap x "_x
nnoremap s "_s
nnoremap c "_c
vnoremap d "_d
vnoremap c "_c
nnoremap <A-UP> :m-2<CR> 
nnoremap <A-DOWN> :m+1<CR> 
nnoremap <F3> :set nonumber!<CR>
nnoremap <leader>w :set wrap!<cr>
nnoremap <leader>h :noh<cr>
nnoremap <F5> :set paste!<CR>
" nnoremap o ox<BS><Esc>
" nnoremap O Ox<BS><Esc>
nnoremap o o<Space><BS><Esc>
nnoremap O O<Space><BS><Esc>
vnoremap y "*y
nnoremap y "*y
nnoremap Y "*y$ 
nnoremap y" "*yi"
nnoremap y( "*yi(
nnoremap y' "*yi'
nnoremap y< "*yi<
nnoremap y{ "*yi{
nnoremap y[ "*yi[
noremap p "*p
""nnoremap <C-p> "_cw<C-r>*<Esc>b
nnoremap gp "_cw<C-r>*<Esc>b
noremap P "*P
vnoremap x "*x
nnoremap yd "*d
nnoremap yD "*D
nnoremap yc "*c
nnoremap yC "*C
vnoremap v( vi(
vnoremap v' vi'
"vnoremap v< vi<
vnoremap v{ vi{
vnoremap v[ vi[
vnoremap " c""<Esc>P
vnoremap ' c''<Esc>P
vnoremap ( c()<Esc>P
vnoremap { c{}<Esc>P
vnoremap [ c[]<Esc>P
nnoremap gs i~~<C-o>A~~<Esc>
vnoremap gs c~~~~<esc><left><left>p
"nnoremap gh i**<C-o>A**<Esc>
"nnoremap gh i**<C-o>E<Right>**<Esc>B
nnoremap gh ciW****<Left><Left><C-o>P<Esc>
vnoremap gh c****<Esc><Left>P
nnoremap dh F*a<C-w><C-o>f*<Del><Del><Esc>
"vnoremap < c<><Esc>P
vnoremap < <gv
vnoremap > >gv

" inoremap jk <ESC>
nnoremap <Tab> :><CR>
nnoremap <S-Tab> :<<CR>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
"maybe for mac or linux
"noremap dT dvT
" tab series
"command T -nargs=1 :tabnew +<args>buf
"nnoremap T :tabnew\|0r!grep -n '' #<Left><Left><Left>
"command! -nargs=1 T :args <args> | tab all

""tabs
nnoremap <silent> <A-S-i> :tabm 0 <CR>
nnoremap <silent> <A-S-m> :execute 'tabm' tabpagenr('$') <CR>
"nnoremap tmi :tabm 0 <CR>
"nnoremap tm; :execute 'tabm' tabpagenr('$') <CR>
nnoremap <M-l> gt
nnoremap <M-h> gT
nnoremap <C-left> :tabm -1 <CR>
nnoremap <C-right> :tabm +1 <CR>
nnoremap <silent> th :tabm -1 <CR>
nnoremap <silent> tl :tabm +1 <CR>
nnoremap <silent> tmi :tabm 0 <CR>
nnoremap <silent> tm; :tabm <CR>
"close others
nnoremap <silent> tco :tabo <CR>

nnoremap <A-j> ]m
nnoremap <A-k> [m
"nnoremap <C-f> :Find 
"nnoremap f /\<\><Left><Left>
command! -nargs=1 F normal! /\<<args>\>/<CR>
nnoremap <leader>x "*x
nnoremap <leader>d "*d
nnoremap <leader>D "*D
nnoremap <leader>c "*c
nnoremap <leader>C "*C
" xnoremap <leader>d "_d
"xnoremap <leader>p "_dP

""Replace Commands
command! -nargs=1 Gj vimgrep <q-args> % | copen
vnoremap <C-r> "hy:%s/<C-r>h//gcI<left><left><left>
"nnoremap cpq ggw"*yt;o.<c-r>=expand('%:r')<Cr><Esc>^P^"*y$u
nnoremap cpq gg^w"*yt;:let @+ .= ".".expand("%:r")<cr>
nnoremap cpp i<space><c-r>=expand('%:r')<Cr><space>
nnoremap cpd :let @+ = expand("%:p:h")<cr>
nnoremap cpf :let @+ = expand("%:p")<cr>
nnoremap cpn :let @+ = expand("%")<cr>
command! Cpf normal! :let @+ = expand("%")<cr>
command! Cpd normal! :let @+ = expand("%:p")<cr>
command! Pd normal! i<c-r>=expand('%:p')<Cr>
command! Pn normal! i<c-r>=expand('%:r')<Cr>
command! Pf normal! i<c-r>=expand('%')<Cr>
command! Grp %s/.*\n.*\n/\0\r/g
command! Bs %s/\\/\//g "reverse backslash
command! -range=% Dbl :<line1>,<line2>g/^\s*$/d  "delete blank line
command! -range=% Db :<line1>,<line2>s/^\d*//g  "delete blank line
command! -range=% Trl :<line1>,<line2>s/\s\+$//e "delete blank 
command! -range=% Trh :<line1>,<line2>s/^\s\+//e "delete blank 
command! -range=% B :<line1>,<line2>s/\S\s\zs\s\+//e " 第一個非空白後的第一個空白後(\zh)，開始把空白刪除
command! -range=% B1 :<line1>,<line2>s/\S\zs\s\+/  /e " 第一個非空白後的第一個空白後(\zh)，開始把空白刪除
command! -range=% To1Blank :<line1>,<line2>s/\s\+/\ /g " 將多個空白取代為1個空白 
"command! Dbl g/^\s*$/d "delete blank line
command! Edq %s/\"/\\\"/g "escape double quote
command! -nargs=1 Lh %s/^\w\@=/<args>/g 
command! -nargs=1 Ll %s/$/<args>/g
command! -nargs=1 Ss let @/ = escape(<q-args>, '/')|normal! /<C-R>/<CR>
command! -nargs=1 Hh normal! /.*<args>/g<CR>
command! -nargs=1 Ht normal! /<args>.*/g<CR>
command! -nargs=1 Hl normal! /.*<args>/g<CR>
command! -nargs=1 Ha normal! /<args>\S\+/<CR>
command! -nargs=1 Hb normal! /\S\+<args>/<CR>
command! -nargs=1 Hc normal! /\S\+<args>\S*/<CR>
"command! -nargs=+ Hcc /\%>0c\%<split(<q-args>, ' ')[0]c 
command! -nargs=+ Hcc call Hcc (<f-args>)
function! Hcc(...)
    let arg1 = get(a:, 1, 0)
    let arg2 = get(a:, 2, 0)
    if a:0 == 2
		let pattern = '\%>'. arg1 . 'c' . '\%<' . arg2 . 'c'   
		let @/ = pattern
		call feedkeys("/\<CR>")
       " execute printf("normal /\\%%>%sc\\%%<%sc\<CR>", arg1, arg2)
    else
        let pattern = '\%>'. arg1 . 'c' 
		let @/ = pattern
		call feedkeys("/\<CR>")
    endif
endfunction


"nnoremap <S-s> :sort // r<CR> 
"nnoremap <C-s> :sort! // r<CR> 

command! -nargs=1 D %s/<args>//gcI
"command! -nargs=1 Db ,$s/<args>//gcI

vnoremap r :s///g<left><left><left>
nnoremap R :R args 
command! -nargs=+ R call R (<f-args>)
function! R(arg0, ...)
    let arg1 = get(a:, 1, 0)
    let arg2 = get(a:, 2, 0)
    if a:0 == 2
        execute printf('%%substitute/%s/%s/gcI', arg1, arg2)
    elseif a:0 == 1
        execute printf('%%substitute//%s/gcI', arg1)
	else
        execute printf('%%s///gcI')
    endif
endfunction

command! -nargs=+ Rb call Rb (<f-args>)
function! Rb(...)
    let arg1 = get(a:, 1, 0)
    let arg2 = get(a:, 2, 0)
    if a:0 == 2
        execute printf(',$substitute/%s/%s/gcI', arg1, arg2)
    else
        execute printf(',$substitute//%s/gcI', arg1)
    endif
endfunction

command! -nargs=+ Rbw call Rbw (<f-args>)
function! Rbw(...)
    let arg1 = get(a:, 1, 0)
    let arg2 = get(a:, 2, 0)
    if a:0 == 2
        execute printf(',$substitute/\<%s\>/%s/gcI', arg1, arg2)
    else
        execute printf(',$substitute//%s/gcI', arg1)
    endif
endfunction

command! -nargs=1 Rl s//<args>/gcI

command! -nargs=+ Rw call Rw (<f-args>)
function! Rw(...)
    let arg1 = get(a:, 1, 0)
    let arg2 = get(a:, 2, 0)
    if a:0 == 2
        execute printf('%%substitute/\<%s\>/%s/gcI', arg1, arg2)
    else
        execute printf('%%substitute//%s/gcI', arg1)
    endif
endfunction

command! -nargs=+ Dh call Dh(<f-args>)
function! Dh( ... )
	let arg1 = get(a:, 1, 0)
    let arg2 = get(a:, 2, 0)
    if a:0 == 2
		execute printf('%%substitute/.*%s/%s/g', a:1, a:2)
    else
	    execute printf('%%substitute/.*%s//g', a:1)
    endif
endfunction

command! -nargs=+ Dbw call Dbw(<f-args>)
function! Dbw( ... )
    let arg1 = get(a:, 1, 0)
    let arg2 = get(a:, 2, 0)
    if a:0 == 2
        execute printf('%%substitute/.*\<%s\>/%s/g', a:1, a:2)
    else
        execute printf('%%substitute/.*\<%s\>/%s/g', a:1, a:1)
    endif
endfunction

command! -nargs=+ Da call Da(<f-args>) 
function! Da( ... )
    let arg1 = get(a:, 1, 0)
    let arg2 = get(a:, 2, 0)
    if a:0 == 2
		execute printf('%%substitute/%s.*/%s/g', a:1, a:2)
    else
		execute printf('%%substitute/%s.*//g', a:1)
    endif	
endfunction

command! -nargs=+ Daw call Daw(<f-args>)
function! Daw( ... )
    let arg1 = get(a:, 1, 0)
    let arg2 = get(a:, 2, 0)
    if a:0 == 2
        execute printf('%%substitute/\<%s\>.*/%s/g', a:1, a:2)
    else
        execute printf('%%substitute/\<%s\>.*//g', a:1)
    endif
endfunction

command! -nargs=1 Fil v/.*<args>/d
command! -nargs=1 Filn g/.*<args>/d
command! -nargs=1 Filw v/.*\<<args>\>/d
command! -nargs=1 Filwn g/.*\<<args>\>/d

command! -nargs=1 Dg g/<args>/d
command! -nargs=1 Dv v/<args>/d

""""""""""Close Tabs
command! BufCurOnly silent! execute '%bd|e#|bd#'
function! OnlyAndNerdtree()
    let currentWindowID = win_getid()
    windo if win_getid() != currentWindowID && &filetype != 'nerdtree' | close | endif
endfunction
command! Only call OnlyAndNerdtree()

function! TabCloseRight(bang)
    let cur=tabpagenr()
    while cur < tabpagenr('$')
        exe 'tabclose' . a:bang . ' ' . (cur + 1)
    endwhile
endfunction

function! TabCloseLeft(bang)
    while tabpagenr() > 1
        exe 'tabclose' . a:bang . ' 1'
    endwhile
endfunction

command! -bang Tcl call TabCloseRight('<bang>')
command! -bang Tcr call TabCloseLeft('<bang>')
nnoremap tci :Tcr<cr>
nnoremap tc; :Tcl<cr>
""""""""""

function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

" hide netrw top message
let g:netrw_banner=0
" tree listing by default
let g:netrw_liststyle=3
" hide vim swap files
let g:netrw_list_hide='.*\.swp$'
" open files in left window by default
let g:netrw_chgwin=3
let g:netrw_browse_split = 3
let g:netrw_winsize = 20
let g:netrw_altv = 1
let g:netrw_preview = 1
let g:netrw_alto = 0


"""keymaping
function! NetrwMapping()
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
    noremap <buffer> <Leader>r <C-l>
    noremap <buffer> <C-l> gt
    "nnoremap <buffer> <C-r> <C-l>
    nmap <buffer> H u
    ""nmap <buffer> h -^
    nmap <buffer> l <CR>
    nmap <buffer> . gh
    nmap <buffer> P <C-w>z
    nmap <buffer> L <CR>:Lexplore<CR>
    nmap <buffer> ti :tabr<CR>
    nmap <buffer> t; :tabl<CR>
    nmap <buffer> tci :Tcr<cr>
    nmap <buffer> tc; :Tcl<cr>
    nmap <buffer> <C-j> ]c
    "nmap <buffer> <Leader>dd :Lexplore<CR>
endfunction


""Plugin
set runtimepath^=~/.vim/bundle/java-syntax.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/delimitMate.vim


""Plugin_delimitMate
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1


"""Plugin_CtrlP
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.class 
set wildignore+=**/target/**
set wildignore+=**/node_modules/**
let g:ctrlp_extensions = ['buffertag']
let g:ctrlp_custom_ignore = {
  \ 'dir':  'target',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
	\ 'AcceptSelection("h")': ['<a-x>', '<c-x>'],
	\ 'AcceptSelection("v")': ['<a-v>', '<c-v>', '<RightMouse>'],
    \ }

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_multiple_files = 'tj'
"""


"TabLine only file name
set showtabline=2

""""""""""""""" tabline
set tabline=%!MyTabLine()
function MyTabLine()
  let s = '' " complete tabline goes here
  " loop through each tab page
  for t in range(tabpagenr('$'))
    " select the highlighting for the buffer names
    if t + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    " empty space
    let s .= ' '
    " set the tab page number (for mouse clicks)
    let s .= '%' . (t + 1) . 'T'
    " set page number string
    let s .= t + 1 . ' '
    " get buffer names and statuses
    let n = ''  "temp string for buffer names while we loop and check buftype
    let m = 0 " &modified counter
    let bc = len(tabpagebuflist(t + 1))  "counter to avoid last ' '
    " loop through each buffer in a tab
    for b in tabpagebuflist(t + 1)
      " buffer types: quickfix gets a [Q], help gets [H]{base fname}
      " others get 1dir/2dir/3dir/fname shortened to 1/2/3/fname
      if getbufvar( b, "&buftype" ) == 'help'
        let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
      elseif getbufvar( b, "&buftype" ) == 'quickfix'
        let n .= '[Q]'
      else
        "let n .= pathshorten(bufname(b))
        let n .= bufname(b)
      endif
      " check and ++ tab's &modified count
      if getbufvar( b, "&modified" )
        let m += 1
      endif
      " no final ' ' added...formatting looks better done later
      if bc > 1
        let n .= ' '
      endif
      let bc -= 1
    endfor
    " add modified label [n+] where n pages in tab are modified
    if m > 0
      "let s .= '[' . m . '+]'
      let s.= '+ '
    endif
    " add buffer names
    if n == ''
      let s .= '[No Name]'
    else
      "let s .= n
      let s .= fnamemodify(n, ":t") 
    endif
    " switch to no underlining and add final space to buffer list
    "let s .= '%#TabLineSel#' . ' '
    let s .= ' '
  endfor
  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'
  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999XX'
  endif
  return s
endfunction
