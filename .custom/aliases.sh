# aliases

# remove .DS_Store files recursively
alias rmds="find . -name '*.DS_Store' -type f -delete"
alias ls="ls -lah"
alias lss="ls -1C"
alias p="cd ~/Projects"
alias apachelogs="cd /var/log/apache2/"
alias apacheconf="cd /etc/apache2/"
# remove trailing whitespace in all files within current directory, recursively
# thanks: http://stackoverflow.com/questions/149057/how-to-remove-trailing-whitespace-of-all-files-recursively?rq=1
alias rmws="find . -not \( -name .git -prune \) -type f -exec sed -i -e 's/[[:space:]]*$//' {} \;"

# CTC related aliases
alias ctc-start-rules='java -jar ~/Projects/CakeDC/ctc/Vendors/Rules/jars/rules.jar -c ~/Projects/CakeDC/ctc/MarsPlatform/lib/CareTeamConnect/Rules/'
alias ctc-sync='/Users/jeremy/Projects/CakeDC/ctc/MarsPlatform/lib/Cake/Console/cake --app /Users/jeremy/Projects/CakeDC/ctc/MarsPlatform/app sync'
