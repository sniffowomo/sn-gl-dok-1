#!/usr/bin/env bash
set -euo pipefail

# Colors
RE='\e[0;31m'
GR='\e[0;32m'
BL='\e[0;34m'
NC='\e[0m' # No Color

# Variables
# cm1='docker container run -it --name proxy nginx:latest bash'
cm1='docker container run -it --name ub ubuntu:latest bash'

# commands
b1() {
    clear
    tx1='
----------------------------------------------------------------------
26. Getting shell inside a container
----------------------------------------------------------------------'
    echo -e "${GR}${tx1}${NC}"

}

e1() {
    echo -e "${RE}Executing command...${NC}"
    # echo -e "${RE} $cm1 ${NC}"
    echo -e "${RE} $cm2 ${NC}"
    echo -e "${GR} ---START-START-START-START-START------ ${NC}"
    # $cm1
    echo -e "${BL} --------------------------------- ${NC}"
    $cm2
    echo -e "${RE} ---DONE-DONE-DONE-DONE------ ${NC}"
}

# Execution sequence
b1
e1
