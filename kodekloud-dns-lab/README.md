# KodeKloud DNS Resolution Lab

## Objective
Configure the system to use Google's DNS server and change hostname resolution order.

## Tasks Completed
- Changed DNS server to `8.8.8.8`
- Changed resolution order to DNS first, then `/etc/hosts`

## Environment
- Host: `caleston-lp10`
- User: `bob`
- Files modified:
  - `/etc/resolv.conf`
  - `/etc/nsswitch.conf`

## 1. Change DNS Server to Google DNS

Command used:

```bash
sudo sed -i '/^nameserver/d' /etc/resolv.conf
echo 'nameserver 8.8.8.8' | sudo tee -a /etc/resolv.conf
