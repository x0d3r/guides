# Vim Tips

## fast .vimrc config
```shell 
syntax on
set smartindent 
set autoindent
set paste
set nowrap  
set ts=2 sw=2 sts=2 et nu 
set pastetoggle=<F2>
```

## Useful cmds
```vim
" show config
:set 

" Move line 
dd -> v -> p

" Replace content
:%s/foo/bar/g 	  " all lines
:s/foo/bar/g	  " current line
:%s/foo/bar/gc 	  " each line with confirmation
:%s/\t/ /g        " replace tabs with spaces

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

" Deleting
x 	  " delete current char
dd	  " delete current line
5dd	  " delete five lines
d$	  " delete until end of line
D	    " delete until end of line
d0 	  " delete to beginning of line

dw   	" delete word
diw  	" delete inside word
daw	  " delete around the word (includes space before the next word)

dt<char   " deletes from cursor o specified char
daw 	    " delete the word under the cursor
caw	    " delete the word under the cursor and put you in insert mode
```

## Resources

https://alvinalexander.com/linux/vi-vim-delete-line-commands-to-end/
