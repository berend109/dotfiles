# dotfiles
backup of my personal dot files
<br><br><br>
# instructions
:exclamation::exclamation: currently using debian 12 and came from ubuntu/popos tested with those 3 :exclamation::exclamation:

## Get started with i3wm

	- download i3
    	- apt update
    	- apt install i3
    	- download this repo as zip
    	- extract in Downloads folder
    	- logout
    	- select wm (gear symbol next to login button)
    	- login
		- generate config file
		- select Mod key (alt/windows key)
	- setup
		- Mod + enter to open terminal
		- move the downloaded i3 and i3status folder to destination
			- cp ~/Downloads/dotfiles-master/i3 ~/.config/
			- cp ~/Downloads/dotfiles-master/i3status ~/.config/
		- install rofi to replace the somewat limited d-menu and make the config file work.
			- apt update
			- apt install rofi
		- Mod + shift + r to restart i3
		- Mod + d or Mod+o to open program or scroll through open windows.
  
## Get started with vim
	- download this repo
	- extract in downloads
	- open terminal
	- cp ~/Downloads/dotfiles-master/.vimrc ~/
	- open vim to see the effects.

## Get started with bash (custom settings in terminal)
	- download this repo
	- extract in downloads
	- open terminal
	- cp ~/Downloads/dotfiles-master/.bashrc ~/
	- cp ~/Downloads/dotfiles-master/.bash_aliases ~/
	- close and reopen terminal
