.PHONY: dwm

dwm:
	sudo apt-get install libxft-dev libxinerama-dev
	[[ -e dwm ]] || git clone git@github.com:aweeraman/dwm.git
	cd dwm && make
