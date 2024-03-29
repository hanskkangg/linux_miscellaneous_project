#!/bin/bash
# Name: Hans Kang
# Script File: user_management.sh
# Date: Nov 19,2023
# Description: This script provides user management options


# Starting with while loop. we can choose one menu item.
while true; do
    echo "-------------------------------------"
    echo "A) Create a user account"
    echo "B) Delete a user account"
    echo "C) Change account expiration date"
    echo "D) Change default login shell"
    echo "E) Change initial group"
    echo "F) Change supplementary group"
    echo "Q) Quit"
    echo "--------------------------------------"
    
    read -p "Please Choose one menu by pressing (A/B/C/D/E/F/Q): " choice

    choice=n # initialize to a dummy value

    # Converting alphabet choice to uppercase
    choice=$(echo "$choice" | tr 'a-z' 'A-Z')

    # Prompt if user chose Option A
    if [ "$choice" == "A" ]; then
        read -p "Enter Username: " username
        read -p "Enter User's home directory: " home_directory
        read -p "Enter Default login shell: " login_shell
        
        # Create a user account based on the given information
        useradd -m -d "$home_directory" -s "$login_shell" "$username"
        
        echo "Creating user account..."
        sleep 3

    # Prompt if user chose option B
    elif [ "$choice" == "B" ]; then
        read -p "Enter Username to delete: " delete_username
        echo "Deleting user account..."
        sleep 3

    # Prompt if user chose option C
    elif [ "$choice" == "C" ]; then
        read -p "Enter Username: " expire_username
        read -p "Enter Expiration date: " expire_date
        echo "Changing account expiration date..."
        sleep 3

    # Prompt if user chose option D
    elif [ "$choice" == "D" ]; then
        read -p "Enter Username: " shell_username
        read -p "Enter New shell: " new_shell
        echo "Changing default login shell..."
        sleep 3

    # Prompt if user chose option E
    elif [ "$choice" == "E" ]; then
        read -p "Enter Username: " initial_group_username
        read -p "Enter New initial group: " new_initial_group
        echo "Changing initial group..."
        sleep 3

    # Prompt if user chose option F
    elif [ "$choice" == "F" ]; then
        read -p "Enter Username: " supplementary_group_username
        read -p "Enter New supplementary group: " new_supplementary_group
        echo "Changing supplementary group..."
        sleep 3

    # Prompt if user chose option Q
    elif [ "$choice" == "Q" ]; then
        echo "Exiting..."
        sleep 3
        exit 0

    # Prompt if user chose invalid option.
    else
        echo "Invalid option! Please choose a valid option."
        sleep 3
    fi

done
