execute pathogen#infect()
filetype plugin indent on
"#qsyntax on
"#if &cp | set nocp | endif
"#map Q gq
"#let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
vmap gx <Plug>NetrwBrowseXVis
nnoremap <SNR>46_: :=v:count ? v:count : ''
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=2
set backup
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=de
set hlsearch
set incsearch
set langnoremap
set nolangremap
set listchars=tab:.\ ,trail:·,eol:¬
set nomodeline
set mouse=a
set ruler
"set runtimepath=~/.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/nerdtree-git-plugin,~/.vim/bundle/neomake,~/.vim/bundle/vim-fugitive,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,~/.vim/after
set showcmd
set showmatch
set smartindent
set softtabstop=4
set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*
set tabstop=4
set undofile
set wildignore=*.pyc
set wildmenu
" vim: set ft=vim :
let g:neomake_python_pylint_maker = {
    \ 'exe': 'python3',
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \ (%t%*\d\)',
    \ }
let g:neomake_python_enable_makers = ['pylint']
map <C-n> :NERDTreeToggle<CR>
autocmd BufWritePost,BufEnter * Neomake
