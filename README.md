# BIT LMS

BIT LMS is a customized Learning Management System for **BIT Patna**, built on top of Moodle.

## Features

- Customized BIT LMS theme and institutional branding
- Online courses, quizzes and assessments
- Programming assessments using Moodle CodeRunner
- Automated coding evaluation
- Custom academic and assessment reports

## Tech Stack

- Moodle 5.2.3
- PHP 8.4
- MariaDB 11.8
- Nginx + PHP-FPM
- JavaScript, SCSS
- Git & GitHub
- WSL2 / Ubuntu 26.04

## Development Architecture

```text
Browser
   ↓
Nginx :8080
   ↓
PHP-FPM 8.4
   ↓
Moodle
   ↓
MariaDB
Repository Structure
bit-lms/
├── blocks/
├── docs/
├── local/
├── scripts/
├── theme/
├── .github/
├── .gitignore
└── README.md
Development
Moodle core and production data are maintained separately.
This repository contains custom BIT LMS themes, plugins, scripts and documentation.
License
Academic and institutional development project for BIT Patna.