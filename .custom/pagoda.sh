# Allows quickly switching between .pagodarc config
# files. Backs up existing config and replaces it with
# ~/.pagodarc-myapp (where 'myapp' is the argument
# passed to the function, as seen below)
#
# Usage:
# $ pagoda-switch myapp
function pagoda-switch() {
  local ACCOUNT="$1"
	local PAGODARC="$HOME/.pagodarc"
	local RCPATH="$PAGODARC-$ACCOUNT"
	if [ ! -e "$RCPATH" ]; then
		echo "Missing config file: $RCPATH"
		return
	fi
	cp "$PAGODARC" "${PAGODARC}bak"
	cp -f "$RCPATH" "$PAGODARC"
	echo "Switched PagodaBox config to '$ACCOUNT'"
}
