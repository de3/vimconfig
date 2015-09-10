set clipboard=unnamed

" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    let g:ackprg = 'ag --nogroup --nocolor --column'
    runtime! common_config/*.vim
    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
" Setting up Vundle - the vim plugin bundler end

" THEME SETTINGS
  set background=dark
  colorscheme candypaper
  let g:airline_theme='light'
  set t_Co=256
  " highlight VertSplit    ctermbg=236
  " highlight ColorColumn  ctermbg=237
  highlight LineNr       ctermbg=232 ctermfg=15
  highlight CursorLineNr ctermbg=232 ctermfg=248
  highlight CursorLine   ctermbg=234
  " highlight StatusLineNC ctermbg=238 ctermfg=0
  " highlight StatusLine   ctermbg=240 ctermfg=12
  " highlight IncSearch    ctermbg=0   ctermfg=3
  " highlight Search       ctermbg=0   ctermfg=9
  " highlight Visual       ctermbg=3   ctermfg=0
  " highlight Pmenu        ctermbg=240 ctermfg=12
  " highlight PmenuSel     ctermbg=0   ctermfg=3
  " highlight SpellBad     ctermbg=0   ctermfg=1
  " highlight TabLineFill  ctermfg=LightGreen ctermbg=DarkGreen
  " highlight TabLine      ctermfg=Black 
  " highlight TabLineSel   ctermfg=Red ctermbg=Black
  " highlight Title        ctermfg=LightBlue
  " highlight Title        ctermfg=White
  " highlight Search cterm=NONE ctermfg=Black ctermbg=DarkYellow
" THEME SETTINGS

" FILE ASSOCIATE
  au BufNewFile,BufRead *.ejs set filetype=html
  au BufNewFile,BufRead *.mm set filetype=html
  au BufNewFile,BufRead *.blade.php set filetype=html
" FILE ASSOCIATE

" KEYBOARD MAP
  vmap <C-c> :w !pbcopy<cr><cr>
  " set mouse-=a
  " set nocp
  " filetype plugin on
  " noremap <Up> <NOP>
  " noremap <Down> <NOP>
  " noremap <Left> <NOP>
  " noremap <Right> <NOP>
  map <Esc>[B <Down>

