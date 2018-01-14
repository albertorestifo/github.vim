# github.vim

github.vim is a vim theme, optimized for true colors enviroments. 
It tries to reproduce the theme used on GitHub as much as possible.

###### JavaScript

![JavaScript preview](https://i.imgur.com/WxYzdqg.png)

###### Go

![Go preview](https://i.imgur.com/UvGkchf.png)

Font used in screenshot: SF Mono at 12px

#### Support

The theme has only been testest and hand-crafted for the following languages/packages
combinations:

- [vim-javascript](https://github.com/pangloss/vim-javascript)
- [vim-jsx](https://github.com/mxw/vim-jsx)
- [vim-go](https://github.com/fatih/vim-go)
- json
- yaml
- html
- css
- vimscript

Help is wanted to add support for Ariline and more langauges.

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


```vim
colorscheme github
```

