.PHONY: all

all: sl-dwm sl-dmenu sl-st sl-slstatus

deps:
	# dwm
	sudo apt-get install libxft-dev libxinerama-dev fonts-mononoki

sl-%:
	[[ -e $* ]] || git clone git@github.com:aweeraman/$*.git
	cd $* && make && sudo make install
