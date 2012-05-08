set number
set cursorline

"Colorscheme
"colorscheme ir_black
"Let's try solarized
syntax enable
set background=dark
colorscheme solarized


"set gfn=Bitstream_Vera_Sans_Mono:h11:cANSI
"set gfn=Consolas:h12:cANSI

"I don't want the backup files to creep in
set nobackup
set nowritebackup
set noswapfile

"Very important line for supertab to work only with context
let g:SuperTabDefaultCompletionType = "context"

"HTML Specific matchit addon
autocmd FileType html let b:match_words = '<\(\w\w*\):</\1,{:}'
autocmd FileType xhtml let b:match_words = '<\(\w\w*\):</\1,{:}'
autocmd FileType xml let b:match_words = '<\(\w\w*\):</\1,{:}'


"ZenCoding Shortcut
"noremap <silent> ,ee :g:user_zen_leader_key,<CR>
let g:user_zen_leader_key = '<c-k>'
"let g:user_zen_expandabbr_key = '<c-w>'
"let g:user_zen_togglecomment_key = '<c-r>'
"let g:use_zen_complete_tag = 1

"NERD Tree Explorer
noremap <silent> <c-m> :NERDTreeToggle<CR>

"Fuzzy File Finder
nmap <silent> <c-p> :FufFile<CR>

"Consider cgi files as perl files (Syntax highlighting)
autocmd BufEnter *.cgi set filetype=perl

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=4         "this is just what i use
" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo


"vmap <space> zf
"nmap <space> zd

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :b#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
"Using Wild menu for guessing
set wildchar=<Tab> wildmenu wildmode=full

"I hate highlighting
set nohlsearch



" Move the cursor to the window left of the current one
noremap <silent> ,h :wincmd h<cr>

" Move the cursor to the window below the current one
noremap <silent> ,j :wincmd j<cr>

" Move the cursor to the window above the current one
noremap <silent> ,k :wincmd k<cr>

" Move the cursor to the window right of the current one
noremap <silent> ,l :wincmd l<cr>

" Close the window below this one
noremap <silent> ,cj :wincmd j<cr>:close<cr>

" Close the window above this one
noremap <silent> ,ck :wincmd k<cr>:close<cr>

" Close the window to the left of this one
noremap <silent> ,ch :wincmd h<cr>:close<cr>

" Close the window to the right of this one
noremap <silent> ,cl :wincmd l<cr>:close<cr>

" Close the current window
noremap <silent> ,cw :close<cr>

" Move the current window to the right of the main Vim window
noremap <silent> ,ml <C-W>L

" Move the current window to the top of the main Vim window
noremap <silent> ,mk <C-W>K

" Move the current window to the left of the main Vim window
noremap <silent> ,mh <C-W>H

" Move the current window to the bottom of the main Vim window
noremap <silent> ,mj <C-W>J

" Set the current window as only Vim window
noremap <silent> ,o <C-W>o


" Write of the file is easy in this way
noremap <silent> ,w :w<cr>

"Taglist to use ctags
let Tlist_Ctags_Cmd = "C:\\Work\\Programs\\ctags\\ctags.exe"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR> "C-\ - Open the definition in a new tab
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR> "A-] - Open the definition in a vertical split


" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" tell Vim to always put a status line in, even if there is only one
" window
set laststatus=2



" Set the search scan to wrap around the file
set wrapscan

" Set the forward slash to be the slash of note.  Backslashes suck
" This is really only applicable to Windows but I like to have a vimrc
" that works no matter what OS I'm currently on
set shellslash

" Make command line two lines high
set ch=2

" set visual bell -- I hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2


" The GUI (i.e. the 'g' in 'gvim') is fantastic, but let's not be
" silly about it :)  The GUI is fantastic, but it's fantastic for
" its fonts and its colours, not for its toolbar and its menus -
" those just steal screen real estate
"set guioptions=ac

" Keep some stuff in the history
set history=100

" Allow the cursor to go in to "invalid" places
set virtualedit=all


" When the page starts to scroll, keep the cursor 8 lines from
" the top and 8 lines from the bottom
set scrolloff=8

" Incrementally match the search.  I orignally hated this
" but someone forced me to live with it for a while and told
" me that I would grow to love it after getting used to it...
" turns out he was right :)
set incsearch

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048


" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>


" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" At least let yourself know what mode you're in
set showmode


" Buffer commands
noremap <silent> ,bd :bd<CR>


" Highlight all instances of the current word under the cursor
"nmap <silent> ^ :setl hls<CR>:let @/="<C-r><C-w>"<CR>

" Underline the current line with '='
nmap <silent> ,ul :t.\|s/./=/g\|set nohls<cr>

"Open a new tab
nmap ,t :tabnew

"Go to next and previous tab
nmap <silent> ,n :tabn
nmap <silent> ,p :tabp

"tab navigation like firefox
:nmap <C-S-tab> :tabprevious<CR>
:nmap <C-tab> :tabnext<CR>
:map <C-S-tab> :tabprevious<CR>
:map <C-tab> :tabnext<CR>
:imap <C-S-tab> <Esc>:tabprevious<CR>i
:imap <C-tab> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>



"Manual Mapping for indentaion
"nmap <C-Tab> a<C-t><Esc>
"nmap <C-S-Tab> a<C-d><Esc>
"imap <C-Tab> <C-t>
"imap <C-S-Tab> <C-d>

"Automatic mapping
set expandtab
set shiftwidth=3
set softtabstop=3
set cindent
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y 

"Enable file specific plugins: Bash Support
filetype plugin on

"Bash Support Specific Settings
let g:BASH_AuthorName   = 'ARINDAM PAUL'
let g:BASH_Email        = 'arindam.x.paul@oracle.com'
let g:BASH_Company      = 'Oracle Corporation'

"PERL Support Specific Settings
let g:PERL_AuthorName   = 'ARINDAM PAUL'
let g:PERL_Email        = 'arindam.x.paul@oracle.com'
let g:PERL_Company      = 'Oracle Corporation'

"supertab options
let g:SuperTabDefaultCompletionType = "context"
