" adding line numbers 
set number 

" adding wrap
set wrap

" syntax highlights 
syntax enable

" plugins
packadd nerdtree
" packadd python-mode
packadd markdownviewer
"packadd vim-instant-markdown
packadd ale
packadd vim-autoformat
let g:formatdef_google_java = '"google-java-format - i"'
let g:formatters_java = ['google_java']
packadd vim-airline
packadd vim-airline-themes
let g:airline_theme='serene'

" instant markdown 
filetype plugin on
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
let g:instant_markdown_theme = 'dark'

" color schemes
set termguicolors 
packadd Alduin
let g:alduin_Shout_Become_Ethereal = 1
colorscheme alduin


" on save activities 
autocmd BufWritePre *.java,*.py :Autoformat

" toggle NERDTree with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

set tabstop=4       " Number of spaces per tab
set softtabstop=4   " Number of spaces when pressing <Tab>
set shiftwidth=4    " Number of spaces for indentation
set expandtab       " Use spaces instead of tabs
