#!/bin/bash

# Deploy profiles
echo "Deploying profiles..."

# First time installing Tuned
sudo dnf install tuned -y

# Create directory for custom profiles if it doesn't exist
sudo mkdir -p /etc/tuned/intel-best_performance_mode
sudo mkdir -p /etc/tuned/intel-best_power_efficiency_mode

# Copy profile configurations
sudo cp profiles/intel-best_performance_mode/tuned.conf /etc/tuned/intel-best_performance_mode/tuned.conf
sudo cp profiles/intel-best_power_efficiency_mode/tuned.conf /etc/tuned/intel-best_power_efficiency_mode/tuned.conf

# Reinstall (for Intel settings to show up) enable and start the tuned service 
sudo reinstall tuned -y
sudo systemctl enable --now tuned
