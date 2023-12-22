#/bin/sh

PLUGINDIR="$HOME/.config/zsh/plugins/"

if [-d "$PLUGINDIR"]; then
	echo 'plugins directory found'
else
	mkdir -p $PLUGINDIR
fi

echo "Cloning plugins to $PLUGINDIR"

echo "Downloadging Fast Syntax Highlighting"
git -C "$PLUGINDIR" clone https://github.com/zdharma-continuum/fast-syntax-highlighting

echo "Downloading ZSH Autosuggestions"
git -C "$PLUGINDIR" clone https://github.com/zsh-users/zsh-autosuggestions

echo "Downloading ZSH Autocomplete"
git -C "$PLUGINDIR" clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git

echo "Downloading ZSH Completions"
git -C "$PLUGINDIR" clone https://github.com/zsh-users/zsh-completions.git
