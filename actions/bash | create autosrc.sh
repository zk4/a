#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"


color_input pversion "python version(ex:3.10.12):"

# Text to write to .autosrc
autosrc_text=$(cat <<EOF
# Called when you first enter the directory (or its children)
autosrc_enter() {

	#replace pwd / to _
	environment_name=$(echo "$PWD" | sed 's/\//_/g')-$pversion

	if conda info --envs | grep -q "\\\b\$environment_name\\\b"; then
	    echo ""
	else
	    conda create -y -n "\$environment_name" python=$pversion
			conda activate \$environment_name
			conda install pip -y
			pip install pynvim
	fi

	conda activate \$environment_name
}

autosrc_exit() {
	conda deactivate
}
EOF
)

# Write the text to .autosrc
echo "$autosrc_text" > ./.autosrc

echo "Text written to .autosrc"
