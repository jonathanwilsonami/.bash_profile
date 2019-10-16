#Make sure settings here apply to .bashrc file
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#Cusomize my prompt
PS1="[\[\033[32m\]\u"; #Current User - color green
PS1+="\[\033[37m\]@\h " #Host - color white
PS1+="\[\033[34m\]\W" #Current Directory- color blue
PS1+="$(tput sgr0)]" #Keep last color from leaking over
export PS1;

#My aliases:
alias tree='ls -R | grep ":$" | sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/   /" -e "s/-/|/"'
