highlight clear
let g:colors_name="cvchroma"

set background=dark
if exists("syntax_on")
  syntax reset
endif

highlight Code       ctermbg=black     ctermfg=lightgreen guibg=black      guifg=lightgreen
highlight Comment                      ctermfg=white                       guifg=white
highlight Constant                     ctermfg=lightgreen                  guifg=lightgreen
highlight Cursor     ctermbg=lightgrey                    guibg=lightgrey
highlight Directory                    ctermfg=lightcyan                   guifg=lightcyan
highlight Done       ctermbg=green     ctermfg=black      guibg=green      guifg=black
highlight Error      ctermbg=white     ctermfg=red        guibg=white      guifg=red
highlight ErrorMsg   ctermbg=darkred   ctermfg=white      guibg=darkred    guifg=white
highlight Future     ctermbg=lightblue ctermfg=black      guibg=lightblue  guifg=black
highlight Identifier                   ctermfg=lightcyan                   guifg=lightcyan
highlight Idle       ctermbg=brown     ctermfg=black      guibg=brown      guifg=black
highlight Ignore                       ctermfg=black                       guifg=black
highlight IntSearch  ctermbg=yellow    ctermfg=black      guibg=yellow     guifg=black
highlight LineNr                       ctermfg=yellow                      guifg=yellow
highlight List                         ctermfg=lightblue                   guifg=lightblue
highlight ListItem                     ctermfg=lightcyan                   guifg=lightcyan
highlight Marker     ctermbg=blue      ctermfg=white      guibg=blue       guifg=white
highlight MoreMsg                      ctermfg=lightgreen                  guifg=lightgreen
highlight NonText                      ctermfg=blue                        guifg=blue
highlight Normal     ctermbg=black     ctermfg=green      guibg=black      guifg=green
highlight Note       ctermbg=black     ctermfg=white      guibg=black      guifg=white
highlight Number                       ctermfg=grey                        guifg=grey
highlight PreProc                      ctermfg=lightblue                   guifg=lightblue
highlight Question                     ctermfg=lightgreen                  guifg=lightgreen
highlight Search     ctermbg=yellow    ctermfg=black      guibg=yellow     guifg=black
highlight Special                      ctermfg=lightgrey                   guifg=lightgrey
highlight SpecialKey                   ctermfg=lightblue                   guifg=lightblue
highlight Statement                    ctermfg=lightblue                   guifg=lightblue
highlight String                       ctermfg=grey                        guifg=grey
highlight Title                        ctermfg=white                       guifg=white
highlight Todo       ctermbg=yellow    ctermfg=black      guibg=yellow     guifg=black
highlight Type                         ctermfg=lightgreen                  guifg=lightgreen
highlight Visual     ctermbg=green     ctermfg=black      guibg=green      guifg=black
highlight WarningMsg                   ctermfg=lightred                    guifg=lightred

highlight StatusLine   term=reverse cterm=reverse gui=reverse
highlight StatusLineNC term=reverse cterm=reverse gui=reverse
