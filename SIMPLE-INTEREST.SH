#!/bin/bash

# Simple Interest Calculator in Bash

echo "Welcome to Simple Interest Calculator"

# User input
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time Period (years): " time

# Input validation
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "Error: Please enter all fields."
    exit 1
fi

# Simple Interest Calculation
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display result
echo "-----------------------------"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
echo "-----------------------------"
