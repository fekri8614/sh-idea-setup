# IntelliJ IDEA Setup Script

This is a simple shell script to automate the creation of a symbolic link for IntelliJ IDEA on Linux-based systems. It allows you to run IntelliJ IDEA from anywhere in the terminal by typing `idea`.

## Features
- Automatically creates a symbolic link in `/usr/local/bin`.
- Displays error messages in red if the IntelliJ IDEA installation is not found.

## Prerequisites
- IntelliJ IDEA installed in the default path: `/home/<username>/<package-name>/bin/idea.sh`.
- `sudo` privileges to create a symbolic link in `/usr/local/bin`.

## Usage

1. Clone this repository or download the script:
   ```bash
   git clone https://github.com/fekri8614/sh-idea-setup.git
   cd sh-idea-setup
   
2. Make the code executable:
   ```bash
   chmod +x setup_idea.sh
   ```

3. Run the script:
   ```bash
   ./setup_idea.sh
   ```

4. If successful, you can now run IntelliJ IDEA by typing idea in the terminal.

## Script
Here’s the script for reference:
```bash
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
```

## Example
```bash
~$ ./setup_idea.sh
   -------------------- Welcome to Intellij IDEA Locator! --------------------
                                                                             |
   It's developed by Mr.Fekri                                                |
   Find me on: [Github](https://github.com/fekri8614)                        |
               [LinkedIn](https://linkedin.com/in/mrfekri86)                 |
                                                                             |
   ---------------------------------------------------------------------------
   Enter your Intellij IDEA name (For example: idea-IC-211.7628.21): idea-IC-211.7628.21
   
   Symbolic link created successfully!
   You can now run IntelliJ IDEA by typing 'idea' in the terminal.
```
then, try writing `idea` ...
```bash
~$ idea
# IntelliJ IDEA launches
```

## Error Handling
If the script cannot find the IntelliJ IDEA installation, it will display an error message in red:

```bash
$ ./setup_idea.sh
Enter your Intellij IDEA name (For example: idea-IC-211.7628.21): samplename
Error: IntelliJ IDEA installation not found at /home/<user-name>/samplename/bin/idea.sh. 
Please check the path and try again.
```

## License
his project is licensed under the MIT License. See the [LICENSE](https://github.com/fekri8614/sh-idea-setup/blob/master/LICENSE) file for details.


