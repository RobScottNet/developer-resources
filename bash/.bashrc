# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Developer platform environment variables
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.65-2.b17.el7_1.x86_64"
export GRADLE_HOME="/home/$USER/Programs/gradle-2.8"
export MAVEN_HOME="/home/$USER/Programs/apache-maven-3.3.3"

# Source project aliases and functions
if [ -f /home/$USER/.project-aliases ]; then
	source /home/$USER/.project-aliases
fi

# Source Amazon Web Services (AWS) CLI aliases
if [ -f /home/$USER/.aws-aliases ]; then
	source /home/$USER/.aws-aliases
fi

# Source user specific aliases and functions
if [ -f /home/$USER/.local-aliases ]; then
	source /home/$USER/.local-aliases
fi

# Set-up git prompt support
if [ -f /home/$USER/.git-prompt.sh ]; then
	source /home/$USER/.git-prompt.sh
else
	curl -L https://github.com/git/git/raw/master/contrib/completion/git-prompt.sh > /home/$USER/.git-prompt.sh
	source /home/$USER/.git-prompt.sh
fi
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# Set-up git code completion
if [ -f /home/$USER/.git-completion.bash ]; then
	source /home/$USER/.git-completion.bash
else
	curl -L https://github.com/git/git/raw/master/contrib/completion/git-completion.bash > /home/$USER/.git-completion.bash
	source /home/$USER/.git-completion.bash
fi

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/$USER/.sdkman"
[[ -s "/home/$USER/.sdkman/bin/sdkman-init.sh" ]] && source "/home/$USER/.sdkman/bin/sdkman-init.sh"
