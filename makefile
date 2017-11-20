install:
	# put zshrc and vimrc in ~
	ln -s $(PWD)/zshrc $(HOME)/.zshrc
	ln -s $(PWD)/vimrc $(HOME)/.vimrc

	# put symlinks to scripts in /usr/local/bin
	sudo ln -s $(PWD)/scripts/update.sh /usr/local/bin/ru
	sudo ln -s $(PWD)/scripts/status.sh /usr/local/bin/rs
	sudo ln -s $(PWD)/scripts/gen.sh /usr/local/bin/gen
	sudo ln -s $(PWD)/scripts/lns.sh /usr/local/bin/lns
	sudo ln -s $(PWD)/scripts/defaults.sh /usr/local/bin/defaults

	# guake config
	mkdir -p $(HOME)/.gconf/apps
	ln -s $(PWD)/guake $(HOME)/.gconf/apps/guake

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
	sudo rm -f /usr/local/bin/defaults

	# rm -f $(HOME)/.config/tilda/config_0

	rm -rf $(HOME)/.gconf/apps/guake

	rm -rf $(HOME)/.config/sublime-text-3/Packages/User

limited:
	# put zshrc and vimrc in ~
	ln -s $(PWD)/zshrc $(HOME)/.zshrc
	ln -s $(PWD)/vimrc $(HOME)/.vimrc

	# ensure ~/bin exists
	mkdir -p $(HOME)/bin

	# put symlinks to scripts in ~/bin
	ln -s $(PWD)/scripts/update.sh $(HOME)/bin/ru
	ln -s $(PWD)/scripts/status.sh $(HOME)/bin/rs
	ln -s $(PWD)/scripts/gen.sh $(HOME)/bin/gen
	ln -s $(PWD)/scripts/lns.sh $(HOME)/bin/lns
	ln -s $(PWD)/scripts/defaults.sh $(HOME)/bin/defaults

	# tilda config
	mkdir -p $(HOME)/.config/tilda
	cp $(PWD)/config_0 $(HOME)/.config/tilda/

	# sublime (FYI nukes your settings)
	mkdir -p $(HOME)/.config/sublime-text-3/Packages
	rm -rf $(HOME)/.config/sublime-text-3/Packages/User
	ln -s $(PWD)/sublime $(HOME)/.config/sublime-text-3/Packages/User

cleanLimited:
	rm -f $(HOME)/.zshrc
	rm -f $(HOME)/.vimrc

	rm -rf $(HOME)/bin

	rm -f $(HOME)/.config/tilda/config_0

	rm -rf $(HOME)/.config/sublime-text-3/Packages/User
