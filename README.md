[![asciicast](https://asciinema.org/a/143308.png)](https://asciinema.org/a/143308)

## How to install
This plugin is 3rd-party plugin of [ime.vim](https://github.com/pi314/ime.vim), and the plugin is personally customized for Colemak-3beolsik. No layouts are supported yet except this layout.

### Using [vim-plug](https://github.com/junegunn/vim-plug)
```vim
" Add these 2 lines between `plug#begin` and `plug#end`.
Plug 'pi314/ime.vim'
Plug 'xnuk/hangul-ime'

" Add 'hangul' in g:ime_plugins array
let g:ime_plugins = ['hangul']

" You'd better set these options. Below are the example.
" Type `:help ime.vim` for more details.
" In this example, press <C-h> to input Hangul, and <C-e> to input Alphabet back again.
let g:ime_toggle_english = '<C-e>'
let g:ime_cancel_input = '<C-i>'
let g:ime_select_mode = '<C-h>'
```

