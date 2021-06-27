function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -F --color=auto
}

function fullup(){
    # this function is for full system upgrade"
    echo "=============================="
    echo "|STARTING FULL SYSTEM UPGRADE|"
    echo "=============================="

    sudo apt-get update
    sudo apt-get upgrade
    sudo apt autoremove
    sudo apt autoclean

    echo "=============================="
    echo "|    SYSTEM UPDATE SUCCESS   |"
    echo "=============================="
    
}

