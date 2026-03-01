#!/bin/bash

# Simple Interest Calculator

echo "Enter Principal amount:"
read principal

echo "Enter Rate of Interest (in %):"
read rate

echo "Enter Time period (in years):"
read time

# Calculate simple interest
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "Simple Interest is: $simple_interest"
