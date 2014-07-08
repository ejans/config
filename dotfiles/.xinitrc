# conky
(conky | while read LINE; do xsetroot -name "$LINE"; done) &

# Desktop
# set left screen rotation
#xrandr --output DVI-D-0 --rotate right
# set dpi lower
#xrandr --dpi 80
xrandr --dpi 90

# dwm
exec dwm

# openbox
#exec openbox-session

# if .Xmodmap exists use it 
if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
fi
