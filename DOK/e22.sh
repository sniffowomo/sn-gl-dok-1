#!/usr/bin/env bash
set -euo pipefail

# Colors
RE='\e[0;31m'
GR='\e[0;32m'
BL='\e[0;34m'
NC='\e[0m' # No Color

# Variables
cm1='docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=true mysql'
cm2='docker container run -d --name webserver -p 8080:80 httpd'
cm3='docker container run -d --name proxy -p 80:80 nginx'

# commands
b1() {
    clear
    tx1='
----------------------------------------------------------------------
22 Assignment- Doing multipe containers
----------------------------------------------------------------------'

}

e1() {
    echo -e "${RE}Executing command...${NC}"

    echo -e "${RE} $cm1 ${NC}"
    echo -e "${RE} $cm2 ${NC}"
    echo -e "${RE} $cm3 ${NC}"

    echo -e "${GR} ---START-START-START-START-START------ ${NC}"
    $cm1
    echo -e "${BL} --------------------------------- ${NC}"
    $cm2
    echo -e "${BL} --------------------------------- ${NC}"
    $cm3
    echo -e "${BL} --------------------------------- ${NC}"
    echo -e "${RE} ---DONE-DONE-DONE-DONE------ ${NC}"
}

# Execution sequence
b1
e1
