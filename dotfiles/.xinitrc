# conky
(conky | while read LINE; do xsetroot -name "$LINE"; done) &

# dwm
exec dwm

# openbox
#exec openbox-session

# if .Xmodmap exists use it 
if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
fi

# set keyboard
#xkbcomp ~/Documents/.Shortcuts/output.xkb $DISPLAY
