#!/bin/bash

# Target IP to check against
TARGET_IP="111.111.111.111"
# Domain to check
DOMAIN="test.com"
# Sleep interval between checks (in seconds)
INTERVAL=5

echo "Starting IP monitoring for $DOMAIN..."
echo "Expected IP: $TARGET_IP"

while true; do
    # Get current IP using dig (requires dig to be installed)
    CURRENT_IP=$(dig +short A $DOMAIN | grep -v '\.$' | head -n 1)
    
    # Check if we got an IP
    if [ -z "$CURRENT_IP" ]; then
        echo "Error: Unable to resolve $DOMAIN"
        exit 1
    fi
    
    # Compare current IP with target IP
    if [ "$CURRENT_IP" != "$TARGET_IP" ]; then
        echo "Error: IP changed!"
        echo "Expected: $TARGET_IP"
        echo "Current:  $CURRENT_IP"
        exit 1
    fi
    
    # Print status and wait
    echo "$(date): IP is still $CURRENT_IP"
    sleep $INTERVAL
done