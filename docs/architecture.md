# Architecture

## Overview

BIT LMS uses Moodle as the LMS platform and adds institution-specific customizations.

## Main Components

### Moodle Core

The Moodle installation provides the core LMS functionality.

### Local Plugins

Institution-specific functionality belongs in `local/`.

### Theme

User interface and branding customizations belong in `theme/`.

### Blocks

Reusable dashboard or page components belong in `blocks/`.

## Repository Principle

The Git repository tracks BIT LMS custom development and documentation, not the complete Moodle core installation.
