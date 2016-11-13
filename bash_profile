[[ -s ~/.bashrc ]] && source ~/.bashrc

# configure my multi-line prompt
YLW="$(tput setaf 3)"
TEAL="$(tput setaf 6)"
PEACH=$(tput setaf 9)""
RESET="$(tput sgr 0)"

PS1='pwd is$YLW $PWD $RESET $TEAL \nget going!$RESET $PEACH==> $RESET'

#activate colors
export CLICOLOR=1
#change cli colors
export LSCOLORS=bxCxDxExFxGgHdabagEcEd


#	The order of these pairs correspond to:
#    directory
#    symbolic link – special kind of file that contains a reference to another file or directory.
#    socket – special kind of file used for inter-process communication.
#    pipe – special file that connects the output of one process to the input of another.
#    executable
#    block special – a kind of device file.
#    character special – a kind of device file.
#    executable with setuid bit set (setuid is a short for set user ID upon execution).
#    executable with setgid bit set (setgid is a short for set group ID upon execution).
#    directory writable to others, with sticky bit – only the owner can rename or delete files.
#    directory writable to others, without sticky bit – any user with write and execution permissions can rename or delete files.


#	And the different letters correspond to:
#    a black
#    b red
#    c green
#    d brown
#    e blue
#    f magenta
#    g cyan
#    x default color
