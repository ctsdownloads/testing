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

# Reinstall Tuned to catch the profiles
sudo dnf reinstall tuned -y

# Activate a specific profile (choose one to activate initially, e.g., best performance mode)
sudo tuned-adm profile intel-best_performance_mode

echo "Profiles deployed."
