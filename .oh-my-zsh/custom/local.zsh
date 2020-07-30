# run local init scripts that shouldn't go to github

for i in ~/dev-local/init/*.zsh; do
	source $i
done
