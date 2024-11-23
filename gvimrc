" Options
"set shiftwidth=4
"set tabstop=4
"set noexpandtab
set noincsearch
set hlsearch
"set smartindent
set mousehide
set ignorecase
set smartcase
set wrap
set linebreak
set makeprg=lualatex
"set matchpairs+=<:>
set guioptions-=mT
set suffixesadd=.tex
colorscheme torte
syntax on
" Commands
command -nargs=1 Fi :vimgrep /<args>/j **/*.tex
" Key mapping
nnoremap <S-F1> :source gvimrc
nnoremap <M-F1> :set number!
nnoremap <F4> :edit %:h/
nnoremap <S-F4> :tabnew %:h/
nnoremap <F5> :call jobstart(['mupdf','pnl.pdf'])
nnoremap <F7> :copen
nnoremap <S-F7> :cclose
nnoremap <C-F7> :Fi :copen
nnoremap <F8> :update:make pnl
inoremap <F8> :update:make pnl
nnoremap <F9> :update:!biber pnl
inoremap <F9> :update:!biber pnl
nnoremap <F10> :ls
nnoremap <F12> :set spell spelllang=en_us
nnoremap <S-F12> :set nospell
nnoremap <C-s> :write
inoremap <C-s> :write
nnoremap <M-Up> :.move-2
nnoremap <M-Down> :.move+1
nnoremap <S-Insert> :copy.
nnoremap <S-Delete> :delete
nnoremap <Leader>o o
nnoremap <Leader>O O
nnoremap <Leader>/ :setlocal formatoptions-=ro
nnoremap <Leader>r :edit gvimrc
nnoremap <Leader>n :edit /home/shared/Programs/Vim Stuff/Docs/vim_quick_notes.txt
function! CommentToggle()
	let b:comment_leader = '%~'
	execute ':silent! s/\([^ ]\)/' . escape(b:comment_leader,'\/~') . ' \1/'
	execute ':silent! s/^\( *\)' . escape(b:comment_leader,'\/~') . ' \?' . escape(b:comment_leader,'\/~') . ' \?/\1/'
endfunction
noremap <Leader><Space> :call CommentToggle()
" Digraphs
digraphs Dd 7692 dd 7693 Ld 7734 ld 7735 Md 7746 md 7747 Nd 7750 nd 7751 Td 7788 td 7789
" For NeoVim
if exists('g:GuiLoaded')
	let loaded_vifm=1
	set mouse=nvi
	set clipboard+=unnamedplus
	GuiFont DejaVu Sans Mono:h10
	nnoremap <F3> :mksession! nvs.vim
	nnoremap <F11> :call GuiWindowFullScreen(!GuiWindowFullScreen)
	inoremap <F11> :call GuiWindowFullScreen(!GuiWindowFullScreen)
endif
