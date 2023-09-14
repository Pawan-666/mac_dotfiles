call plug#begin()
Plug 'machakann/vim-highlightedyank'
Plug 'vimwiki/vimwiki'
Plug 'ferrine/md-img-paste.vim'
Plug 'morhetz/gruvbox'
call plug#end()

let mapleader = " "

let g:highlightedyank_highlight_duration = 150

set nu rnu
set clipboard=unnamed
set linebreak
set nobackup nowritebackup
set noswapfile
set wildmenu

set nohlsearch
set incsearch
set ic
nnoremap <leader>S :match ErrorMsg '\s\+$'<CR>

" Move forward a letter in insert mode using Ctrl-f
inoremap <C-f> <Right>

" Move backward a letter in insert mode using Ctrl-b
inoremap <C-b> <Left>
nnoremap j gj
nnoremap k gk
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzz
nnoremap N Nzz


" vimwiki
let g:vimwiki_list = [{'path': '~/wiki/','syntax': 'markdown', 'ext': '.md'}]
"let g:calendar_diary='~//wiki/diary'
""let g:vimwiki_list = [{'auto_diary_index': 1}]

"vimwiki will only set the filetype of markdown files inside a wiki directory
let g:vimwiki_global_ext = 0

autocmd FileType markdown nmap <buffer><silent> <leader>P :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
"let g:mdip_imgdir = '~/wiki/my_blog/pawan/static/images'
"let g:mdip_imgname = 'image'

""Markdown shortcuts
"imap 'B ____<esc>hi
"imap 'm ````<esc>hi
"imap 'i **<esc>i
"imap 'I ******<esc>2hi
"imap 'r ---<esc>Ojjj2ojji
""imap 'u <><esc>i
"imap 'li [![Image](s "t")](https://.com)
""To emphasize links, add asterisks before and after the brackets and parentheses. To denote links as code, add backticks in the brackets.
"imap 'l [](https://.com)<esc>Ba
"imap 'a <abbr title=""></abbr><esc>2bla
"imap 'p ![Image](s "")<esc>hi
""Blockquotes can contain multiple paragraphs. Add a > on the blank lines between the paragraphs
""imap 'q <esc>a
"""nested blockquotes
""imap 'q2 >><esc>a
""imap 'qb >____<esc>ha
""imap 'qh >###
""imap 'q3 >>><esc>a
""imap 'q4 >>>><esc>a
""imap 'q5 >>>>><esc>a
""imap 'q6 >>>>>><esc>a
"" imap 'c ``<esc>i
"imap 'b ``````<esc>2hi<CR><esc>O
"imap 'cs ```sh```<esc>2hi<CR><esc>O
"imap 'cp ```python```<esc>2hi<CR><esc>O
"imap 'ch ```html```<esc>2hi<CR><esc>O
"imap 'cj ```js```<esc>2hi<CR><esc>O
"imap '1 # <esc>a
"imap '2 ## <esc>a
"imap '3 ### <esc>a
"imap '4 #### <esc>a
"imap '5 ##### <esc>a
"
""map CTRL-E to end-of-line (insert mode)
"imap <C-e> <esc>$i<right>
""map CTRL-A to beginning-of-line (insert mode)
"imap <C-a> <esc>0i

colorscheme gruvbox
set background=dark

"set termguicolors
hi Normal ctermbg=NONE
" line in the current cursor
augroup CursorLine
au!
au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline
augroup END
