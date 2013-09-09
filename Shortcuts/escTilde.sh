# swap Escape/grave only

xmodmap -e "keycode 9 = grave"
xmodmap -e "keycode 49 = Escape asciitilde"

# set CapsLock as Control

xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'keysym Caps_Lock = Control_L'
xmodmap -e 'add Control = Control_L'

