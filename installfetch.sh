# this script was made to make the installation of
# tbhfetch less of a P.I.T.A...
# SEGFAULTEDWINTER BAYBEEE!!!

git clone https://github.com/rhhen122/tbhfetch && cd tbhfetch
rm -f config-file.png
rm -f install-file.png
rm -f requiriements-file.png
rm -f tbhfetch.png
rm -f tbhfetchimage.png

YELLOW=$'\e[33m'
BLUE=$'\e[34;1m'


setalias='alias tfetch="python3 ~/tbhfetch/tbhfetch.py"'

# Check the value of the $SHELL variable
if [[ "$SHELL" == *"zsh" ]]; then
    # If the shell is zsh, echo the string to .zshrc
    echo "$setalias" >> ~/.zshrc
elif [[ "$SHELL" == *"bash" ]]; then
    # If the shell is bash, echo the string to .bashrc
    echo "$setalias" >> ~/.bashrc
else
    echo "Unsupported shell: $SHELL"
fi

echo "run the command source ~/.zshrc or source ~/.bashrc depending on your shell"

echo "${BLUE}call tbhfetch with the tfetch command (alias for now)"
echo "${YELLOW}To start configuring the program open the file config.py in the tbhfetch folder with any text editor of your choice"
