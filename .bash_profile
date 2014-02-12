############################## Bash settings ##################################

# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Make bash act more VIMmy
export EDITOR=/usr/bin/vim
export SVN_EDITOR=/usr/bin/vim
set -o vi

export HISTCONTROL=ignorespace:ignoredups
export HISTSIZE=5000



################################# Prompt ###################################### 

# terminal settings (Cygwin inspired prompt)
PS1="\[\e]0;\w\a\]\n\[\e[36m\]\u@\h [\[\e[37m\]\w\[\e[36m\]]\[\e[0m\]\n\t \$ "



############################### Shortcuts #####################################

# Preferred flags
alias mv='mv -i'
alias cp='cp -i'
alias ll='ls -hal'

# Trash instead of rm
function rm() { echo "mv \"$@\" ~/.Trash/" && mv "$@" ~/.Trash/; }

# Quick backup/restore 
function bu () { echo "cp -i \"$@\" \"$@~\"" && cp -i "$@" "$@~"; }
function ubu () { echo "cp -i \"$@~\" $@\"" && cp -i "$@~" "$@"; }

# SVN
alias st='echo "svn st | sort"; svn st | sort'
alias svndiff='svn diff | /usr/share/vim/vim72/macros/less.sh'

# VIM settings
alias vi="perl ~/scripts/graphical-vim.pl "
alias excel='open -a /Applications/Microsoft\ Office\ 2008/Microsoft\ Excel.app'

# Traversing shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# flip line endings
alias dos2unix="perl -pi -e 's/\r\n?/\n/g'"
alias mac2unix="perl -pi -e 's/\r\n?/\n/g'"
alias unix2dos="perl -pi -e 's/\n/\r\n/g'"
alias unix2mac="perl -pi -e 's/\n/\r/g'"

# log files
alias apachelog='tail -f /Applications/MAMP/logs/apache_error_log'
alias mysqllog='tail -f /Applications/MAMP/logs/mysql_error_log'
alias phplog='echo "tail -f /Applications/MAMP/logs/php_error.log"; tail -f /Applications/MAMP/logs/php_error.log'
alias phplogclear='echo "" > /Applications/MAMP/logs/php_error.log'
alias emaillog='tail -f /private/log/mail_php.log'
alias emaillogclear='echo "" > /private/log/mail_php.log'



############################### Tool settings #################################

# export PATH="~/bin:/Applications/MAMP/bin/php5.2/bin:/Applications/MAMP/Library/bin:/usr/local/bin:$PATH:/Users/davurclementsen/Downloads/android-sdk-macosx/tools:/Users/davurclementsen/bin/play-2.1.1"
export PATH="/usr/local/bin:$HOME/bin:$HOME/bin/play-2.2.1:/Applications/MAMP/Library/bin:$PATH"

# export PYTHONPATH="/Users/davurclementsen/django/django-trunk/:/Library/Python/2.7/site-packages/:$PYTHONPATH"

export WORKON_HOME=$HOME/.virtualenvs

source /usr/local/bin/virtualenvwrapper.sh
