"Main "{{{
" ---------------------------------------------------------------------

" Set row numbers 
set number
" Set auto inndents
set autoindent
" If no colour scheme is currently loaded
set background=dark
" After :w command previous file version permament deleted
set nobackup
" Show command history
set showcmd
" Set command line height (place, where you type :q)
set cmdheight=1
" Display status bar (can change value to "0", "1", "2")
set laststatus=2
" Set the number of context lines you would like to see above and below the cursor
set scrolloff=10
" Convert tabs to spaces
set expandtab
" Set shell (can change to =fish, =bash, etc.)
set shell=powershell
" Set script encoding
scriptencoding utf-8
" Ignore case when searching
set ignorecase
" Display long lines as just one
set nowrap
" Add asterisks in block comments
set formatoptions+=r
" The incoding written to file
set fileencodings=utf-8
" The encoding displayed
set encoding=utf-8
" Enable mouse
set mouse=a
" Horisontal splits will automatically be below
set splitbelow
" Vertical splits will automatically be to the right
set splitright
" Support 256 colors
set t_Co=256
" I can see `` in markdown files
set conceallevel=0
" Change the number of space characters instead for indentation
set shiftwidth=4
" Insert number spaces for a tab
set tabstop=4
"  
set smarttab
"
set smartindent
" Always display the status line
set laststatus=0
" Always show tabs
set showtabline=2
" Now you don't see things like --INSERT-- anymore
set noshowmode
" copy and paste between vin and everything else
set clipboard=unnamedplus

"}}}

"File types "{{{
"---------------------------------------------------------------------

"Java
au BufNewFile,BufRead *.java set filetype=java

"JavaScript
"au BufNewFile,BufRead *.es6 setf javascript

"TypeScript
"au BufNewFile,BufRead *.tsx setf typescriptreact

"Markdown
"au BufNewFile,BufRead *.md set filetype=markdown
"au BufNewFile,BufRead *.mdx set filetype=markdown

"Flow
"au BufNewFile,BufRead *.flow set filetype=javascript

"Fish
"au BufNewFile,BufRead *.fish set filetype=fish

"}}}

"Syntax theme "{{{
"---------------------------------------------------------------------

"true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark

  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}

"Imports "{{{
"---------------------------------------------------------------------

"runtime ./plug.vim
"runtime ./macos.vim
runtime ./windows.vim
runtime ./maps.vim

"}}}

"Highlights "{{{
"---------------------------------------------------------------------

"Set cursorcolumn
set cursorline

"Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}

"Plugin list "{{{
"---------------------------------------------------------------------

call plug#begin('C:\Users\Sergey Maksimov\AppData\Local\nvim\autoload\plugged')

Plug 'https://github.com/scrooloose/nerdtree'
"NerdTree hotkeys
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

call plug#end()

"}}}
