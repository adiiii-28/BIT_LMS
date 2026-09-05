# BIT LMS

BIT LMS is a custom Learning Management System project for BIT Patna, built on top of Moodle.

## Project Goals

- Customize Moodle for college requirements
- Develop custom themes, local plugins and blocks
- Keep custom development organized and reviewable
- Maintain a clean Git workflow for team collaboration

## Repository Structure

```text
bit-lms/
├── .github/
│   └── pull_request_template.md
├── blocks/
├── docs/
│   ├── setup.md
│   ├── development.md
│   └── architecture.md
├── local/
├── theme/
├── .gitignore
└── README.md
Development Environment
The local development environment uses:
WSL2
Ubuntu 26.04 LTS
Apache
PHP 8.4
MariaDB 11.8
Moodle 5.2.x
Git Workflow
main contains reviewed and stable work.
New development should use feature/* branches.
Changes should be submitted through Pull Requests.
Moodle core should not be committed to this repository.
Custom work belongs in local/, theme/, and blocks/.
Important
Do not commit:
config.php
Database dumps
Passwords or API keys
Local environment files
Moodle runtime/data directories
License
This project is intended for academic and institutional development at BIT Patna.

Quick Start

Development Environment

The recommended development environment is:

- WSL2
- Ubuntu 26.04 LTS
- PHP 8.4.25
- MariaDB 11.8.6
- Apache 2.4.66
- Moodle 5.2.2+

Setup

Clone the repository:

git clone -b feature/bitlms-theme git@github.com:adiiii-28/BIT_LMS.git
cd BIT_LMS

Make the setup script executable:

chmod +x scripts/setup.sh

Run the setup script:

./scripts/setup.sh

The setup script installs the required development dependencies and prepares the basic Moodle environment.

«Note: Database configuration, Moodle installation, and final local configuration may require additional steps.»
