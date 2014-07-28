# bash customization
default_prompt="\[${GREEN}\]\u\[${LIGHT_GRAY}\]@\[${YELLOW}\]\h"

function prompt_func() {
	git_branch=$(parse_git_branch)
  if [ "${git_branch}" == "" ]; then
    PS1="${default_prompt}\[${RESET}\]"
  else
		prompt="\[${LIGHT_GRAY}\][\[${GREEN}\]${git_branch}\[${LIGHT_GRAY}\]]"
    PS1="${default_prompt}${prompt}\[${RESET}\]"
  fi
  # prompt
  PS1="${PS1}$ "
  # titlebar
  echo -ne "\033];${PWD/#$HOME/~}\007" 
}
PROMPT_COMMAND=prompt_func
