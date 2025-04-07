" adding line numbers 
set number 

" adding wrap
set wrap

" syntax highlights 
syntax enable

" plugins
packadd nerdtree
" packadd python-mode
"packadd markdownviewer
"packadd vim-instant-markdown
 
" markdown viewer 
"packadd markdown-preview

" linting and formatting
packadd ale
packadd vim-autoformat
let g:formatdef_google_java = '"google_java_format"'
let g:formatters_java = ['google_java']

" lightline status bar
packadd lightline
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
set noshowmode

" vim-doge autodoc
packadd vim-doge
"let g:doge_doc_standard_python = 'google'
"autocmd BufWritePre *.java,*.py :DogeGenerate

" vim autocomplete
"packadd vimcomplete
"packadd lsp
""let g:lsp_server_commands = {
""    \ 'python': ['pyright'],
""    \ }
"
"let g:lsp_auto_save = 1
"call LspAddServer([#{name: 'pyright',
"                 \   filetype: 'python',
"                 \   path: '/home/isaiah/tools/node-v14.15.4-linux-x64/bin/pyright',
"                 \   args: ['--stdio'],
"                 \   workspaceConfig: #{
"                 \     python: #{
"                 \       pythonPath: '/usr/bin/python3.10'
"                 \   }}
"                 \ }])

" autopairs for braces and quotations
packadd auto-pairs

" the bar on the right in vs code that shows where you are in the code
packadd minimap.vim
autocmd VimEnter * Minimap
"let g:minimap_range_color = 'blue'
autocmd ColorScheme *
        \ highlight minimapCursor            ctermbg=59  ctermfg=228 guibg=#5F5F5F guifg=#FFFF87 |
        \ highlight minimapRange             ctermbg=242 ctermfg=228 guibg=#4F4F4F guifg=#F27D8E
" vim icons 
packadd vim-devicons
set encoding=UTF-8

" vim smooth scroll
packadd vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" ale
let g:ale_java_google_java_format_executable = '~/.local/bin/google-java-format-1.25.2-all-deps.jar' " Replace with the actual path to your JAR file
let g:ale_fixers = {
\   'java': ['google_java_format'],
\}

" instant markdown 
filetype plugin on
""Uncomment to override defaults:
""let g:instant_markdown_slow = 1
""let g:instant_markdown_autostart = 0
""let g:instant_markdown_open_to_the_world = 1
""let g:instant_markdown_allow_unsafe_content = 1
""let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
""let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
""let g:instant_markdown_autoscroll = 0
""let g:instant_markdown_port = 8888
""let g:instant_markdown_python = 1
"let g:instant_markdown_theme = 'dark'

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
