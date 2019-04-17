PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

#go path
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

#alias to run python code
alias py='python3'

# alias to compile capnp files
alias cc='capnp compile -I$GOPATH/src/zombiezen.com/go/capnproto2/std -ogo'

#alias to clear terminal screen
alias c='clear'

# edit in bashrc and update, change file path or name as per your bashrc location
alias vibash='vi ~/.bash_profile'
alias sbash='source ~/.bash_profile'

#alias to go to working service 
alias etl='cd $GOPATH/src/github.com/whois_transform_load'
alias sur='cd $GOPATH/src/github.com/whois_survey'

#alias to workspace folder
alias ws='cd /Users/<user>/Documents/workspace'


#alias to run go test, go test coverage, go build
alias gt='go test'
alias gtc='go test -coverprofile=coverage.out;go tool cover -html=coverage.out'
alias gb='go build'

#alias to find process ID
alias pid='ps -ef | grep '

#alias to connect to dev/stage/prod machines
alias connect-dev='ssh -i ~/Documents/pems/dev.pem ec2-user@<ip-address>'

#alis to tail logs
alias tailf='tail -f'

#alias to build mvn service 
alias mci='mvn clean install'
alias mcid='mvn clean install -DskipTests'

#method to find process id 
function p(){
        ps aux | grep -i $1 | grep -v grep
}

# pk : find process and kill
function pk(){

    cnt=$( p $1 | wc -l)  # total count of processes found
    klevel=${2:9}       # kill level, defaults to 15 if argument 2 is empty

    echo -e "\nSearching for '$1' -- Found" $cnt "Running Processes .. "
    p $1

    echo -e '\nTerminating' $cnt 'processes .. '

    ps aux  |  grep -i $1 |  grep -v grep   | awk '{print $2}' | xargs kill -9
    echo -e "Done!\n"

    echo "Running search again:"
    p "$1"
    echo -e "\n"
}

#git branch name in terminal current dir only 
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#uncomment below line to get branch name along with current dir
#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# shorten terminal path, show only currrent dir name and username 
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$ '
