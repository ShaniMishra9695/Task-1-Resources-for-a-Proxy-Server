#!/bin/bash

# Function to display top 10 CPU/memory consuming applications
display_top_apps() {
  ps aux --sort=-%cpu,-%mem | head -n 11
}

# Function to monitor network
monitor_network() {
  echo "Concurrent Connections: $(ss -tun | wc -l)"
  echo "Packet Drops: $(netstat -s | grep 'packets dropped')"
  echo "Network Traffic: $(ifconfig eth0 | grep 'RX packets' -A 1)"
}

# Function to display disk usage
display_disk_usage() {
  df -h | awk '$5 >= 80'
}

# Function to display system load
display_system_load() {
  echo "Load Average: $(uptime)"
  mpstat
}

# Function to display memory usage
display_memory_usage() {
  free -m
}

# Function to monitor processes
monitor_processes() {
  echo "Active Processes: $(ps -e --no-headers | wc -l)"
  ps aux --sort=-%cpu,-%mem | head -n 6
}

# Function to monitor services
monitor_services() {
  systemctl is-active sshd nginx iptables
}

# Command-line switches
case $1 in
  -cpu)
    display_top_apps ;;
  -memory)
    display_memory_usage ;;
  -network)
    monitor_network ;;
  -disk)
    display_disk_usage ;;
  -load)
    display_system_load ;;
  -process)
    monitor_processes ;;
  -services)
    monitor_services ;;
  *)
    echo "Usage: $0 {-cpu|-memory|-network|-disk|-load|-process|-services}"
    ;;
esac
