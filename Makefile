.PHONY: all zathura ranger

all: sl-dwm sl-dmenu sl-st sl-slstatus sl-slock zathura ranger

zathura:
	sudo apt-get install zathura

ranger:
	sudo apt-get install ranger

deps:
	# dwm
	sudo apt-get install libxft-dev libxinerama-dev fonts-mononoki xcompmgr feh
	# slock
	sudo apt-get install libpam0g-dev

sl-%:
	[ -e $* ] || git clone git@github.com:aweeraman/$*.git
	cd $* && make && sudo make install
