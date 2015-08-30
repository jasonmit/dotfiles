#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

ulimit -S -n 4000
ulimit -n 4000

# Variables
host=$(hostname | sed 's/.local//g')
user=$(whoami)
OS="OS X $(sw_vers -productVersion)"
shell="$SHELL"
disk=`df | head -2 | tail -1 | awk '{print $5}'`
brew_packages="`brew list -l | wc -l | awk '{print $1 }'`"

echo "
[00;32m                 ###
[00;32m               ####                   [36m    User:(B[m $user
[00;32m               ###                    [36mHostname:(B[m $host
[00;32m       #######    #######             [36m  Distro:(B[m $OS
[00;33m     ######################           [36m  Kernel:(B[m $(uname)
[00;33m    #####################             [36m  Uptime:(B[m $(uptime)
[00;31m    ####################              [36m   Shell:(B[m $shell
[00;31m    ####################              [36m    Disk:(B[m $disk
[00;31m    #####################             [36mPackages:(B[m $brew_packages
[00;35m     ######################           
[00;35m      ####################           
[00;34m        ################             
[00;34m         ####     ##### (B[m


"
