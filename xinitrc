xset b off
~/status.sh > /dev/null &
exec feh --randomize --bg-scale ~/wallpapers/* &
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session dwm
