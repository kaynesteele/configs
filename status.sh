while true;
    dateVar=$(date +"%m/%d/%Y")
    bat=$(cat /sys/class/power_supply/BAT0/capacity)
    batStatus=$(cat /sys/class/power_supply/BAT0/status)
    time=$(date +'%r')
    diskUsage=$(df -h / | awk '{print $4}' | grep -e "[0-9]\{1,\}G")
    #ip=$(ifconfig |  grep -A 1 'wlp3s0' | tail -1 | cut -d ':' -f 2 | awk '{print $2}') 
    #ip1=$(ifconfig |  grep -A 1 'enp0s25' | tail -1 | cut -d ':' -f 2 | awk '{print $2}') 
do
        xsetroot -name "$dateVar | $time | $bat% | $diskUsage"
done
