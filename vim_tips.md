# Vim Tips

## fast .vimrc config
```shell 
syntax on
set smartindent 
set autoindent

set number
set et
set sw=2 ts=2 sts=2
```

## Some useful cmds
```vim
" Move line 
dd -> v -> p

" Replace content
:%s/foo/bar/g 	  " all lines
:s/foo/bar/g	  " current line
:%s/foo/bar/gc 	  " each line with confirmation

" Moving
45 -> G   " Go to line
gg        " Go to start
GG        " Go to end

f<char>	  " forwards to char
F<char>	  " backwards to char

" Folding
zR	" Open all folds
zM	" Close all folds
zo	" Open fold under current cursor
zc	" Close fold under current cursor
```
