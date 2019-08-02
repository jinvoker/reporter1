echo "REPORTER : The Bash System Information Tool"
echo "-------------------------------------------"
machine=$(whoami)"@"$(uname -n)

kernel=$(uname -r)
architecture=$(uname -m)
host=$(uname -n)
distro=$(lsb_release -d | cut -f 2 | cut -d" " -f -3) # Has to be worked out
codename=$(lsb_release -d | cut -f 2 | cut -d" " -f 4)
shell=$(echo $SHELL |cut -b 6-)" "$(echo $BASH_VERSION)
packages=$(dpkg -l | wc -l)
resolution=$(xdpyinfo | grep 'dimension' | cut -b 18-34)
up=$(uptime | cut -b 13-18)

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
echo""
