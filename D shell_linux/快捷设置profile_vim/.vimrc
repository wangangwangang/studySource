


map <F12> gg=G			"定义快捷键
set mouse=a				"释放鼠标
set nu					"显示行号
syntax on				"语法高亮
set ruler				"显示右下角标尺
set cursorline			"显示光标所在行下划线
set autoindent			"换行自动对其
set tabstop=4			"设置TAB键的长度
set shiftwidth=4		"设置默认的缩进行数
set ignorecase			"设置搜索时忽略大小写
set hlsearch			"将搜索的字符全部高亮
set incsearch			"在输入搜索字符时，文档实时高亮跟踪识别
nnoremap <F2> :g/^\s*$/d<CR> 	"去除空行




"设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1	"显示隐藏文件

"设置taglist
let Tlist_Inc_Winwidth=0		"禁止自动改变当前Vim窗口的大小 
let Tlist_Use_Right_Window=1	"把方法列表放在屏幕的右侧
map <F4> :TlistToggle <Enter>	"设置快捷键
