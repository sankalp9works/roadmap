#!/bin/bash


echo "Stopping Netdata..."
sudo systemctl stop netdata

echo "Removing Netdata..."
sudo apt remove --purge -y netdata

echo "Cleaning up leftover files..."
sudo rm -rf /etc/netdata /var/lib/netdata /var/log/netdata

echo "Cleanup completed."
