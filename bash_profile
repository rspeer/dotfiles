if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Git prompt, adapted from polypus74 on Stack Overflow but with more muted
# colors.
function we_are_in_git_work_tree {
    git rev-parse --is-inside-work-tree &> /dev/null
}

function parse_git_branch {
    if we_are_in_git_work_tree
    then
    local BR=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD 2> /dev/null)
    if [ "$BR" == HEAD ]
    then
        local NM=$(git name-rev --name-only HEAD 2> /dev/null)
        if [ "$NM" != undefined ]
        then echo -n "@$NM"
        else git rev-parse --short HEAD 2> /dev/null
        fi
    else
        echo -n $BR
    fi
    fi
}

function parse_git_status {
    if we_are_in_git_work_tree
    then 
    local ST=$(git status --short 2> /dev/null)
    if [ -n "$ST" ]
    then echo -n "‖"
    else echo -n "|"
    fi
    fi
}

COLYELLOW="\[\033[1;33m\]"
COLGREEN="\[\033[1;32m\]"
COLBRIGHT="\[\033[1m\]"
COLCLEAR="\[\033[0m\]"

# export all these for subshells
#export -f parse_git_branch parse_git_status we_are_in_git_work_tree
#export PS1="$COLBRIGHT\h:$COLCLEAR\w$COLYELLOW\$(parse_git_status)$COLGREEN\$(parse_git_branch)$COLCLEAR\$ "
source ~/.bash_prompt

export VIRTUALENVWRAPPER_PYTHON=python3.3
source /usr/local/bin/virtualenvwrapper.sh
export PATH=/usr/local/bin:$PATH
