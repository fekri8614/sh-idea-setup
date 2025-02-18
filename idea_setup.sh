#!/bin/bash

#MIT License
#
#Copyright (c) 2025 Mohammad Reza Fekri
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

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
