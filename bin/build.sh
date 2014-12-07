#!/bin/sh

set -e
set -x
export DEBIAN_FRONTEND=noninteractive
alias aptinstall="apt-get install --no-install-recommends --yes"

apt-get update
apt-get dist-upgrade
aptinstall wget daemontools haproxy  # daemontools for fghack
rm -rf /var/lib/apt/lists/*
