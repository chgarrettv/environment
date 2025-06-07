set nocompatible
filetype plugin on
set encoding=utf-8

" Plugins with vim-plug
call plug#begin()
" Use PlugInstall to install plugins.
" Use PlugUpdate to update plugins.

Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'ycm-core/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'vimwiki/vimwiki'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'blindFS/vim-taskwarrior'
Plug 'tools-life/taskwiki'

call plug#end()

" Spell Checking.
set nospell

" Basic Global Settings.
" Numbered lines.
set norelativenumber
set number
set ruler

" Indentation.
set autoindent
set smartindent
set tw=256

" Convert tabs to spaces.
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

autocmd FileType systemverilog :silent! setlocal tabstop=2 expandtab softtabstop=2 shiftwidth=2
autocmd FileType verilog :silent! setlocal tabstop=2 expandtab softtabstop=2 shiftwidth=2
autocmd FileType vhdl :silent! setlocal tabstop=2 expandtab softtabstop=2 shiftwidth=2

" Highlighting.
set cursorline
set hlsearch
set incsearch
if has('syntax')
  syntax on
endif

set listchars=tab:>\ ,trail:-,extends:>,precedes:<
set list

" Scrolling.
set scrolloff=8

" Split the current window for quickfix commands, but use open windows in the current tab first.
set switchbuf=useopen,split

augroup keep_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END

" Speed up macro rendering.
set lazyredraw

" Bash-like File Completion:
set wildmode=longest:list,full
set wildmenu

colorscheme cvchroma

" Templating

augroup templates
  autocmd!
  autocmd BufNewFile *.vhd 0r ~/.vim/templates/template.vhd
  autocmd BufNewFile *pkg.vhd %d
  autocmd BufNewFile *pkg.vhd 0r ~/.vim/templates/pkg_template.vhd
  autocmd BufNewFile *tb.vhd %d
  autocmd BufNewFile *tb.vhd 0r ~/.vim/templates/tb_template.vhd
  autocmd BufNewFile *comb.vhd %d
  autocmd BufNewFile *comb.vhd 0r ~/.vim/templates/comb_template.vhd

  " OSVVM Test Harness:
  autocmd BufNewFile *th.vhd %d
  autocmd BufNewFile *th.vhd 0r ~/.vim/templates/th_template.vhd

  " OSVVM Test Sequencer:
  autocmd BufNewFile *ts.vhd %d
  autocmd BufNewFile *ts.vhd 0r ~/.vim/templates/ts_template.vhd

  " OSVVM Verification Component:
  autocmd BufNewFile *vc.vhd %d
  autocmd BufNewFile *vc.vhd 0r ~/.vim/templates/vc_template.vhd

  "autocmd BufNewFile bytefield_*.tex 0r ~/.vim/templates/bytefield_template.tex
  "autocmd BufNewFile table_*.tex 0r ~/.vim/templates/table_template.tex
  "autocmd BufNewFile *.tex 0r ~/.vim/templates/template.tex
  autocmd BufNewFile *.todo 0r ~/.vim/templates/template.todo
augroup END

  " Mappings:
" General:
:nnoremap Q <nop>
:nnoremap ` '
:nnoremap * *''
:nnoremap # #''
:nnoremap '' ''zz
:nnoremap cs /todo\c<cr>:norm ''<cr>
:nnoremap <c-i> i<space><esc>r
:nnoremap <space> @
:nnoremap <space><space> za
:nnoremap 00 0w
" Open the linked file in a new vertical window.
:nnoremap gf <C-W>v<C-W>f<C-W>jZZ
" Open linked files in a new tab.
:nnoremap ft <C-W>gf
:nnoremap n nzz
:nnoremap N Nzz
" :nnoremap <left> :cprev<cr>/<cr>zz
" :nnoremap <right> :cnext<cr>/<cr>zz
" :nnoremap <up> :cfirst<cr>/<cr>zz
" :nnoremap <down> :clast<cr>/<cr>zz
:vnoremap <space> :norm @
:nnoremap j gj
:vnoremap j gj
:nnoremap k gk
:vnoremap k gk
:nnoremap ms :/<<<<<<<\\|=======\\|>>>>>>><cr>

" Leader:
:let mapleader = '\'

" Quicker searching:
:nnoremap <leader>g :g/\v
:vnoremap <leader>g :g/\v
:nnoremap <leader>G :v/\v
:vnoremap <leader>G :v/\v
:nnoremap <leader>f :s/\v/g<left><left>
:vnoremap <leader>f :s/\v
:nnoremap <leader>F :%s/\v/g<left><left>
:vnoremap <leader>F :s/\v/g<left><left>
:nnoremap <leader>; :<up><cr>
" Quick editing commands for .vimrc and tmux config:
:nnoremap <leader>ev :tabedit ~/.vimrc<cr>
:nnoremap <leader>ec :tabedit ~/.vim/colors/cvchroma.vim<cr>
:nnoremap <leader>iv :source ~/.vimrc<cr>
:nnoremap <leader>et :tabedit $MYTMUXPRESET<cr>
:nnoremap <leader>el :vsplit ~/Desktop/To_Do.todo<cr>
:nnoremap <leader>eb :tabedit ~/.bashrc<cr>
" Quick editing commands for altering register contents:
:nnoremap <leader>@ :let @='<left><left>
" Moving around the buffer stack, tabs, and splits:
:nnoremap <leader>W :w<cr>:bprevious<cr>
:nnoremap <leader>w <c-W>k
:nnoremap <leader>S :w<cr>:bnext<cr>
:nnoremap <leader>s <c-W>j
:nnoremap <leader>D gt
:nnoremap <leader>d <c-W>l
:nnoremap <leader>A gT
:nnoremap <leader>a <c-W>h
" Inserting command outputs:
:nnoremap <leader>c :r!
" Buffer stuff:
:nnoremap <leader>B :ls<cr>:buffer 
:nnoremap <leader>E :edit 
" Tab stuff:
:nnoremap <leader>t :tabedit 
:nnoremap <leader>T :tabedit %<cr>
":nnoremap <leader>T :argadd \|tab all<left><left><left><left><left><left><left><left>
:nnoremap <leader>M :tabm 
":nnoremap <leader>TF :tabm 0<cr>
":nnoremap <leader>TL :tabm 999<cr>
:nnoremap <leader>x :Tex<cr>
" QoL:
:nnoremap <leader><space> za
":nnoremap <leader>W :w<cr> "Replace
:nnoremap <leader>r :r \|norm<space>kJ<left><left><left><left><left><left><left><left>
:nnoremap <leader>R :w<cr>
":nnoremap <leader>m :make<cr>
":nnoremap <leader>M :w\|make<cr>
:nnoremap <leader>C :%s/\s\+$//e<cr>
" Splitting:
set splitright
:nnoremap <leader>v :vsplit 
:nnoremap <leader>V :vsplit %<cr>
:nnoremap <leader>h :split 
:nnoremap <leader>H :split %<cr>
" Diff mode:
:nnoremap <leader>6 :vertical diffsplit 
:nnoremap <leader>U :set nocursorbind<cr>:set noscrollbind<cr>:diffoff<cr>
" Quickfix menu:
:nnoremap <leader>q :copen<cr>
:nnoremap <leader>Q :noautocmd vimgrep /
:nnoremap <leader>j :cnext<cr><C-W>jZZ
:nnoremap <leader>k :cprevious<cr>
" Narrowing:
" :vnoremap <leader>n y:let [f,s,v]=[&ft,&syn,getregtype('@"')]<CR>:tabnew<CR>Vp:set ft=<c-r>=f<CR> syn=<c-r>=s<CR><CR>:nnoremap <buffer> <leader>N :let @"=v<C-r>="<"<CR>CR>gg0@"G$d:q!<C-r>="<"<CR>CR>gvp<CR>
:vnoremap <leader>n :norm moomp<esc>'oVGzf'pVggzf'o
:vnoremap <leader>N :norm mpomo<esc>'oVGzf'pVggzf'o
" Insert blank lines:
:nnoremap <leader>o :norm o<cr>
:nnoremap <leader>O :norm O<cr>
" Set file type to systemverilog:
:nnoremap <leader>sv :set ft=systemverilog<cr>
" Tabularizing:
:nnoremap <leader>l :Tabularize /
:vnoremap <leader>l :Tabularize /
:nnoremap <leader>L :Tabularize //l0<left><left><left>
:vnoremap <leader>L :Tabularize //l0<left><left><left>
" UltiSnips:
let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
:nnoremap <leader>u :UltiSnipsEdit<cr>
" YouCompleteMe:
let g:ycm_key_list_select_completion = ['<tab>', '<down>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<up>']
" VimWiki:
:nnoremap <leader>p :vsplit %<cr>:VimwikiIndex<cr>
:nnoremap <leader>P :VimwikiTabIndex<cr>
" Use markdown for VimWiki:
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0
let g:vimwiki_folding = ''
" TaskWiki:
let taskwiki_dont_fold = 'yes'

" Local Leader:
:let maplocalleader = '-'

augroup To_Do_Mappings
  autocmd!
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>D :norm $bCDone.<esc>
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>o :norm $bCObsolete.<esc>
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>b :norm $bCBlocked.<esc>
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>d :norm $bCDoing.<esc>
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>f A Future.<esc>
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>n :norm I// <esc>
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>t :norm I## <esc>
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>i :norm I-- <esc>
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>r :norm ^3x<cr>
  " Create a new task with date and task number:
  autocmd BufEnter *.todo nnoremap <buffer> <localleader>T :norm mtGwwy2w<c-a>''oTask <esc>pA, <esc>:let @t = strftime('%b. %d:')<cr>"tpA 
augroup END

:augroup Comments
  :autocmd!
  autocmd FileType c,cpp,verilog,systemverilog let b:comment_leader = '// '
  autocmd FileType python,sh let b:comment_leader = '# '
  autocmd FileType vhdl let b:comment_leader = '-- '
  autocmd FileType tex let b:comment_leader = '% '
  autocmd FileType vim let b:comment_leader = '" '

  if !exists("b:comment_leader")
    nnoremap <silent> <localleader>u <C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
    nnoremap <silent> <localleader>U <C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
    nnoremap <silent> <localleader>c :execute "norm o" . b:comment_leader<cr>:start insert!<cr>
    nnoremap <silent> <localleader>C :execute "norm O" . b:comment_leader<cr>:start insert!<cr>
    nnoremap <silent> <localleader>t :execute "norm o" . b:comment_leader . "TODO: "<cr>:start insert!<cr>
    nnoremap <silent> <localleader>T :execute "norm O" . b:comment_leader . "TODO: "<cr>:start insert!<cr>
    nnoremap <silent> <localleader>f :execute "norm o" . b:comment_leader . "FUTURE: "<cr>:start insert!<cr>
    nnoremap <silent> <localleader>F :execute "norm O" . b:comment_leader . "FUTURE: "<cr>:start insert!<cr>
  endif
:augroup END

" Insert Mode QoL:
:inoremap jk <esc>
:inoremap jK <esc>
:inoremap Jk <esc>
:inoremap JK <esc>

" Abbreviations:
:iabbrev adn and
:iabbrev jsut just
:iabbrev teh the
:iabbrev pn \pn{}
:iabbrev rmw read-modify-write
:iabbrev Rmw Read-modify-write
:iabbrev RMW read-modify-write
:iabbrev chgv Claude Garrett V
:iabbrev dwonto downto
:iabbrev a4 AXI4
:iabbrev a4l AXI4-Lite
:iabbrev a4s AXI4-Stream
:iabbrev ie i.e.

  " To Do List Stuff:

" To Do List Highlighting.
set iskeyword+=.

augroup ToDo
  autocmd!

  " Grey
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Code', '`\S*`', -3)
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Code', '\v`\S`|<[A-Z]+_+[A-Z_]+>', -3)

  " White
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Note', '\/\/.*', -4)

  " Light Green
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Number', '\v0[bxo][0-9a-fA-F_]+|[0-9,]*\.?[0-9]+', -3)
"'0x\[\da-fA-F_\]*\[\da-fA-F\]\|\d\[\d,\]*\.?\[\d\]+'
  " Light Blue
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('List', '##.*', -5)

  " Light Cyan
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('ListItem', '\v--.*', -5)
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('ListItem', '\v^\s*[0-9a-fA-F_,]*\. .*', -2)

  " Green
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Done', 'Done\.\|Obsolete\.\|Finished\.\|Completed\.\|Complete\.\|N/A\|v/\|\\v\|True\.\|Retired\.', -2)

  " Blue
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Future', 'Future\.\|Delayed\.\|Postponed\.\|Holding\.\|Hold\.\|Later\.\|Waiting\.\|Wait\.\|Considering\.\|Maybe\.', -2)
  " Global
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.*    :silent! call matchadd('Future', 'FUTURE:\?', -2)

  " Blue
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Marker', '\vMarker\.|Queue:|Here\.|Pointer\.|Current\.', -1)

  " Brown
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Idle', 'Idle\.\|Background\.\|Whenever\.\|Passive\.', -2)

  " Yellow
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Todo', 'Doing\.\|Working on\.\|In progress\.\|WIP\.\|WIP\|Next\.\|Testing\.\|Open\.\|Unclear\.', -2)
  " Global
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.*    :silent! call matchadd('Todo', 'TODO:\?', -2)

  " Red
  autocmd WinEnter,VimEnter,BufEnter,BufRead *.todo :silent! call matchadd('Error', 'Left off\.\|Left off here\.\|Prioritize\.\|Priority\.\|Urgent\.\|Do now\.\|Blocked\.\|Tonight\.\|Before you leave\.\|False\.', -1)
augroup END

  " Fun:
"augroup Fun
"  autocmd UserGettingBored * :echom "You have to say the magic word!"
"augroup END
