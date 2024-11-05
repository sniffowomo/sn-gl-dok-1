#!/bin/bash
docker service create \
    --name=viz \
    --publish=8080:8080/tcp \
    --constraint=node.role==manager \
    --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
    bretfisher/visualizer

# ASCII art
echo "   _____      _      ____  _____ _______ "
echo "  / ____|    | |    / __ \|  __ \__   __|"
echo " | |       | |   | |  | | | | | | | "
echo " | |       | |   | |  | | | | | | | "
echo " | |____   | |___| |__| | | | | | | "
echo "  \_____|   \_____|_____/ |_| |_| |_| "
