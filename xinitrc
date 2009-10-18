#while
#do
#	date +%r\ %d,%b,%y
#done|

while true
do
	xsetroot -name "Vol: `amixer | grep Mono | head -2 | tail -1 | awk '{print $4}'` | $(date +%c) "
	sleep 1
done &
feh --bg-scale /media/Graphics/My_Pix/slide_show/18.jpg 
#uxterm &
#urxvt &
#firefox &
#conky -d -y 10 &
exec dwm 
#exec /home/anish/bin/dwm 2> /home/anish/dwm.err
#exec /media/Documents/Downloads/Decoration/dwm_files/dwm-5.6.1/dwm
