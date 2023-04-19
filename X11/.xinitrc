[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources # for xterm & urxvt

xset r rate 180 200

# run xrandr to get all outputs and modes
xrandr --output Virtual1 --mode 1920x1080 --rate 60
picom --experimental-backends &
# emacs --daemon &
# urxvtd &
feh --bg-center ~/Downloads/wallpapers/pastel.jpg &
warpd &

exec awesome # must always be last line