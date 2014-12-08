#!/bin/sh

set -e
set -x
export DEBIAN_FRONTEND=noninteractive
alias aptinstall="apt-get install --no-install-recommends --yes"

apt-get update
apt-get dist-upgrade
aptinstall wget daemontools haproxy  # daemontools for fghack
sed -i -e 's/#source s_net {.*/source s_net { udp(ip(127.0.0.1) port(514)); };/' /etc/syslog-ng/syslog-ng.conf
rm -rf /var/lib/apt/lists/*
