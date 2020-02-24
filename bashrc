# Custom
# Aliases
export PROMPT_COMMAND="history -a; history -n"
alias ls="ls -la --color=auto"

# Add branch to prompt.
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$ '

# Auto open tmux
if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
