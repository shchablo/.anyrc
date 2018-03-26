call plug#begin('~/.vim/plugged')
    Plug 'vim-latex/vim-latex'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
    Plug 'majutsushi/tagbar'
    Plug 'sjl/gundo.vim'
    Plug 'easymotion/vim-easymotion'
    
    Plug 'rhysd/vim-clang-format'   
call plug#end()

" *** КОНФИГУРАЦИЯ VIM ***

" * Плагины {{{
	
	"NERDTree
	nnoremap <F3> :NERDTreeToggle<CR>
   
	"Tagbar
	nmap <F8> :TagbarToggle<CR> 
   
	"Gundo 
	nnoremap <F5> :GundoToggle<CR>
    
" * }}}

" * Общие {{{
" Отключение совместимости настроек с Vi
set nocompatible

" Отключить перерисовку экрана во время выполнения макросов и других рутинных операций 
set lazyredraw

" Работа с несколькими буферами одновременно
"set hidden

" Highlight search results
set hlsearch

" Ignore case in search patterns
"set ignorecase

" Override the 'ignorecase' option if the search pattern contains upper case characters
"set smartcase

" Поиск по набору текста
set incsearch report=0 title

" Использовать <Backspace>, вместо <x>
set backspace=indent,eol,start whichwrap+=<,>,[,]

" History size
set undolevels=1000

" Backup files are annoying
set nobackup

" Не создавать свап файл
set noswapfile

" Disable error messages
set novb
" }}}

" * Кодировки {{{
" Кодировка текста по умолчанию
set termencoding=utf-8

" Возможные кодировки файлов, если файл не в unicode кодировке, то будет использоваться cp1251
set fileencodings=utf8,cp1251 

" Меню для смены кодировки по Ctrl+C
set wildmenu
set wcm=<Tab>
menu Encoding.windows-1251 :e! ++enc=cp1251<CR>
menu Encoding.koi8-r       :e! ++enc=koi8-r<CR>
menu Encoding.utf-8        :e! ++enc=utf-8 <CR>
map <C-C> :emenu Encoding.<TAB>

" * }}}

" Внешний вид {{{

" Подсветка синтаксиса
syntax on

" Цветовая схема
colorschem myMonokai

" Метод сворачивания текста
set foldmethod=marker

" Отступ перед нумерацией строк
set foldcolumn=0

" Нумерация строк
set nu

" Отображение курсора все время
set ruler

" Высота строки комманд
set ch=1

" Показывать незавершенные команды
set showcmd showmatch showmode

" Подсветка строки, в которой находится в данный момент курсор
set cursorline

" Формат строки состояния
set laststatus=3

" Перенос строк
set nowrap

" See which lines are longer than 80 characters.
set colorcolumn=81
hi colorcolumn ctermbg=0

"set t_Co=256

" Табуляция равна 2-ем пробелам
set tabstop=2 
set softtabstop=2 
set expandtab

"set smarttab
set textwidth=79
set shiftround

" Двигать блоки в визуальном режиме на 4 пробела с помощью клавиш < и >
set shiftwidth=2

" Включить автоотступ
set autoindent

"=============НАСТРОЙКИ СВОРАЧИВАНИЯ БЛОКОВ КОДА (фолдинг)============="

map <F4> <esc>:call SWITCHFOLD()<cr>
function SWITCHFOLD()
    if &foldmethod=="marker"
        set foldmethod=syntax
        return
    endif
    if &foldmethod=="syntax"
        set foldmethod=indent
        return
    endif
    if &foldmethod=="indent"
        set foldmethod=manual
        return
    endif
    if &foldmethod=="manual"
        set foldmethod=marker
        return
    endif
endfunction
"=============================================================================="

"set foldenable " отклключить фолдинг по умолчанию
set foldmethod=syntax " определять блоки на основе синтаксиса файла
"set foldmethod=indent " определять блоки на основе отступов
set foldnestmax=4       "deepest fold is 4 levels
"set foldcolumn=10 " показать полосу для управления сворачиванием
"set foldlevel=1 " Первый уровень вложенности открыт, остальные закрыты
"set foldopen=all " автоматическое открытие сверток при заходе в них
"set nocompatible
"hi Folded ctermbg=242
" }}}

" Горячие клавиши {{{
" }}}
