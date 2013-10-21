# conky
(conky | while read LINE; do xsetroot -name "$LINE"; done) &

# Desktop
# set left screen rotation
#xrandr --output DVI-D-0 --rotate right

# dwm
exec dwm

# openbox
#exec openbox-session

# if .Xmodmap exists use it 
if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
fi
