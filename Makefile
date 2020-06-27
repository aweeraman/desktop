.PHONY: dwm dmenu st

all: dwm dmenu st

deps:
	# dwm
	sudo apt-get install libxft-dev libxinerama-dev

dwm:
	[[ -e dwm ]] || git clone git@github.com:aweeraman/dwm.git
	cd dwm && make && sudo make install

dmenu:
	[[ -e dmenu ]] || git clone git@github.com:aweeraman/dmenu.git
	cd dmenu && make && sudo make install

st:
	[[ -e st ]] || git clone git@github.com:aweeraman/st.git
	cd st && make && sudo make install
