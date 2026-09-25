# Development Setup

## Environment

- WSL2
- Ubuntu 26.04 LTS
- Nginx
- PHP 8.4
- PHP-FPM
- MariaDB 11.8
- Moodle 5.2.x

## Moodle Installation

The development Moodle instance is installed at:

`/var/www/bitlms-moodle`

Moodle data directory:

`/var/bitlms-moodledata`

Local site:

`http://localhost:8080`

## Web Server

Nginx serves Moodle on port `8080`.

PHP requests are handled through PHP-FPM 8.4.

## Database

The development database uses MariaDB.

Database credentials are stored only in Moodle's local `config.php` and must never be committed to Git.

## Services

The development environment requires:

- Nginx
- PHP 8.4-FPM
- MariaDB
- Cron

Start services:

```bash
sudo systemctl start nginx php8.4-fpm mariadb cron