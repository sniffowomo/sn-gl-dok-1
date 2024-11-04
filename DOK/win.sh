#!/usr/bin/env bash
set -euo pipefail

# Colors
RE='\e[0;31m'
GR='\e[0;32m'
BL='\e[0;34m'
NC='\e[0m' # No Color

# commands

b1() {
    clear
    tx1='
----------------------------------------------------------------------
Runnign Windows from docker hub using kvm directly inside docker 
https://hub.docker.com/r/dockurr/windows
----------------------------------------------------------------------'
    cm1='docker container run --publish 80:80 --detach nginx'
    echo -e "${GR}${tx1}${NC}"
    echo -e "$cm1"

}

e3() {
    clear
    c2='docker run -it --rm -p 8006:8006 --device=/dev/kvm --cap-add NET_ADMIN --stop-timeout 120 dockurr/windows
'
    echo -e "${BL}Executing command... Working with windowsimage${NC}"
    echo -e "$c2"

    $c2
}

e4() {
    clear
    c2='docker run -it --rm -p 8006:8006 --device=/dev/kvm --cap-add NET_ADMIN --stop-timeout 120 dockurr/macos
'
    echo -e "${BL}Executing command... Installing MAC${NC}"
    echo -e "$c2"

    $c2
}

# Execution sequence
e4
