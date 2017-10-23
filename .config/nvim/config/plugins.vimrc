" execute pathogen#infect()
set packpath+=~/.vim
" dein.vim configuration --------------------------{{{
  if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
    call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
    call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
  endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.config/nvim'))
call dein#add('neomake/neomake')
call dein#add('vim-airline/vim-airline')
call dein#add('Shougo/deoplete.nvim')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-fugitive')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('Shougo/neopairs.vim')                " Place parenthesis pair auto
call dein#add('Shougo/context_filetype.vim')        " Add context filetype feat
call dein#add('Konfekt/FastFold')                   " fast code fold
" call dein#add('davidhalter/jedi')                   " python autocompletion
call dein#add('zchee/deoplete-jedi')                " additional to jedi
if dein#check_install()
  call dein#install()
  let pluginsExist=1
endif

call dein#end()
filetype plugin indent on
syntax enable
" dein.vim configuration -----------------------}}}
"
" Deoplete settings 
let g:deoplete#enable_at_startup=1      "Enable Deoplete at the beginning
let g:deoplete#enable_ignore_case=1     " input is not case sens. for completition
let g:deoplete#enable_smart_case=1        " if input has upper case, dont ignore it
highlight Cursor guifg=green guibg=red
" Neomake settings
autocmd BufWritePost,BufEnter *.py Neomake

" Deoplete autocompletion
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"omnifocus (autocomplete)
augroup omnifuncs
  autocmd!
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
augroup end
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" python linter
let g:neomake_python_pylint_maker = {
    \ 'exe': 'python3',
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \ (%t%*\d\)',
    \ }
let g:neomake_python_enable_makers = ['pylint']
map <C-n> :NERDTreeToggle<CR>
autocmd BufWritePost,BufEnter * Neomake
