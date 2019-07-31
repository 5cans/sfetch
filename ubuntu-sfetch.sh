#!/bin/bash

# pretty much the same as every other 'fetch' program but less than a KiB

# __ DEFINING SYSTEM INFO __
hostname=$(uname -n)
kernel=$(uname -r)
distro=$(lsb_release -ds)
ip=$(wget http://ipecho.net/plain -O - -q ; echo)
up=$(uptime -p | sed 's/up //')
pack=$(dpkg -l | wc -l)

# __ PRINTING __
# using the ufetch logo because i like it
echo
echo '          _    ' $hostname 
echo '      ---(_)   ' $distro
echo '   _/  ---  \\ ' $kernel
echo '  (_) |   |  | ' $up
echo '   \\  --- _/  ' $pack 
echo '      ---\(_)  ' $ip
echo

# I will make one of these for every distro I (regularly) use in the future
