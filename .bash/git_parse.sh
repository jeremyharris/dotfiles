function parse_git_branch {
	git_branch="$(git branch 2> /dev/null | grep '*' | sed 's/\* //')"

  echo "${git_branch}"
}
