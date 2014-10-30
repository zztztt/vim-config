"终端下加载bundle，gui下有bug，macvim会闪退
source ~/.vim/bundle.vim

"主题配置
"gui : solarized
"iterm : jungle
syntax enable
if has("gui_running") 
	colorscheme solarized
	set background=dark
  set guifont=Monaco:h14
  set guioptions-=m " 隐藏菜单栏 
  set guioptions-=T " 隐藏工具栏 
  set guioptions-=L " 隐藏左侧滚动条 
  set guioptions-=r " 隐藏右侧滚动条 
  set guioptions-=b " 隐藏底部滚动条 
  set showtabline=0 " 隐藏Tab栏 
else
  colorscheme desert
endif

set fileencodings=utf-8,gb18030,gbk,gb2312,big5

"行号配置
set nu
set mouse=a
"缩进设置
set smartindent
set autoread
set autowrite
set magic
set directory=~/.vim/.swap
"set statusline=%F%(\ %m%r%h%w%)\ [%Y]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}%=[0x%B]\ [%l,%(%c%V%)]\ [%P]
"set colorcolumn=+1,+2
set cindent
"空格代替制表符
set expandtab
set tabstop=4
"set softtabstop=4
set shiftwidth=4
set expandtab
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
hi Cursorcolumn cterm=NONE ctermbg=black

" YouCompleteMe Plugin
"let g:ycm_global_ycm_extra_conf = ''
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_auto_trigger = 1
"" 两个字母的时候开始补全
"let g:ycm_min_num_of_chars_for_completion = 2
"" 语法关键字补全
"let g:ycm_seed_identifiers_with_syntax=1
"" 关闭ycm的syntastic
"let g:ycm_show_diagnostics_ui = 0
"" 开启 YCM 基于标签引擎
"let g:ycm_collect_identifiers_from_tags_files=1 

"nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR><CR>

"airline
"if !has("gui_running")
"  let g:airline_theme="powerlineish"
"endif
"let g:airline_left_sep = ""
"let g:airline_right_sep = ""
"let g:airline_left_alt_sep = ">"
"let g:airline_right_alt_sep = "<"
"let g:airline_symbols#linenr = 'L/N'
"let g:airline#extensions#branch#symbol = ''
"let g:airline#extensions#readonly#symbol = 'R'
"let g:airline_linecolumn_prefix = 'L/N'
"let g:airline#extensions#branch#enabled = 1

highlight colorcolumn ctermbg=darkgray guibg=darkgray
"when length >= 80, backgroud will become red
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"indent line
function SetColorColumn()
	let col_num = virtcol(".")
	let cc_list = split(&cc, ',')
	if count(cc_list, string(col_num)) <= 0
		execute "set cc+=".col_num
	else
		execute "set cc ="
	endif
endfunction
nnoremap <F1> :call SetColorColumn()<CR>


"Tagbar
"let g:tagbar_ctags_bin = ""
let g:tagbar_width = 30
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_iconchars = ['▸', '▾']

nnoremap <F4> :TagbarToggle <CR>

"A
nnoremap <F2> :A <CR>

"nerdtree
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['.so[[file]]','.jar[[file]]','.dump[[file]]','.pyc[[file]]']
let NERDTreeWinSize=25
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"ctrlp
let g:ctrlp_max_files = 1000
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$','file': '\v\.(exe|so|dll)$','link': 'SOME_BAD_SYMBOLIC_LINKS'}

