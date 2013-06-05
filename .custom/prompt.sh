# bash customization
default_prompt="${GREEN}\h${LIGHT_GRAY}:${YELLOW}\u${LIGHT_GRAY}"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR="mvim -v"

function prompt_func() {
  git rev-parse --git-dir > /dev/null 2>&1
  if [ $? -eq 0 -a "$PWD" != "$HOME" ]; then
    prompt="${LIGHT_GRAY}[${GREEN}$(parse_git_branch)${LIGHT_GRAY}]${LIGHT_GRAY}"
    PS1="${default_prompt}${prompt}" 
  else
    PS1="${default_prompt}"
  fi
  # prompt
  PS1="${PS1}$ "
  # titlebar
  echo -ne "\033];${PWD/#$HOME/~}\007" 
}
PROMPT_COMMAND=prompt_func
