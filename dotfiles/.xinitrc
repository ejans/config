# conky
(conky | while read LINE; do xsetroot -name "$LINE"; done) &

# Desktop
# set left screen rotation
#xrandr --output DVI-D-0 --rotate right
# set dpi lower
#xrandr --dpi 80

#TODO Test
#xrandr --dpi 90

# if .Xmodmap exists use it 
#if [ -f $HOME/.Xmodmap ]; then
#    /usr/bin/xmodmap $HOME/.Xmodmap
#fi

syndaemon -i 1 -K -d

# dwm
exec dwm

# openbox
#exec openbox-session
