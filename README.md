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
