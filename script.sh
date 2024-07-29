values=("steam" "github" "canvas" "discord" "spotify" "youtube" "wikipedia" "linkedin" "snapchat" "steam" "obsidian" "perplexity" "firefoxbrowser" "safari" "x")

mkdir -p svgs pngs
for value in "${values[@]}"; do
  sed "s@INSERT@$(curl -s https://raw.githubusercontent.com/simple-icons/simple-icons/develop/icons/${value}.svg)@" test.svg >./svgs/${value}.svg
  resvg ./svgs/${value}.svg ./pngs/${value}.png -w 500 -h 500
done
