while true;
dateVar=$(date +"%m/%d/%Y")
bat=$(cat /sys/class/power_supply/BAT0/capacity)
batStatus=$(cat /sys/class/power_supply/BAT0/status)
time=$(date +'%r')
diskUsage=$(df -h / | awk '{print $4}' | grep -e "[0-9]\{1,\}G")
ip=$(ip route get 1.2.3.4 | awk '{print $7}') 
    do
        xsetroot -name "$dateVar | $time | $bat% | $diskUsage | $ip"
        sleep 1
    done
