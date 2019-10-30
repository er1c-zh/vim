all:
	make sync

init:
	bash ./init.sh

sync:
	cp ./vimrc ../.vimrc
	cp ./vimrc.bundles ../.vimrc.bundles
	vim +PluginInstall +qall

