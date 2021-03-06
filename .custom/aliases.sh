# aliases

# remove .DS_Store files recursively
alias rmds="find . -name '*.DS_Store' -type f -delete"
alias ls="ls -lah"
alias lss="ls -1C"
alias p="cd ~/Projects"
alias apacheconf="cd /usr/local/etc/apache2/2.4/"
# remove trailing whitespace in all files within current directory, recursively
# thanks: http://stackoverflow.com/questions/149057/how-to-remove-trailing-whitespace-of-all-files-recursively?rq=1
alias rmws="find . -not \( -name .git -prune \) -type f -exec sed -i -e 's/[[:space:]]*$//' {} \;"

alias upgrade='composer global update && npm install -g npm@latest && npm update -g --quiet && brew update && brew upgrade && brew cleanup -s --force'
