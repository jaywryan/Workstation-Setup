#!/bin/bash

# Load .bashrc, which loads: ~/.{bash_prompt,aliases,functions,path,dockerfunc,extra,exports}
if [[ -r "${HOME}/.bashrc" ]]; then
	# shellcheck source=/dev/null
	source "${HOME}/.bashrc"
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"