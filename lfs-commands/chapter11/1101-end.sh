#!/bin/bash
set +h
set -e

echo 11.0-100-systemd > /etc/lfs-release

cat > /etc/lsb-release << "EOF"
DISTRIB_ID="Linux From Scratch"
DISTRIB_RELEASE="11.0-100-systemd"
DISTRIB_DESCRIPTION="Linux From Scratch"
EOF
echo "DISTRIB_CODENAME=\"$CODENAME\"" >> /etc/lsb-release

cat > /etc/os-release << "EOF"
NAME="Linux From Scratch"
VERSION="11.0-100-systemd"
ID=lfs
PRETTY_NAME="Linux From Scratch 11.0-100-systemd"
EOF
echo "VERSION_CODENAME=\"$CODENAME\"" >> /etc/os-release

