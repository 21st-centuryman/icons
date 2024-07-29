color_new=#0898bd

for file in ./svgs/*; do
  gsed -i "0,/fill=\"[^\"]*\"/s//fill=\"$color_new\"/" "$file"
  resvg ./svgs/$(basename "$file" ".svg").svg ./pngs/$(basename "$file" ".svg").png -w 500 -h 500
done
