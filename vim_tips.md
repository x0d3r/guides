## Vim Tips

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

" Folding
zR	" Open all folds
zM	" Close all folds
zo	" Open fold under current cursor
zc	" Close fold under current cursor
```
