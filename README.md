# System Monitoring Script

This script generates a detailed system monitoring report, displaying **disk usage**, **CPU usage**, and **memory usage**. Additionally, it logs the output to a file (`system-monitoring.log`) and sends an email alert if disk usage for a specific directory exceeds a defined threshold.

---

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Setup and Installation](#setup-and-installation)
4. [Usage](#usage)

---

## Introduction

The **System Monitoring Script** helps system administrators keep track of key system metrics:
- **Disk Usage**: Tracks disk usage and sends an email alert if usage exceeds 80% for the `/vagrant` directory.
- **CPU Usage**: Displays CPU statistics using the `mpstat` command.
- **Memory Usage**: Summarizes total, used, and free memory.

---

## Features

- Generates a system report with the following metrics:
  - Disk usage
  - CPU usage
  - Memory usage
- Logs all outputs to a file named `system-monitoring.log`.
- Sends email alerts if disk usage exceeds the specified threshold.
- Automatically timestamps the report.

---

## Setup and Installation

### Prerequisites

1. Ensure you have the required tools installed:
   - `df`: For disk usage monitoring.
   - `mpstat`: For CPU usage statistics.
   - `free`: For memory usage.
   - `mail`: For sending email alerts.

2. Verify email configuration:
   - Configure your mail system (e.g., `ssmtp`, `sendmail`, or `Postfix`) to enable the script to send email notifications.

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/Basel-Abouelnour/system-monitoring-script.git
   cd system-monitoring-script
