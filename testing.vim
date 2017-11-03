let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplete_auto_refresh) =neocomplete#mappings#refresh()
inoremap <silent> <Plug>(neocomplete_start_manual_complete) =neocomplete#mappings#manual_complete()
inoremap <silent> <Plug>(neocomplete_start_auto_complete) =neocomplete#mappings#auto_complete()
inoremap <silent> <Plug>(neocomplete_start_omni_complete) 
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_quick_match) unite#sources#neocomplete#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_complete) unite#sources#neocomplete#start_complete()
xmap S <Plug>VSurround
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <F11> :call conque_term#exec_file()
nnoremap <SNR>40_: :=v:count ? v:count : ''
nnoremap <F5> :w:!./build.sh
nnoremap <F4> :make!
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr> 	 pumvisible() ? "\" : "\	"
imap  <Plug>Isurround
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set cinoptions=(0
set completeopt=preview,menuone
set expandtab
set exrc
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=cqt
set helplang=en
set ignorecase
set laststatus=2
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set makeprg=make\ -j9
set omnifunc=CompleteR
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-airline,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-fugitive,~/.vim/bundle/tabular,~/.vim/bundle/desert256-transparent,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/Nvim-R,~/.vim/bundle/neocomplete,~/.vim/bundle/julia-vim,~/.vim/bundle/Conque-Shell,~/.vim/bundle/latex-box,~/.vim/bundle/vim-surround,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/Vundle.vim/,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/tabular/after,~/.vim/bundle/desert256-transparent/after,~/.vim/bundle/vim-colors-solarized/after,~/.vim/bundle/Nvim-R/after,~/.vim/bundle/neocomplete/after,~/.vim/bundle/julia-vim/after,~/.vim/bundle/Conque-Shell/after,~/.vim/bundle/latex-box/after,~/.vim/bundle/vim-surround/after
set scrolloff=5
set secure
set shiftwidth=2
set smartcase
set softtabstop=2
set splitbelow
set splitright
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=2
set textwidth=80
set ttimeoutlen=50
set window=60
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/BERD/berd009_ropensci_cregulomereview
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 install_and_test.Rmd
badd +1 DE
badd +40 lib/cRegulome/DESCRIPTION
badd +0 lib/cRegulome/vignettes/case_study.Rmd
argglobal
silent! argdel *
$argadd install_and_test.Rmd
set stal=2
edit install_and_test.Rmd
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 115 + 173) / 347)
exe 'vert 2resize ' . ((&columns * 115 + 173) / 347)
exe 'vert 3resize ' . ((&columns * 115 + 173) / 347)
argglobal
noremap <buffer> <silent> ,gN :call b:PreviousRChunk()
noremap <buffer> <silent> ,gn :call b:NextRChunk()
noremap <buffer> <silent> ,ca :call b:SendChunkToR("echo", "down")
noremap <buffer> <silent> ,cd :call b:SendChunkToR("silent", "down")
noremap <buffer> <silent> ,ce :call b:SendChunkToR("echo", "stay")
noremap <buffer> <silent> ,cc :call b:SendChunkToR("silent", "stay")
vnoremap <buffer> <silent> ,kn :call RKnit()
nnoremap <buffer> <silent> ,kn :call RKnit()
onoremap <buffer> <silent> ,kn :call RKnit()
vnoremap <buffer> <silent> ,rd :call RSetWD()
nnoremap <buffer> <silent> ,rd :call RSetWD()
onoremap <buffer> <silent> ,rd :call RSetWD()
vnoremap <buffer> <silent> ,ko :call RMakeRmd("odt")
nnoremap <buffer> <silent> ,ko :call RMakeRmd("odt")
onoremap <buffer> <silent> ,ko :call RMakeRmd("odt")
vnoremap <buffer> <silent> ,kh :call RMakeRmd("html_document")
nnoremap <buffer> <silent> ,kh :call RMakeRmd("html_document")
onoremap <buffer> <silent> ,kh :call RMakeRmd("html_document")
vnoremap <buffer> <silent> ,kw :call RMakeRmd("word_document")
nnoremap <buffer> <silent> ,kw :call RMakeRmd("word_document")
onoremap <buffer> <silent> ,kw :call RMakeRmd("word_document")
vnoremap <buffer> <silent> ,kl :call RMakeRmd("beamer_presentation")
nnoremap <buffer> <silent> ,kl :call RMakeRmd("beamer_presentation")
onoremap <buffer> <silent> ,kl :call RMakeRmd("beamer_presentation")
vnoremap <buffer> <silent> ,kp :call RMakeRmd("pdf_document")
nnoremap <buffer> <silent> ,kp :call RMakeRmd("pdf_document")
onoremap <buffer> <silent> ,kp :call RMakeRmd("pdf_document")
vnoremap <buffer> <silent> ,kr :call RMakeRmd("default")
nnoremap <buffer> <silent> ,kr :call RMakeRmd("default")
onoremap <buffer> <silent> ,kr :call RMakeRmd("default")
vnoremap <buffer> <silent> ,r- :call RBrOpenCloseLs(0)
nnoremap <buffer> <silent> ,r- :call RBrOpenCloseLs(0)
onoremap <buffer> <silent> ,r- :call RBrOpenCloseLs(0)
vnoremap <buffer> <silent> ,r= :call RBrOpenCloseLs(1)
nnoremap <buffer> <silent> ,r= :call RBrOpenCloseLs(1)
onoremap <buffer> <silent> ,r= :call RBrOpenCloseLs(1)
vnoremap <buffer> <silent> ,ro :call RObjBrowser()
nnoremap <buffer> <silent> ,ro :call RObjBrowser()
onoremap <buffer> <silent> ,ro :call RObjBrowser()
vnoremap <buffer> <silent> ,rb :call RAction("plotsumm", "v")
vnoremap <buffer> <silent> ,rg :call RAction("plot", "v")
vnoremap <buffer> <silent> ,rs :call RAction("summary", "v")
nnoremap <buffer> <silent> ,rb :call RAction("plotsumm")
onoremap <buffer> <silent> ,rb :call RAction("plotsumm")
nnoremap <buffer> <silent> ,rg :call RAction("plot")
onoremap <buffer> <silent> ,rg :call RAction("plot")
nnoremap <buffer> <silent> ,rs :call RAction("summary")
onoremap <buffer> <silent> ,rs :call RAction("summary")
vnoremap <buffer> <silent> ,rh :call RAction("help")
nnoremap <buffer> <silent> ,rh :call RAction("help")
onoremap <buffer> <silent> ,rh :call RAction("help")
vnoremap <buffer> <silent> ,re :call RAction("example")
nnoremap <buffer> <silent> ,re :call RAction("example")
onoremap <buffer> <silent> ,re :call RAction("example")
vnoremap <buffer> <silent> ,ra :call RAction("args")
nnoremap <buffer> <silent> ,ra :call RAction("args")
onoremap <buffer> <silent> ,ra :call RAction("args")
vnoremap <buffer> <silent> ,tp :call RAction("printtab", "v")
vnoremap <buffer> <silent> ,td :call RAction("dputtab", "v")
vnoremap <buffer> <silent> ,rv :call RAction("viewdf", "v")
vnoremap <buffer> <silent> ,rt :call RAction("str", "v")
vnoremap <buffer> <silent> ,rn :call RAction("nvim.names", "v")
vnoremap <buffer> <silent> ,rp :call RAction("print", "v")
nnoremap <buffer> <silent> ,tp :call RAction("printtab")
onoremap <buffer> <silent> ,tp :call RAction("printtab")
nnoremap <buffer> <silent> ,td :call RAction("dputtab")
onoremap <buffer> <silent> ,td :call RAction("dputtab")
nnoremap <buffer> <silent> ,rv :call RAction("viewdf")
onoremap <buffer> <silent> ,rv :call RAction("viewdf")
nnoremap <buffer> <silent> ,rt :call RAction("str")
onoremap <buffer> <silent> ,rt :call RAction("str")
nnoremap <buffer> <silent> ,rn :call RAction("nvim.names")
onoremap <buffer> <silent> ,rn :call RAction("nvim.names")
nnoremap <buffer> <silent> ,rp :call RAction("print")
onoremap <buffer> <silent> ,rp :call RAction("print")
vnoremap <buffer> <silent> ,rm :call RClearAll()
nnoremap <buffer> <silent> ,rm :call RClearAll()
onoremap <buffer> <silent> ,rm :call RClearAll()
vnoremap <buffer> <silent> ,rr :call RClearConsole()
nnoremap <buffer> <silent> ,rr :call RClearConsole()
onoremap <buffer> <silent> ,rr :call RClearConsole()
vnoremap <buffer> <silent> ,rl :call g:SendCmdToR("ls()")
nnoremap <buffer> <silent> ,rl :call g:SendCmdToR("ls()")
onoremap <buffer> <silent> ,rl :call g:SendCmdToR("ls()")
let s:cpo_save=&cpo
set cpo&vim
noremap <buffer> <silent> ,r<Right> :call RSendPartOfLine("right", 0)
noremap <buffer> <silent> ,r<Left> :call RSendPartOfLine("left", 0)
vnoremap <buffer> <silent> ,o :call RWarningMsg("This command does not work over a selection of lines.")
nnoremap <buffer> <silent> ,o :call SendLineToRAndInsertOutput()0
onoremap <buffer> <silent> ,o :call SendLineToRAndInsertOutput()0
noremap <buffer> <silent> ,d :call SendLineToR("down")0
noremap <buffer> <silent> ,l :call SendLineToR("stay")
noremap <buffer> <silent> ,ch :call SendFHChunkToR()
noremap <buffer> <silent> ,pa :call SendParagraphToR("echo", "down")
noremap <buffer> <silent> ,pd :call SendParagraphToR("silent", "down")
noremap <buffer> <silent> ,pe :call SendParagraphToR("echo", "stay")
noremap <buffer> <silent> ,pp :call SendParagraphToR("silent", "stay")
vnoremap <buffer> <silent> ,so :call SendSelectionToR("echo", "stay", "NewtabInsert")
vnoremap <buffer> <silent> ,sa :call SendSelectionToR("echo", "down")
vnoremap <buffer> <silent> ,sd :call SendSelectionToR("silent", "down")
vnoremap <buffer> <silent> ,se :call SendSelectionToR("echo", "stay")
vnoremap <buffer> <silent> ,ss :call SendSelectionToR("silent", "stay")
vnoremap <buffer> <silent> ,fa :call SendFunctionToR("echo", "down")
nnoremap <buffer> <silent> ,fa :call SendFunctionToR("echo", "down")
onoremap <buffer> <silent> ,fa :call SendFunctionToR("echo", "down")
vnoremap <buffer> <silent> ,fd :call SendFunctionToR("silent", "down")
nnoremap <buffer> <silent> ,fd :call SendFunctionToR("silent", "down")
onoremap <buffer> <silent> ,fd :call SendFunctionToR("silent", "down")
vnoremap <buffer> <silent> ,fe :call SendFunctionToR("echo", "stay")
nnoremap <buffer> <silent> ,fe :call SendFunctionToR("echo", "stay")
onoremap <buffer> <silent> ,fe :call SendFunctionToR("echo", "stay")
vnoremap <buffer> <silent> ,ff :call SendFunctionToR("silent", "stay")
nnoremap <buffer> <silent> ,ff :call SendFunctionToR("silent", "stay")
onoremap <buffer> <silent> ,ff :call SendFunctionToR("silent", "stay")
noremap <buffer> <silent> ,ba :call SendMBlockToR("echo", "down")
noremap <buffer> <silent> ,bd :call SendMBlockToR("silent", "down")
noremap <buffer> <silent> ,be :call SendMBlockToR("echo", "stay")
noremap <buffer> <silent> ,bb :call SendMBlockToR("silent", "stay")
vnoremap <buffer> <silent> ,; :call MovePosRCodeComment("selection")
nnoremap <buffer> <silent> ,; :call MovePosRCodeComment("normal")
onoremap <buffer> <silent> ,; :call MovePosRCodeComment("normal")
vnoremap <buffer> <silent> ,xu :call RSimpleCommentLine("selection", "u")
nnoremap <buffer> <silent> ,xu :call RSimpleCommentLine("normal", "u")
onoremap <buffer> <silent> ,xu :call RSimpleCommentLine("normal", "u")
vnoremap <buffer> <silent> ,xc :call RSimpleCommentLine("selection", "c")
nnoremap <buffer> <silent> ,xc :call RSimpleCommentLine("normal", "c")
onoremap <buffer> <silent> ,xc :call RSimpleCommentLine("normal", "c")
vnoremap <buffer> <silent> ,xx :call RComment("selection")
nnoremap <buffer> <silent> ,xx :call RComment("normal")
onoremap <buffer> <silent> ,xx :call RComment("normal")
vnoremap <buffer> <silent> ,rw :call RQuit('save')
nnoremap <buffer> <silent> ,rw :call RQuit('save')
onoremap <buffer> <silent> ,rw :call RQuit('save')
vnoremap <buffer> <silent> ,rq :call RQuit('nosave')
nnoremap <buffer> <silent> ,rq :call RQuit('nosave')
onoremap <buffer> <silent> ,rq :call RQuit('nosave')
vnoremap <buffer> <silent> ,rc :call StartR("custom")
nnoremap <buffer> <silent> ,rc :call StartR("custom")
onoremap <buffer> <silent> ,rc :call StartR("custom")
vnoremap <buffer> <silent> ,rf :call StartR("R")
nnoremap <buffer> <silent> ,rf :call StartR("R")
onoremap <buffer> <silent> ,rf :call StartR("R")
inoremap <buffer> <silent>  =RCompleteArgs()
inoremap <buffer> <silent> _ :call ReplaceUnderS()a
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=(0
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=>\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'rmd'
setlocal filetype=rmd
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
set foldnestmax=1
setlocal foldnestmax=1
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetRmdIndent()
setlocal indentkeys=0{,0},:,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,.
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=CompleteR
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'rmd'
setlocal syntax=rmd
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 100 - ((44 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
100
normal! 0
wincmd w
argglobal
if bufexists('lib/cRegulome/vignettes/case_study.Rmd') | buffer lib/cRegulome/vignettes/case_study.Rmd | else | edit lib/cRegulome/vignettes/case_study.Rmd | endif
vnoremap <buffer> <silent> ,kn :call RKnit()
vnoremap <buffer> <silent> ,rd :call RSetWD()
vnoremap <buffer> <silent> ,ko :call RMakeRmd("odt")
vnoremap <buffer> <silent> ,kh :call RMakeRmd("html_document")
vnoremap <buffer> <silent> ,kw :call RMakeRmd("word_document")
vnoremap <buffer> <silent> ,kl :call RMakeRmd("beamer_presentation")
vnoremap <buffer> <silent> ,kp :call RMakeRmd("pdf_document")
vnoremap <buffer> <silent> ,kr :call RMakeRmd("default")
vnoremap <buffer> <silent> ,r- :call RBrOpenCloseLs(0)
vnoremap <buffer> <silent> ,r= :call RBrOpenCloseLs(1)
vnoremap <buffer> <silent> ,ro :call RObjBrowser()
vnoremap <buffer> <silent> ,rb :call RAction("plotsumm", "v")
vnoremap <buffer> <silent> ,rg :call RAction("plot", "v")
vnoremap <buffer> <silent> ,rs :call RAction("summary", "v")
vnoremap <buffer> <silent> ,rh :call RAction("help")
vnoremap <buffer> <silent> ,re :call RAction("example")
vnoremap <buffer> <silent> ,ra :call RAction("args")
vnoremap <buffer> <silent> ,tp :call RAction("printtab", "v")
vnoremap <buffer> <silent> ,td :call RAction("dputtab", "v")
vnoremap <buffer> <silent> ,rv :call RAction("viewdf", "v")
vnoremap <buffer> <silent> ,rt :call RAction("str", "v")
vnoremap <buffer> <silent> ,rn :call RAction("nvim.names", "v")
vnoremap <buffer> <silent> ,rp :call RAction("print", "v")
vnoremap <buffer> <silent> ,rm :call RClearAll()
vnoremap <buffer> <silent> ,rr :call RClearConsole()
vnoremap <buffer> <silent> ,rl :call g:SendCmdToR("ls()")
vnoremap <buffer> <silent> ,o :call RWarningMsg("This command does not work over a selection of lines.")
vnoremap <buffer> <silent> ,fa :call SendFunctionToR("echo", "down")
vnoremap <buffer> <silent> ,fd :call SendFunctionToR("silent", "down")
vnoremap <buffer> <silent> ,fe :call SendFunctionToR("echo", "stay")
vnoremap <buffer> <silent> ,ff :call SendFunctionToR("silent", "stay")
vnoremap <buffer> <silent> ,; :call MovePosRCodeComment("selection")
vnoremap <buffer> <silent> ,xu :call RSimpleCommentLine("selection", "u")
vnoremap <buffer> <silent> ,xc :call RSimpleCommentLine("selection", "c")
vnoremap <buffer> <silent> ,xx :call RComment("selection")
vnoremap <buffer> <silent> ,rw :call RQuit('save')
vnoremap <buffer> <silent> ,rq :call RQuit('nosave')
vnoremap <buffer> <silent> ,rc :call StartR("custom")
vnoremap <buffer> <silent> ,rf :call StartR("R")
noremap <buffer> <silent> ,gN :call b:PreviousRChunk()
noremap <buffer> <silent> ,gn :call b:NextRChunk()
noremap <buffer> <silent> ,ca :call b:SendChunkToR("echo", "down")
noremap <buffer> <silent> ,cd :call b:SendChunkToR("silent", "down")
noremap <buffer> <silent> ,ce :call b:SendChunkToR("echo", "stay")
noremap <buffer> <silent> ,cc :call b:SendChunkToR("silent", "stay")
nnoremap <buffer> <silent> ,kn :call RKnit()
onoremap <buffer> <silent> ,kn :call RKnit()
nnoremap <buffer> <silent> ,rd :call RSetWD()
onoremap <buffer> <silent> ,rd :call RSetWD()
nnoremap <buffer> <silent> ,ko :call RMakeRmd("odt")
onoremap <buffer> <silent> ,ko :call RMakeRmd("odt")
nnoremap <buffer> <silent> ,kh :call RMakeRmd("html_document")
onoremap <buffer> <silent> ,kh :call RMakeRmd("html_document")
nnoremap <buffer> <silent> ,kw :call RMakeRmd("word_document")
onoremap <buffer> <silent> ,kw :call RMakeRmd("word_document")
nnoremap <buffer> <silent> ,kl :call RMakeRmd("beamer_presentation")
onoremap <buffer> <silent> ,kl :call RMakeRmd("beamer_presentation")
nnoremap <buffer> <silent> ,kp :call RMakeRmd("pdf_document")
onoremap <buffer> <silent> ,kp :call RMakeRmd("pdf_document")
nnoremap <buffer> <silent> ,kr :call RMakeRmd("default")
onoremap <buffer> <silent> ,kr :call RMakeRmd("default")
nnoremap <buffer> <silent> ,r- :call RBrOpenCloseLs(0)
onoremap <buffer> <silent> ,r- :call RBrOpenCloseLs(0)
nnoremap <buffer> <silent> ,r= :call RBrOpenCloseLs(1)
onoremap <buffer> <silent> ,r= :call RBrOpenCloseLs(1)
nnoremap <buffer> <silent> ,ro :call RObjBrowser()
onoremap <buffer> <silent> ,ro :call RObjBrowser()
nnoremap <buffer> <silent> ,rb :call RAction("plotsumm")
onoremap <buffer> <silent> ,rb :call RAction("plotsumm")
nnoremap <buffer> <silent> ,rg :call RAction("plot")
onoremap <buffer> <silent> ,rg :call RAction("plot")
nnoremap <buffer> <silent> ,rs :call RAction("summary")
onoremap <buffer> <silent> ,rs :call RAction("summary")
nnoremap <buffer> <silent> ,rh :call RAction("help")
onoremap <buffer> <silent> ,rh :call RAction("help")
nnoremap <buffer> <silent> ,re :call RAction("example")
onoremap <buffer> <silent> ,re :call RAction("example")
nnoremap <buffer> <silent> ,ra :call RAction("args")
onoremap <buffer> <silent> ,ra :call RAction("args")
nnoremap <buffer> <silent> ,tp :call RAction("printtab")
onoremap <buffer> <silent> ,tp :call RAction("printtab")
nnoremap <buffer> <silent> ,td :call RAction("dputtab")
onoremap <buffer> <silent> ,td :call RAction("dputtab")
nnoremap <buffer> <silent> ,rv :call RAction("viewdf")
onoremap <buffer> <silent> ,rv :call RAction("viewdf")
nnoremap <buffer> <silent> ,rt :call RAction("str")
onoremap <buffer> <silent> ,rt :call RAction("str")
nnoremap <buffer> <silent> ,rn :call RAction("nvim.names")
onoremap <buffer> <silent> ,rn :call RAction("nvim.names")
nnoremap <buffer> <silent> ,rp :call RAction("print")
onoremap <buffer> <silent> ,rp :call RAction("print")
nnoremap <buffer> <silent> ,rm :call RClearAll()
onoremap <buffer> <silent> ,rm :call RClearAll()
nnoremap <buffer> <silent> ,rr :call RClearConsole()
onoremap <buffer> <silent> ,rr :call RClearConsole()
nnoremap <buffer> <silent> ,rl :call g:SendCmdToR("ls()")
onoremap <buffer> <silent> ,rl :call g:SendCmdToR("ls()")
let s:cpo_save=&cpo
set cpo&vim
noremap <buffer> <silent> ,r<Right> :call RSendPartOfLine("right", 0)
noremap <buffer> <silent> ,r<Left> :call RSendPartOfLine("left", 0)
nnoremap <buffer> <silent> ,o :call SendLineToRAndInsertOutput()0
onoremap <buffer> <silent> ,o :call SendLineToRAndInsertOutput()0
noremap <buffer> <silent> ,d :call SendLineToR("down")0
noremap <buffer> <silent> ,l :call SendLineToR("stay")
noremap <buffer> <silent> ,ch :call SendFHChunkToR()
noremap <buffer> <silent> ,pa :call SendParagraphToR("echo", "down")
noremap <buffer> <silent> ,pd :call SendParagraphToR("silent", "down")
noremap <buffer> <silent> ,pe :call SendParagraphToR("echo", "stay")
noremap <buffer> <silent> ,pp :call SendParagraphToR("silent", "stay")
vnoremap <buffer> <silent> ,so :call SendSelectionToR("echo", "stay", "NewtabInsert")
vnoremap <buffer> <silent> ,sa :call SendSelectionToR("echo", "down")
vnoremap <buffer> <silent> ,sd :call SendSelectionToR("silent", "down")
vnoremap <buffer> <silent> ,se :call SendSelectionToR("echo", "stay")
vnoremap <buffer> <silent> ,ss :call SendSelectionToR("silent", "stay")
nnoremap <buffer> <silent> ,fa :call SendFunctionToR("echo", "down")
onoremap <buffer> <silent> ,fa :call SendFunctionToR("echo", "down")
nnoremap <buffer> <silent> ,fd :call SendFunctionToR("silent", "down")
onoremap <buffer> <silent> ,fd :call SendFunctionToR("silent", "down")
nnoremap <buffer> <silent> ,fe :call SendFunctionToR("echo", "stay")
onoremap <buffer> <silent> ,fe :call SendFunctionToR("echo", "stay")
nnoremap <buffer> <silent> ,ff :call SendFunctionToR("silent", "stay")
onoremap <buffer> <silent> ,ff :call SendFunctionToR("silent", "stay")
noremap <buffer> <silent> ,ba :call SendMBlockToR("echo", "down")
noremap <buffer> <silent> ,bd :call SendMBlockToR("silent", "down")
noremap <buffer> <silent> ,be :call SendMBlockToR("echo", "stay")
noremap <buffer> <silent> ,bb :call SendMBlockToR("silent", "stay")
nnoremap <buffer> <silent> ,; :call MovePosRCodeComment("normal")
onoremap <buffer> <silent> ,; :call MovePosRCodeComment("normal")
nnoremap <buffer> <silent> ,xu :call RSimpleCommentLine("normal", "u")
onoremap <buffer> <silent> ,xu :call RSimpleCommentLine("normal", "u")
nnoremap <buffer> <silent> ,xc :call RSimpleCommentLine("normal", "c")
onoremap <buffer> <silent> ,xc :call RSimpleCommentLine("normal", "c")
nnoremap <buffer> <silent> ,xx :call RComment("normal")
onoremap <buffer> <silent> ,xx :call RComment("normal")
nnoremap <buffer> <silent> ,rw :call RQuit('save')
onoremap <buffer> <silent> ,rw :call RQuit('save')
nnoremap <buffer> <silent> ,rq :call RQuit('nosave')
onoremap <buffer> <silent> ,rq :call RQuit('nosave')
nnoremap <buffer> <silent> ,rc :call StartR("custom")
onoremap <buffer> <silent> ,rc :call StartR("custom")
nnoremap <buffer> <silent> ,rf :call StartR("R")
onoremap <buffer> <silent> ,rf :call StartR("R")
inoremap <buffer> <silent>  =RCompleteArgs()
inoremap <buffer> <silent> _ :call ReplaceUnderS()a
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=(0
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=>\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'rmd'
setlocal filetype=rmd
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
set foldnestmax=1
setlocal foldnestmax=1
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetRmdIndent()
setlocal indentkeys=0{,0},:,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,.
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=CompleteR
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'rmd'
setlocal syntax=rmd
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 34 - ((32 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 0
wincmd w
argglobal
if bufexists('lib/cRegulome/DESCRIPTION') | buffer lib/cRegulome/DESCRIPTION | else | edit lib/cRegulome/DESCRIPTION | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=(0
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
set foldnestmax=1
setlocal foldnestmax=1
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cqt
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=CompleteR
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(3)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 35 - ((34 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 04|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 115 + 173) / 347)
exe 'vert 2resize ' . ((&columns * 115 + 173) / 347)
exe 'vert 3resize ' . ((&columns * 115 + 173) / 347)
tabedit lib/cRegulome/DESCRIPTION
set splitbelow splitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=(0
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
set foldnestmax=1
setlocal foldnestmax=1
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cqt
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=CompleteR
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 40 - ((39 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 05|
tabnext 1
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
