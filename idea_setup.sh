#!/bin/bash

echo "-------------------- Welcome to Intellij IDEA Locator! -------------------"
echo "                                                                          |"
echo "It's developed by Mr.Fekri                                                |"
echo "Find me on: [Github](https://github.com/fekri8614)                        |"
echo "            [LinkedIn](https://linkedin.com/in/mrfekri86)                 |"
echo "                                                                          |"
echo "--------------------------------------------------------------------------"

sleep 3

read -p "Enter your Intellij IDEA name (For example: idea-IC-211.7628.21): " intell_name
echo ""

idea_path="/home/$USER/$intell_name/bin/idea.sh"

RED='\033[0;31m'
NC='\033[0m'

if [ -f "$idea_path" ]; then
    sudo ln -s "$idea_path" /usr/local/bin/idea
    echo "Symbolic link created successfully!"
    echo "You can now run IntelliJ IDEA by typing 'idea' in the terminal."
else
    echo -e "${RED}Error: IntelliJ IDEA installation not found at $idea_path.${NC}"
    echo "Please check the path and try again."
fi

echo "-------------------- End --------------------------------------------------"
