Install Vundle

	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim	

Install YouCompleteMe

	cd ~/.vim/bundle/YouCompleteMe
	./install.sh --clang-completer

Install Command-t

    cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make

Install links

	./install.sh

Install tern

    cd ~/.vim/bundle/tern_for_vim
    npm install 
    cd node_modules/tern/plugin
    wget https://raw.githubusercontent.com/Slava/tern-meteor/master/meteor.js    
