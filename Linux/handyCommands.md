# This will change the hdmi to the left of normal screen. 
	First selected screen goes left or right of the second selected screen
	xrandr --output HDMI-0 --auto --left-of DP-0

# This will change screen brightness
	where the DP-0 is the selected screen
	xrandr --output DP-0 --brightness 1.08

# to disconect any screen
	xrandr --output HDMI1 --off

# wifi controler
	nmtui # to connect to wifi and paste password

# kill a processess
	ps -ae # see full list of running processess with there PID
	kill PIDNumber # where the number is the process you like to kill
