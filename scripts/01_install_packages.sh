#!/usr/bin/env bash
# scripts/01_install_packages.sh
# Update repositories and install LAMP packages
set -xeu
export DEBIAN_FRONTEND=noninteractive

apt-get update -y
apt-get install -y \
  apache2 \
  apache2-doc \
  mariadb-server \
  mariadb-client \
  php \
  libapache2-mod-php \
  php-mysql

echo "# Package installation complete."