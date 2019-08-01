echo "REPORTER : The Bash System Information Tool"
echo "-------------------------------------------"

kernel=$(uname -r)
architecture=$(uname -m)
host=$(uname -n)
distro=$(lsb_release -d | cut -f 2 | cut -d" " -f -3) # Has to be worked out
codename=$(lsb_release -d | cut -f 2 | cut -d" " -f 4)
shell=$(echo $SHELL |cut -b 6-)" "$(echo $BASH_VERSION)
packages=$(dpkg -l | wc -l)
# Print the preprocessed system info.

echo "KERNEL       :" \ $kernel 
echo "ARCHITECTURE :" \ $architecture
echo "HOSTNAME     :" \ $host
echo "DISTRO       :" \ $distro
echo "CODENAME     :" \ $codename
echo "SHELL        :" \ $shell
echo "PACKAGES     :" \ $packages
