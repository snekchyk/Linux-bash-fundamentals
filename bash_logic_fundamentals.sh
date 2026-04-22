#!/bin/bash

# 1. Params
name=$1

echo "--- Concept 1: Params ---"

if [ -z "$name" ]; then
    echo "You haven't typed a param"
else
    echo "Hey, $name"
fi

echo -e "\n--- Concept 2: Variables ---"

name="Snekchyk"
echo "Name from a varuable: $name"

echo -e "\n--- Concept 3: Read (Interactive) ---"

read -p "What is your name?" name
echo "Nice to meet you, $name!"

echo -e "\n--- Concept 4: Command Substitution ---"

user=$(whoami)
current_dir=$(pwd)
echo "You are working as an user: $user"
echo "Your location: $current_dir"

# ==============================================================================
# SUMMARY TABLE OF FLAGS:
# -z  -> "Zero"   : Checks if a string is empty (used in if [ -z "$var" ])
# -p  -> "Prompt" : Asks for input with a message (used in read -p "msg")
# -e  -> "Echo"   : Interprets \n, \t (used in echo -e "text")
# -e  -> "Exists" : Checks if a file exists (used in if [ -e "path" ])
# ==============================================================================
