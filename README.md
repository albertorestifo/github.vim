# github.vim

github.vim is a vim theme, optimized to neovim. It tries to reproduce the
theme used on GitHub as much as possible.

![Preview](https://i.imgur.com/cdxSVlZ.png)

Font used in screenshot: [Hack](https://github.com/chrissimpkins/Hack) at 12px

#### Please note

I only tested the theme in a limited set of languages/packages:

- [vim-javascript](https://github.com/pangloss/vim-javascript)
- [vim-jsx](https://github.com/mxw/vim-jsx)
- [vim-go](https://github.com/fatih/vim-go)
- json
- yaml
- html
- css
- vimscript
- [vim-airline](https://github.com/vim-airline/vim-airline)

If a language you use does not render correctly or is not accurate please open
an issue, providing a Gist or file in a repo I can use as reference for
adjusting the colors.

Contributions are welcome!

## Installation

All major plugin managers are supported:

#### Pathogen

```
$ git clone https://github.com/albertorestifo/github.vim.git ~/.vim/bundle/github.vim
```

#### NeoBundle

```
NeoBundle 'albertorestifo/github.vim'
```

#### Vundle

```
Plugin 'albertorestifo/github.vim'
```

#### Plug

```
Plug 'albertorestifo/github.vim'
```

#### Manual

Copy all the filed in your `~/.vim` or `~/.config/nvim` directory


## Configuration

For neovim:

```vim
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

syntax enable

colorscheme github
```

For vim:

```vim
" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
 set termguicolors
endif

syntax enable

colorscheme github
```

There's a theme for `vim-airline`, enable it with:

```vim
let g:airline_theme='github'
```

