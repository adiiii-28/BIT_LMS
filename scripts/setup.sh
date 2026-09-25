#!/usr/bin/env bash

set -e

MOODLE_VERSION="5.2.3"
MOODLE_DIR="/var/www/bitlms-moodle"
MOODLEDATA_DIR="/var/bitlms-moodledata"
MOODLE_PORT="8080"

echo "======================================"
echo "       BIT LMS Development Setup"
echo "======================================"

echo
echo "[1/7] Updating package lists..."
sudo apt update

echo
echo "[2/7] Installing Nginx, PHP-FPM, MariaDB and tools..."
sudo apt install -y \
    nginx \
    mariadb-server \
    git \
    curl \
    unzip \
    composer \
    php8.4 \
    php8.4-cli \
    php8.4-fpm \
    php8.4-curl \
    php8.4-gd \
    php8.4-intl \
    php8.4-mbstring \
    php8.4-mysql \
    php8.4-soap \
    php8.4-xml \
    php8.4-zip \
    php8.4-opcache

echo
echo "[3/7] Starting services..."
sudo systemctl enable --now nginx
sudo systemctl enable --now mariadb
sudo systemctl enable --now php8.4-fpm
sudo systemctl enable --now cron

echo
echo "[4/7] Creating Moodle directories..."
sudo mkdir -p "${MOODLE_DIR}"
sudo mkdir -p "${MOODLEDATA_DIR}"

sudo chown -R www-data:www-data "${MOODLE_DIR}" "${MOODLEDATA_DIR}"
sudo chmod 770 "${MOODLEDATA_DIR}"

echo
echo "[5/7] Checking Moodle installation..."
if [ -f "${MOODLE_DIR}/config.php" ]; then
    echo "Moodle installation already exists."
else
    echo "Moodle source must be installed separately."
    echo "Expected directory: ${MOODLE_DIR}"
fi

echo
echo "[6/7] Checking installed versions..."
echo
nginx -v
php8.4 -v | head -n 1
mariadb --version

echo
echo "[7/7] Checking services..."
systemctl is-active nginx
systemctl is-active php8.4-fpm
systemctl is-active mariadb
systemctl is-active cron

echo
echo "======================================"
echo "       BIT LMS base setup complete"
echo "======================================"
echo
echo "Moodle directory : ${MOODLE_DIR}"
echo "Moodle data      : ${MOODLEDATA_DIR}"
echo "Local site       : http://localhost:${MOODLE_PORT}"
echo
echo "Next steps:"
echo "1. Configure the Moodle database."
echo "2. Configure the Nginx virtual host."
echo "3. Complete Moodle installation."
echo "4. Install BIT LMS custom components."