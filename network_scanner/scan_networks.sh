#!/usr/bin/bash

network_prefix="$1"

if [ -z "$network_prefix" ]; then
    echo "Usage: $0 <network-prefix>"
    echo "Example: $0 192.168.1"
    exit 1
fi

for num in {1..254}; do
    ip="${network_prefix}.${num}"

    if ping -c 1 -W 1 "$ip" > /dev/null 2>&1; then
        echo "$ip is reachable"
    fi
done