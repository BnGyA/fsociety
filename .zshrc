# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f: %F{blue}%~%f %% %F{red}${vcs_info_msg_0_}% %F{white}> '
alias htdocs="cd ~/htdocs"
alias dc="docker-compose"