#!/bin/sh
# I made this just so i dont have to type this
# long ass command everytime i wanna make
# a new discord profile pic
$1

ffmpeg -i "$1" \
	-vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" \
	-loop 0 "${1/mp4/gif}"
