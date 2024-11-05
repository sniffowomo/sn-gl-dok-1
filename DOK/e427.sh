#!/usr/bin/env bash
set -euo pipefail

# Colors
RE='\e[0;31m'
GR='\e[0;32m'
BL='\e[0;34m'
NC='\e[0m' # No Color

# Variables
# cm1='docker container run -it --name proxy nginx:latest bash'
# cm2='docker container run --rm -it --name ub ubuntu:latest bash'
# cm3='docker container run -it --name ub leplusorg/kali:latest bash'
# cm4='docker container run -it --name kl kasmweb/core-kali-rolling bash'
# cm5='docker container run -it --name al alpine sh'

# commands
b1() {
    clear
    tx1='
----------------------------------------------------------------------
27. Docker Networks: Concepts for private and Public comms in containers
----------------------------------------------------------------------'
    echo -e "${GR}${tx1}${NC}"

}

e1() {
    echo -e "${RE}Executing command...${NC}"
    # echo -e "${RE} $cm1 ${NC}"
    # echo -e "${RE} $cm2 ${NC}"
    # echo -e "${RE} $cm2 ${NC}"
    # echo -e "${RE} $cm3 ${NC}"
    echo -e "${RE} $cm5 ${NC}"
    echo -e "${GR} ---START-START-START-START-START------ ${NC}"
    $cm5
    echo -e "${BL} --------------------------------- ${NC}"
    # $cm4
    echo -e "${RE} ---DONE-DONE-DONE-DONE------ ${NC}"
}

# Execution sequence
b1
e1
