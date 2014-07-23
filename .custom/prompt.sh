# bash customization
default_prompt="${GREEN}\u${LIGHT_GRAY}@${YELLOW}\h${LIGHT_GRAY}"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

function prompt_func() {
	git_branch=$(parse_git_branch)
  if [ "${git_branch}" == "" ]; then
    PS1="${default_prompt}"
  else
		prompt="${LIGHT_GRAY}[${GREEN}${git_branch}${LIGHT_GRAY}]${LIGHT_GRAY}"
    PS1="${default_prompt}${prompt}"
  fi
  # prompt
  PS1="${PS1}$ "
  # titlebar
  echo -ne "\033];${PWD/#$HOME/~}\007" 
}
PROMPT_COMMAND=prompt_func
