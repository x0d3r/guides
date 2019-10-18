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
xterm*foreground: grey
xterm*loginShell: true
xterm*rightScrollBar: true
xterm*title: XTerm
xterm*iconName: XTerm
xterm*saveLines: 50000
xterm*jumpScroll: true
xterm*selectToClipboard: true
xterm*scrollBar: true
xterm*scrollTtyOutput: false
xterm*scrollKey: true
XTerm*scaleHeight: 1.01
xterm*alwaysUseMods: true
xterm*metaSendsEscape: true
xterm*utf8Title: true
xterm*visualbell: true
xterm*bellIsUrgent: true
```
