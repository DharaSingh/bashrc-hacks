# bashrc-hacks

#alias to run python code
alias py='python3' 
example : dhara.singh@admins-mbp-2:bashrc-hacks$ py test.py


#alias to clear terminal screen
alias c='clear'
example : dhara.singh@admins-mbp-2:bashrc-hacks$ c

# edit in bashrc and update, change file path or name as per your bashrc location
alias vibash='vi ~/.bash_profile'
alias sbash='source ~/.bash_profile'
to edit bashrc file just run vibash and edit the file 
then sbash to reload changes in shell
example : 
dhara.singh@admins-mbp-2:bashrc-hacks$ vibash
dhara.singh@admins-mbp-2:bashrc-hacks$ sbash


#alias to go to working service 
alias myservice='cd $GOPATH/src/github.com/<service-name>'

#alias to workspace folder
alias ws='cd /Users/<user>/Documents/workspace'


#alias to run go test, go test coverage, go build
alias gt='go test'
alias gtc='go test -coverprofile=coverage.out;go tool cover -html=coverage.out'
alias gb='go build'

#alias to find process ID
alias pid='ps -ef | grep '
example : 
dhara.singh@admins-mbp-2:bashrc-hacks$ pid java

#alias to connect to dev/stage/prod machines
alias connect-dev='ssh -i ~/Documents/pems/dev.pem ec2-user@<ip-address>'

#alis to tail logs
alias tailf='tail -f'

#alias to build mvn service 
alias mci='mvn clean install'
alias mcid='mvn clean install -DskipTests'

#pk : find process and kill 
example :
dhara.singh@admins-mbp-2:bashrc-hacks$ pk java


#git branch name in terminal current dir only 
dhara.singh@admins-mbp-2:bashrc-hacks(master)$ git br
*master


# shorten terminal path, show only currrent dir name and username 
example : terminal shows only bashrc-hacks as directory name but complete path is different 
dhara.singh@admins-mbp-2:bashrc-hacks$ pwd
/Users/dhara.singh/Documents/workspace/bashrc-hacks
