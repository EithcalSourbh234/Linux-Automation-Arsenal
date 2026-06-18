#!/bin/bash

echo "======================================="
echo " Starting Network Reconnaissance Sweep "
echo "======================================="

for target in {1..5}
do
    ping -c 1 -W 1 192.168.1.$target
done
