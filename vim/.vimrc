"""""""""""""""""""""
"     Vim-Plug      "
"""""""""""""""""""""
if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin()
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'cespare/vim-toml'
  Plug 'fatih/vim-go'
  Plug 'airblade/vim-gitgutter'
  call plug#end()
  let g:go_fmt_fail_silently = 0 "let me out even with errors
  let g:go_fmt_command = 'goimports' "autoupdate import
  let g:go_fmt_autosave = 1
else
  autocmd vimleavepre *.go !gofmt -w % " backup if fatih fails
endif

" checks for vim-tiny (vi)
if has("eval")
   let skip_defaults_vim = 1
endif

"""""""""""""""""""""
" some basic tweaks "
"""""""""""""""""""""
set nocompatible
set autoindent 
set autowrite
set number
set relativenumber
set ruler
set showmode
set tabstop=2
set t_vb=""
set softtabstop=2
set shiftwidth=2
set smartindent
set smarttab

"""""""""""""""""""""""""""""""""""""""
" misc stuff, makes vim less annoying "
"""""""""""""""""""""""""""""""""""""""
if v:version >=  800
  set nofixendofline
  set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>
  set foldmethod=manual
  set nofoldenable
endif

""""""""""
" colors "
""""""""""
if has("termguicolors")
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu:%lu:%lum"
  set termguicolors
endif

if has("syntax")
  syntax on
  set background=dark
  colorscheme lunaperche
 " hi Normal guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
endif

"""""""""""""""""""
" more misc stuff "
"""""""""""""""""""
set textwidth=80
set colorcolumn=81
set expandtab
set nobackup
set noswapfile
set nowritebackup
set noundofile
set icon
set hlsearch
set incsearch
set linebreak
set wrapscan
set ttyfast
set ttimeoutlen=0
set showmatch
filetype plugin indent on 
set wildmenu
set omnifunc=syntaxcomplete#Complete

fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

set laststatus=2
