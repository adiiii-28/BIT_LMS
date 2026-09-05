# Development Guide

## Branches

Use feature branches for development:

`feature/<short-description>`

Example:

`feature/custom-dashboard`

## Pull Requests

All completed work should be submitted through a Pull Request.

Before opening a PR:

- Test the changes locally.
- Check for errors.
- Do not commit secrets.
- Do not commit Moodle core.
- Update documentation when required.

## Custom Development

Custom Moodle development should be organized under:

- `local/` for local plugins
- `theme/` for custom themes
- `blocks/` for custom blocks
