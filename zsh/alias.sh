#!/usr/bin/env sh

echo "alias loading ..."

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# rsync
alias rsync-copy="rsync -avz --progress -h"
alias rsync-move="rsync -avz --progress -h --remove-source-files"
alias rsync-update="rsync -avzu --progress -h"
alias rsync-synchronize="rsync -avzu --delete --progress -h"

# get top process eating memory
alias psmem='ps -e -orss=,args= | sort -b -k1,1n'
alias psmem10='ps -e -orss=,args= | sort -b -k1,1n| head -10'
# get top process eating cpu if not work try excute : export LC_ALL='C'
alias pscpu='ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1 -nr'
alias pscpu10='ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1 -nr | head -10'
# top10 of the history
alias hist10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'

# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/systemadmin/systemadmin.plugin.zsh
# directory LS
dls () {
    print -l *(/)
}

psgrep() {
    ps aux | grep "${1:-.}" | grep -v grep
}

# Clear zombie processes
clrz() {
    ps -eal | awk '{ if ($2 == "Z") {print $4}}' | kill -9
}

# Sort connection state
sortcons() {
    netstat -nat |awk '{print $6}'|sort|uniq -c|sort -rn
}

# View all 80 Port Connections
con80() {
    netstat -nat|grep -i ":80"|wc -l
}

# top20 of Find the number of requests on 80 port
req20() {
    netstat -anlp|grep 80|grep tcp|awk '{print $5}'|awk -F: '{print $1}'|sort|uniq -c|sort -nr|head -n20
}

# top20 of Using tcpdump port 80 access to view
http20() {
    sudo tcpdump -i eth0 -tnn dst port 80 -c 1000 | awk -F"." '{print $1"."$2"."$3"."$4}' | sort | uniq -c | sort -nr |head -20
}

# top20 of Find time_wait connection
timewait20() {
    netstat -n|grep TIME_WAIT|awk '{print $5}'|sort|uniq -c|sort -rn|head -n20
}

# top20 of Find SYN connection
syn20() {
    netstat -an | grep SYN | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -nr|head -n20
}

# Printing process according to the port number
port_pro() {
    netstat -ntlp | grep "${1:-.}" | awk '{print $7}' | cut -d/ -f1
}

# top10 of gain access to the ip address
accessip10() {
    awk '{counts[$(11)]+=1}; END {for(url in counts) print counts[url], url}' "$(retlog)"
}

# top20 of Most Visited file or page
visitpage20() {
    awk '{print $11}' "$(retlog)"|sort|uniq -c|sort -nr|head -20
}
