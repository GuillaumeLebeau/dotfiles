" tab options
set shiftwidth=4
set tabstop=4

" {{{ plugins
call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox'						" theme
	Plug 'bling/vim-airline'					" status line
	Plug 'jeffkreeftmeijer/vim-numbertoggle'	" smart relative numbering
	Plug 'airblade/vim-gitgutter'				" show git diffs
	Plug 'bronson/vim-trailing-whitespace'		" show trailing spaces
	Plug 'jiangmiao/auto-pairs'					" spawn matched brackets / quotes
	Plug 'scrooloose/nerdtree'					" file browser
	Plug 'jistr/vim-nerdtree-tabs'				" file browser tabs
call plug#end()
" }}}

" {{{ plugin settings

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_section=''
let g:airline_detect_paste=1 " Show PASTE if in paste mode
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" NERDTree
nmap <silent><Leader>t :NERDTreeTabsToggle<CR> " open NERDTree with \t
let g:nerdtree_tabs_open_on_console_startup=0 " don't open NERDTree on startup
" }}}

" {{{ keybinds
" Define ' ' as map leader
let mapleader = ' '
let g:mapleader = ' '
" indenting keybinds
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
" Repurpose up and down arrow keys to move between the buffers
nnoremap <silent> <Down>   :bn<CR>
nnoremap <silent> <Up>  :bp<CR>
" copy visual
map <C-c> "+y<CR>
" toggle paste mode
set pastetoggle=<F2>
" NerdTree
" silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
" }}}

" set title and allow hidden buffers
set title
set hidden
" set list

" Auto remove all trailing whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e

" Autosave files when focus is lost
:au FocusLost * :wa

" Line Numbers
set number
set numberwidth=3

" Path will be base dir that vim is opened from
set path=$PWD/**

set nomodeline
set noshowmode			" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set shortmess=atToOI    " To avoid the 'Hit Enter' prompts caused by the file messages
set undolevels=1000
set updatetime=1500

" Wild menu (Autocompletion)"
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.jpeg,*.png,*.xpm,*.gif
set wildmode=list:longest,full

" Backup and Swap
set nobackup
set nowritebackup
set noswapfile

" Search Options
set hlsearch   " Highlight search
set magic      " Set magic on, for regular expressions
set ignorecase " Searches are Non Case-sensitive
set smartcase

" FOLDING
set foldenable
set foldmethod=marker
set foldlevel=0
set foldcolumn=0

" language options
let python_highlight_all = 1

" colors
	set t_Co=256
	colorscheme gruvbox
	set background=dark
	hi Normal ctermbg=none	" transparent background

	set encoding=utf-8

	" General UI Options
	set mouse=a
	set showmatch          " Shows matching brackets when text indicator is over them
	set cursorline
	set scrolljump=10
	set ttyfast            " Improves redrawing for newer computers
	set pumheight=20       " popup menu height
	set diffopt+=context:3
	set nostartofline      " when moving thru the lines, the cursor will try to stay in the previous columns

	" LAYOUT / TEXT FORMATTING
	" Formatting Options
	set wrap " Soft Wrap in all files, while hard wrap can be allow by filetype
	set linebreak " It maintains the whole words when wrapping
	set smartindent

	" Open new split panes to right and bottom, which feels more natural
	set splitbelow
	set splitright

" gvim options - remove the toolbar.
set guioptions-=L
set guioptions-=T

set laststatus=2 " Always show airline bar

" other mappings
noremap <Leader>W :w !sudo tee % > /dev/null
