#!/bin/bash
echo "REPORTER : The Bash System Information Tool"
echo "-------------------------------------------"
machine=$(whoami)"@"$(uname -n)

kernel=$(uname -r)
architecture=$(uname -m)
host=$(uname -n)
distro=$(lsb_release -d | cut -f 2 | cut -d" " -f -3) 
codename=$(lsb_release -d | cut -f 2 | cut -d" " -f 4)
shell=$(echo $SHELL |cut -b 6-)" "$(echo $BASH_VERSION)
packages=$(dpkg -l | wc -l)
resolution=$(xdpyinfo | grep 'dimension' | cut -b 18-34)
up=$(uptime | cut -b 13-19)
memory="Total-"$(free -h | grep Mem | cut -d" " -f 13)" / Used-"$(free -h | grep Mem | cut -d" " -f 21) # display bug in few distros.
cpu=$(cat /proc/cpuinfo | grep "model name" | head -n 1 | cut -c 13-50)
gpu=$(lspci | grep "Display controller" | cut -c 28-145)
# Print the preprocessed system info.
echo""
echo "          "$machine
echo""
echo "KERNEL       :" \ $kernel 
echo "ARCHITECTURE :" \ $architecture
echo "HOSTNAME     :" \ $host
echo "DISTRO       :" \ $distro
echo "CODENAME     :" \ $codename
echo "SHELL        :" \ $shell
echo "PACKAGES     :" \ $packages
echo "RESOLUTION   :" \ $resolution
echo "UPTIME       :"\ $up
echo "RAM          :" \ $memory
echo "CPU          :"\ $cpu
echo "GPU          :"\ $gpu
echo ""
echo $'\e[49m'"    " $'\e[107m'"    "$'\e[49m'"    "$'\e[103m'"    "$'\e[49m'"    "$'\e[106m'"    "$'\e[49m'"    "$'\e[102m'"    "$'\e[49m'"    "$'\e[105m'"    "$'\e[49m'"    "$'\e[101m'"    "$'\e[49m'"    "$'\e[44m'"    "$'\e[49m'"    "
echo""
