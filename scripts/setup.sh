#!/usr/bin/env bash

set -e

MOODLE_VERSION="5.2"
MOODLE_DIR="/var/www/moodle"
MOODLEDATA_DIR="/var/moodledata"

echo "======================================"
echo "       BIT LMS Development Setup"
echo "======================================"

echo
echo "[1/7] Updating package lists..."
sudo apt update

echo
echo "[2/7] Installing PHP, Apache, MariaDB and tools..."
sudo apt install -y \
    apache2 \
    mariadb-server \
    git \
    curl \
    unzip \
    software-properties-common \
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
sudo systemctl enable --now apache2
sudo systemctl enable --now mariadb
sudo systemctl enable --now php8.4-fpm

echo
echo "[4/7] Enabling Apache PHP-FPM support..."
sudo a2enmod proxy proxy_fcgi setenvif rewrite
sudo a2enconf php8.4-fpm
sudo systemctl reload apache2

echo
echo "[5/7] Downloading Moodle ${MOODLE_VERSION}..."
if [ ! -d "${MOODLE_DIR}" ]; then
    sudo mkdir -p "${MOODLE_DIR}"
    curl -L "https://download.moodle.org/download.php/direct/stable502/moodle-latest-502.tgz" \
        -o /tmp/moodle-latest-502.tgz

    sudo tar -xzf /tmp/moodle-latest-502.tgz \
        -C "${MOODLE_DIR}" \
        --strip-components=1

    rm -f /tmp/moodle-latest-502.tgz
else
    echo "Moodle directory already exists. Skipping download."
fi

echo
echo "[6/7] Creating Moodle data directory..."
sudo mkdir -p "${MOODLEDATA_DIR}"
sudo chown -R www-data:www-data "${MOODLE_DIR}" "${MOODLEDATA_DIR}"
sudo chmod 770 "${MOODLEDATA_DIR}"

echo
echo "[7/7] Checking installed versions..."
echo
php8.4 -v | head -n 1
mariadb --version
apache2 -v | head -n 1

echo
echo "======================================"
echo "       BIT LMS base setup complete"
echo "======================================"
echo
echo "Moodle directory : ${MOODLE_DIR}"
echo "Moodle data      : ${MOODLEDATA_DIR}"
echo
echo "Next steps:"
echo "1. Create a local Moodle database/user."
echo "2. Configure Apache VirtualHost."
echo "3. Complete Moodle web/CLI installation."
echo "4. Install the BIT LMS custom theme."
