#!/bin/bash

echo "installing stress tool..."
sudo dnf install -y stress

echo "Generating CPU load..."
stress --cpu 4 --timeout 60

echo "Load test completed."
echo "Check Netdata dashboard and alerts."
