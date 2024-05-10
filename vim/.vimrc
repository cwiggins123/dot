"""""""""""""""""""""
"     Vim-Plug      "
"""""""""""""""""""""
call plug#begin()
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

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
  colorscheme onehalfdark 
  hi Normal guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi Comment guibg=NONE ctermbg=NONE
endif

"""""""""""""""""""
" more misc stuff "
"""""""""""""""""""
set textwidth=80
"set colorcolumn=81
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
