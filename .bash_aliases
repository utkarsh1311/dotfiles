# alias for system
alias lt='ls --human-readable --size -1 -S --classify'
alias count='find . -type f | wc -l'
alias cpv='rsync -ah --info=progress2'
alias shutdown='sudo shutdown now'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias ll='ls -la'
alias lt='ls --tree'
alias cat='batcat'
alias open='xdg-open'
alias pyserver='python3 -m http.server 8080'
alias py='python3'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias exec='chmod +x'
# alias for git 

alias commit='git commit -m'
alias push='git push'
alias init='git init'
alias add='git add'
alias clone='git clone'
alias status='git status'
alias log='git log --graph'
alias rao='git remote add origin'

# alias for javaFx
alias javafxc='javac --module-path $JAVA_FX --add-modules javafx.controls'
alias javafx='java --module-path $JAVA_FX --add-modules javafx.controls'

#alias for utility
alias fso='cd /home/utkarsh/Code-Projects/FullStackOpen && code .'
