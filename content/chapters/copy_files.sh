#! /bin/bash

for dir in */; do
	if [ "$dir" == "natural-numbers/" ]; then
		continue;
	fi

	cd $dir;
	for FILE in $(grep 'images/' *.md | cut -d '/' -f 2 | tr -d ')'); do
		cp ../../../images/$FILE media/;
	done
	cd ..;
done
