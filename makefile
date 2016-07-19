install:
	# put zshrc and vimrc in ~
	ln -s $(PWD)/zshrc $(HOME)/.zshrc
	ln -s $(PWD)/vimrc $(HOME)/.vimrc

	# put symlinks to scripts in /usr/local/bin
	sudo ln -s $(PWD)/update.sh /usr/local/bin/ru
	sudo ln -s $(PWD)/status.sh /usr/local/bin/rs
	sudo ln -s $(PWD)/gen.sh /usr/local/bin/gen
	sudo ln -s $(PWD)/lns.sh /usr/local/bin/lns

	# tilda config
	mkdir -p $(HOME)/.config/tilda
	cp $(PWD)/config_0 $(HOME)/.config/tilda/

	# sublime (FYI nukes your settings)
	mkdir -p $(HOME)/.config/sublime-text-3/Packages
	rm -rf $(HOME)/.config/sublime-text-3/Packages/User
	ln -s $(PWD)/sublime $(HOME)/.config/sublime-text-3/Packages/User

clean:
	rm -f $(HOME)/.zshrc
	rm -f $(HOME)/.vimrc

	sudo rm -f /usr/local/bin/ru
	sudo rm -f /usr/local/bin/rs
	sudo rm -f /usr/local/bin/gen
	sudo rm -f /usr/local/bin/lns

	rm -f $(HOME)/.config/tilda/config_0

	rm -rf $(HOME)/.config/sublime-text-3/Packages/User
