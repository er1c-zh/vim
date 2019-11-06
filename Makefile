all:
	make sync

init:
	bash ./init.sh

sync:
	cp ./vimrc ../.vimrc
	cp ./vimrc.bundles ../.vimrc.bundles
	cp ./ctags ../.ctags
	vim +PluginInstall +qall

