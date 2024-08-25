# System Resource Monitoring Script

## Overview
This Bash script provides a real-time monitoring dashboard for various system resources on a proxy server. It allows users to view specific sections of the dashboard using command-line switches.

## Features
- **Top 10 Most Used Applications**: Displays the top 10 applications consuming the most CPU and memory.
- **Network Monitoring**: Shows concurrent connections, packet drops, and network traffic.
- **Disk Usage**: Displays disk space usage by mounted partitions, highlighting those using more than 80% of the space.
- **System Load**: Shows the current load average and CPU usage breakdown.
- **Memory Usage**: Displays total, used, and free memory, including swap usage.
- **Process Monitoring**: Displays the number of active processes and the top 5 processes by CPU and memory usage.
- **Service Monitoring**: Monitors the status of essential services like sshd, nginx, and iptables.

## Usage
```bash
./monitor.sh [OPTION]
