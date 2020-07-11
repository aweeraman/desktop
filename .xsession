xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --output HDMI-0 --mode 1920x1080 --rate 60
xrandr --output eDP-1-1 --mode 1920x1080 --rate 144
xrandr --output HDMI-0 --above eDP-1-1
xrandr --dpi 96

feh --bg-scale ~/Pictures/background.jpg &

xcompmgr -CcfF -I-.001 -O-.001 -D6 -t-1 -l-3 -r4.2 -o.5 &

slstatus &

redshift -t 6500:3500 &

dwm
