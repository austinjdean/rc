install:
	# put zshrc and vimrc in ~
	ln -s $(PWD)/zshrc $(HOME)/.zshrc
	ln -s $(PWD)/vimrc $(HOME)/.vimrc

	# put git update and status scripts in /usr/local/bin
	sudo ln -s $(PWD)/update.sh /usr/local/bin/ru
	sudo ln -s $(PWD)/status.sh /usr/local/bin/rs

clean:
	rm $(HOME)/.zshrc
	rm $(HOME)/.vimrc

	sudo rm /usr/local/bin/ru
	sudo rm /usr/local/bin/rs
