# xterm config guide

## Basics

```shell
# Edit ~/.Xdefaults config
vim ~/.Xdefaults 

# Merge changes
xrdb -merge ~/.Xdefaults

# After editing .Xdefaults it may be reloaded with:
xrdb -load ~/.Xdefaults
```

## Config
```shell
xterm*VT100*geometry: 195x52
xterm*faceName: Monaco
xterm*faceSize: 12
xterm*font: -misc-fixed-small-r-normal--20-200-75-75-c-100-iso8859-1
xterm*background: black
xterm*foreground: white
xterm*loginShell: true
xterm*scrollBar: true
xterm*rightScrollBar: true
xterm*title: XTerm
xterm*iconName: XTerm
xterm*saveLines: 5000
xterm*jumpScroll: true
xterm*scrollTtyOutput: false
xterm*scrollKey: true
xterm*alwaysUseMods: true
xterm*metaSendsEscape: true
xterm*utf8Title: true
```
