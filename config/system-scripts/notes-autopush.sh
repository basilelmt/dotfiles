#!/bin/bash

# inotifywait could be replace by entr

cd ~/notes
inotifywait -mr --timefmt '%d/%m/%y %H:%M' --format '%T %w %f %e' --exclude .git -e modify . |
	while read date time dir file event; do
		git add .
		git commit -m "🤖 auto-commit: *beep* *boop*"
		git push
		echo "pushed $dir/$file : $event le ${date} à ${time}"
	done
