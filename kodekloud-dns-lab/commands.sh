#!/usr/bin/env bash
#first see what is inside /etc/resolv.cof
cat /etc/resolv.conf

# Set Google DNS
sudo sed -i '/^nameserver/d' /etc/resolv.conf
echo 'nameserver 8.8.8.8' | sudo tee -a /etc/resolv.conf

# Change resolution order: DNS first, then hosts
sudo sed -i 's/^hosts:.*/hosts: dns files/' /etc/nsswitch.conf

# Verify
echo "--- /etc/resolv.conf ---"
cat /etc/resolv.conf
echo "--- nsswitch hosts line ---"
grep '^hosts:' /etc/nsswitch.conf
