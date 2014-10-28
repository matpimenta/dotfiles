Install Pathogen

	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


Add new module

	git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive

Install links

	ln -s ~/.vim/vimrc ~/.vimrc
