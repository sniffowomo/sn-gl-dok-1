#!/usr/bin/env bash
set -euo pipefail

# Terminal Colors
RE='\033[0;31m'
GR='\033[0;32m'
YE='\033[0;33m'
BL='\033[0;34m'
MA='\033[0;35m'
CY='\033[0;36m'
WH='\033[0;37m'
NC='\033[0m' # No Color

# Variables
t1='
-------------------------------------------------------
Testing out kasmweb vms and containers 
https://hub.docker.com/r/kasmweb/core-kali-rolling
Core Kali Rolling 
-------------------------------------------------------
'

c1='sudo docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=password kasmweb/core-kali-rolling:1.16.0
'

# Commands and banners
b1() {
    clear
    echo -e "${CY}${t1}${NC}"
    echo -e "${MA}${c1}${NC}"
}

e1() {
    echo -e "${GR}Executing....${NC}"
    $c1
}

# Execution sequence
b1
e1
