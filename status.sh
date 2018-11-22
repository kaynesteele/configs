while true;
    dateVar=$(date +"%m/%d/%Y")
    time=$(date +'%r')
    cpuUsage=$(echo CPU: $[100-$(vmstat 1 2|tail -1|awk '{print $15}')]%)
    diskUsage=$(df -h / | awk '{print $4}' | grep -e "[0-9]\{1,\}G")
    ip=$(ifconfig |  grep -A 1 'wlp3s0' | tail -1 | cut -d ':' -f 2 | awk '{print $2}') 
    ip1=$(echo "| " ifconfig |  grep -A 1 'enp0s25' | tail -1 | cut -d ':' -f 2 | awk '{print $2}') 
do
    xsetroot -name "$dateVar | $time | $cpuUsage | $diskUsage | $ip "
    sleep 1
done
