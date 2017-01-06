" vimrc

"""" BASIC CONF
set shiftwidth=4
set softtabstop=4
set expandtab
set hlsearch
set number
set mouse=a
set nocompatible              " be iMproved, required
let mapleader = ' '
let maplocalleader = ' '
set splitright
set splitbelow
set title
set titleold=
set smartindent
set pastetoggle=<F11>
colorscheme elflord
"set relativenumber

 ""Plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()             
syntax on
let g:ctrlp_cmd='CtrlP :pwd'

filetype off
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
filetype on

set bs=indent,eol,start 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
vnoremap <Leader>a y :Ack!<Space><C-r><CR>
autocmd FocusGained * let @z=@+
inoremap jk <Esc>

" TAGS
set nocp
filetype plugin on
set tags=./tags,tags;
"set tags+=~/.vim/tags/cpp
"noremap <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" fugitive git bindings
nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR><CR>
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <Leader>gp :Ggrep<Space>
nnoremap <Leader>gh :Gbrowse<CR>
nnoremap <Leader>gm :Gmerge<Space>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>go :Git checkout<Space>
nnoremap <Leader>gps git push<CR>
nnoremap <Leader>gpl git pull<CR>

nnoremap <Leader>pg :!quick-gist %<CR>


" EasyMotions
noremap  <Leader>f <Plug>(easymotion-bd-f)
nnoremap <Leader>f <Plug>(easymotion-overwin-f)
noremap  <Leader>w <Plug>(easymotion-bd-w)
nnoremap <Leader>w <Plug>(easymotion-overwin-w)
noremap  <Leader>W <Plug>(easymotion-bd-W)
nnoremap <Leader>W <Plug>(easymotion-overwin-W)
noremap  <Leader>j <Plug>(easymotion-bd-j)
nnoremap <Leader>j <Plug>(easymotion-bd-j)
noremap  <Leader>k <Plug>(easymotion-bd-k)
nnoremap <Leader>k <Plug>(easymotion-overwin-k)

" Nerd commenter
vnoremap <Leader>c :call NERDComment(1,'toggle')<cr> :normal gv<cr>
nnoremap <Leader>c :call NERDComment(1,'toggle')<cr>
" using e is prolly better
"vnoremap <Leader>e :call NERDComment(1,'toggle')<cr> :normal gv<cr>
"nnoremap <Leader>e :call NERDComment(1,'toggle')<cr>


""" NAVIGATION  through camelCase
" nnoremap <silent><C-Left> :<C-u>call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%^','bW')<CR>
" nnoremap <silent><C-Right> :<C-u>call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%$','W')<CR>
" inoremap <silent><C-Left> <C-o>:call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%^','bW')<CR>
" inoremap <silent><C-Right> <C-o>:call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%$','W')<CR>
" 
" nnoremap <silent><C-h> :<C-u>call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%^','bW')<CR>
" nnoremap <silent><C-l> :<C-u>call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%$','W')<CR>
" inoremap <silent><C-h> <C-o>:call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%^','bW')<CR>
" inoremap <silent><C-l> <C-o>:call search('\<\<Bar>\U\@<=\u\<Bar>\u\ze\%(\U\&\>\@!\)\<Bar>\%$','W')<CR>

inoremap <C-l> <Esc>lea
nnoremap <C-l> e
inoremap <C-Right> <Esc>lea
nnoremap <C-Right> e
inoremap <C-h> <Esc>bi
nnoremap <C-h> b
inoremap <C-Left> <Esc>bi
nnoremap <C-Left> b
" inoremap <C-L> <Esc>lEa
" nnoremap <C-L> E
" inoremap <C-H> <Esc>Bi
" nnoremap <C-H> B
inoremap <C-e> <Esc>lvec
inoremap <C-E> <Esc>lvEc
nnoremap H ^
nnoremap L $
nnoremap K H
nnoremap J L
vnoremap H ^
vnoremap L $
vnoremap K H
vnoremap J L
nnoremap - ddp
nnoremap _ ddkP

vnoremap <Tab> >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

nnoremap <F2> :diffg<CR>
nnoremap <F3> :diffg RE<CR>
nnoremap <F4> :diffg LO<CR>

nnoremap <F5> :set number!<CR>
nnoremap <C-F5> :set number<CR>
nnoremap <C-S-F5> :set nonumber<CR>

nnoremap <C-F6> :set mouse=a<CR>
nnoremap <C-S-F6> :set mouse=n<CR>
nnoremap <F6> :set mouse=r<CR>

noremap <silent> <F7>   :Explore<CR>
noremap <silent> <S-F7> :sp +Explore<CR>

let Tlist_Use_Right_Window   = 1
nnoremap <F8> :TlistToggle<CR>

" Clipboard stuff
vnoremap <F9> "+ygv"zy`>
nnoremap <F10> "zgp
vnoremap <F10> "zgp
nnoremap <F10> "zgP
vnoremap <F10> "zgP

nnoremap <C-j> jzz
nnoremap <C-k> kzz
noremap <C-c> "+y<CR> 

" Highlighting stuff
nnoremap , :mat Error "<C-R><C-W>"<CR>
vnoremap <silent> , :<C-U>
\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
\gvy:mat Error "<C-R><C-R>=substitute(
\escape(@", '/".*$^~['), '_s+', '\_s\+', 'g')<CR>"<CR>
\gV:call setreg('"', old_reg, old_regtype)<CR>

" unfinished - function to Polish fonts
function! Decode()
   "%s/š/ą/g
   "%s/\%x9c/ś/g
endfunction
nnoremap <leader>dec :call Decode()<cr>

noremap <leader>ev :vsp $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>

"let g:ctrlp_working_path_mode = 'r'
"set hidden
nnoremap <leader>T :enew<cr>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>bq :bp <BAR> bd #<CR>
nnoremap <leader>bl :ls<CR>
nnoremap <leader>q :q<CR>
"nnoremap <leader>q :bp <BAR> bd #<CR> :q<CR>

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
vnoremap <leader>' <esc><esc>`>a'<esc>`<i'<esc>gvll
vnoremap <leader>" <esc><esc>`>a"<esc>`<i"<esc>gvll
vnoremap <leader>{ <esc><esc>`>a}<esc>`<i{<esc>gvll
""" Commenting
"autocmd FileType c,cpp let maplocalleader = '\'
"
"autocmd FileType python,perl,perl6     nnoremap <buffer> <localleader>c I#<esc>
"autocmd FileType python,perl,perl6     vnoremap <buffer> <localleader>c <esc>`<<c-v>`>^I#<esc>gv<esc>
"autocmd FileType javascript,c,cpp     nnoremap <buffer> <localleader>c I//<esc>
"autocmd FileType javascript,c,cpp     vnoremap <buffer> <localleader>c <esc>`<<c-v>`>^I//<esc>gv<esc>
"autocmd FileType html     nnoremap <buffer> <localleader>c ^i<!--<esc>$a--><esc>
"autocmd FileType vim     nnoremap <buffer> <localleader>c I"<esc>
"autocmd FileType vim     vnoremap <buffer> <localleader>c I"<esc>

""" Python specific
autocmd FileType python     nnoremap <buffer> <localleader>p $a)<esc>^iprint(<esc>
autocmd FileType python     Docset python,numpy
"""
onoremap p i(
onoremap b /return<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
iabbrev @@ pawel_szulc@onet.pl
" iabbrev <buffer> --- &mdash;

