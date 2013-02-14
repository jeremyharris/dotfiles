# aliases

# remove .DS_Store files recursively
alias rmds="find . -name '*.DS_Store' -type f -delete"
alias ls="ls -lah"
alias lss="ls -1C"
alias p="cd ~/Projects"
alias apachelogs="cd /var/log/apache2/"
alias apacheconf="cd /etc/apache2/"
alias vim="mvim -v"
# remove trailing whitespace in all files within current directory, recursively
# thanks: http://stackoverflow.com/questions/149057/how-to-remove-trailing-whitespace-of-all-files-recursively?rq=1
alias rmws="find . -not \( -name .git -prune \) -type f -exec sed -i 's/[[:space:]]*$//' {} \;"
