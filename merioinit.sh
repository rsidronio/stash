#!/bin/sh
#requires wmctrl

exec firefox &
until (wmctrl -l | grep Firefox | grep -v grep)
do 
    sleep 0.5
done
exec i3-msg '[class="(?i)firefox"] move to workspace 2' &

exec telegram-desktop &
until (wmctrl -l | grep Telegram | grep -v grep)
do 
    sleep 1
done
exec i3-msg '[class="(?i)telegram"] move to workspace 3' &

exec spotify &
until (wmctrl -l | grep Spotify | grep -v grep)
do 
    sleep 1
done
exec i3-msg '[class="(?i)Spotify"] move to workspace 4' &

exec code &
until (wmctrl -l | grep 'Visual Studio Code' | grep -v grep)
do 
    sleep 1
done
exec i3-msg '[class="(?i)code"] move to workspace 1' &
