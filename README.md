## How to install
This plugin is 3rd-party plugin of [ime.vim](https://github.com/pi314/ime.vim), and the plugin is personally customized for Colemak-3beolsik. No layouts are supported yet except this layout.

### Using [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'pi314/ime.vim'
Plug 'xnuk/hangul-ime'

let g:ime_plugins = ['hangul']

" You'd better set these options. Below are the example.
" Type `:help ime.vim` for more details.
" In this example, press <C-h> to input Hangul, and <C-e> to input Alphabet back again.
let g:ime_toggle_english = '<C-e>'
let g:ime_cancel_input = '<C-i>'
let g:ime_select_mode = '<C-h>'
```

