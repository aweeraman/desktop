.PHONY: all

all: sl-dwm sl-dmenu sl-st sl-slstatus sl-slock

deps:
	# dwm
	sudo apt-get install libxft-dev libxinerama-dev fonts-mononoki xcompmgr feh
	# slock
	sudo apt-get install libpam0g-dev

sl-%:
	[[ -e $* ]] || git clone git@github.com:aweeraman/$*.git
	cd $* && make && sudo make install
