source ~/.vim/bundle.vim
"主题配置
set t_Co=256  
colorscheme 256-jungle
"行号配置
set nu
"缩进设置
set smartindent
set autoread
set autowrite
set magic
set nobackup
set backupdir=~/.vim/backup
set directory=~/.vim/swap
"set statusline=%F%(\ %m%r%h%w%)\ [%Y]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}%=[0x%B]\ [%l,%(%c%V%)]\ [%P]
"set colorcolumn=+1,+2
set cindent
set tabstop=2
"set softtabstop=4
set shiftwidth=2
"显示历史记录
set history=50
"--命令行设置--
set showcmd            " 命令行显示输入的命令
set showmode        " 命令行显示vim当前模式
"--状态行设置--
set laststatus=2
"set ruler       
"查找字符串时,高亮所有匹配点
set incsearch
set hlsearch
"系统剪切板
set clipboard=unnamed
"记录光标的位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
"关闭预览窗口
set completeopt=longest,menu 

"高亮当前行和列
"set cursorcolumn
set cursorline
hi CursorLine   cterm=NONE ctermbg=black
"hi Cursorcolumn cterm=NONE ctermbg=black
"ctags -R --c++-kinds=+px --fields=+iaS --extra=+q .
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" YouCompleteMe Plugin
let g:ycm_global_ycm_extra_conf = '/home/zztztt/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1

let g:airline_theme="powerlineish"
let g:airline_powerline_fonts=1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols#branch = ''
let g:airline_symbols#readonly = ''



let g:tagbar_width = 25     "设置宽度，默认为40
"autocmd VimEnter * nested :call tagbar#autoopen(1)    "打开vim时自动打开tagbar
let g:tagbar_right = 1        "在右侧
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_iconchars = ['▸', '▾']
"let g:tagbar_iconchars = ['+', '-']
nnoremap <silent> <F5> :Grep<CR><CR><CR>
nnoremap <silent> <F6> :ccl<CR>
nnoremap <silent> <F7> :Grep<CR> 

"airline
let g:airline_symbols#linenr = ''
let g:airline#extensions#branch#symbol = ''
let g:airline#extensions#readonly#symbol = ''
let g:airline_linecolumn_prefix = ''
let g:airline#extensions#branch#enabled = 1

"grep.vim
let g:Grep_Default_Options = '--color' 

nnoremap <F4> :TagbarToggle<CR>
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR><CR>
nnoremap <F2> :A <CR>
nnoremap <F1> :CtrlP <CR>
