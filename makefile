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
	# mkdir -p $(HOME)/.gconf/apps
	# ln -s $(PWD)/guake $(HOME)/.gconf/apps/guake

	# sublime config
	mkdir -p $(HOME)/.config/sublime-text-3/Packages
	sudo ln -s $(PWD)/sublime $(HOME)/.config/sublime-text-3/Packages/User

clean:
	# remove zshrc and vimrc symlinks
	sudo rm -f $(HOME)/.zshrc
	sudo rm -f $(HOME)/.vimrc

	# remove symlinks to scripts in /usr/local/bin
	sudo rm -f /usr/local/bin/ru
	sudo rm -f /usr/local/bin/rs
	sudo rm -f /usr/local/bin/gen
	sudo rm -f /usr/local/bin/lns
	sudo rm -f /usr/local/bin/defaults

	# remove symlink to guake config
	sudo rm -f $(HOME)/.gconf/apps/guake

	# remove symlink to sublime config
	sudo rm -f $(HOME)/.config/sublime-text-3/Packages/User

nuke:
	# remove zshrc and vimrc symlinks
	sudo rm -rf $(HOME)/.zshrc
	sudo rm -rf $(HOME)/.vimrc

	# remove symlinks to scripts in /usr/local/bin
	sudo rm -rf /usr/local/bin/ru
	sudo rm -rf /usr/local/bin/rs
	sudo rm -rf /usr/local/bin/gen
	sudo rm -rf /usr/local/bin/lns
	sudo rm -rf /usr/local/bin/defaults

	# remove symlink to guake config
	sudo rm -rf $(HOME)/.gconf/apps/guake

	# remove symlink to sublime config
	sudo rm -rf $(HOME)/.config/sublime-text-3/Packages/User

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

	# guake config
	# mkdir -p $(HOME)/.gconf/apps
	# ln -s $(PWD)/guake $(HOME)/.gconf/apps/guake

	# sublime config
	mkdir -p $(HOME)/.config/sublime-text-3/Packages
	ln -s $(PWD)/sublime $(HOME)/.config/sublime-text-3/Packages/User

cleanLimited:
	# remove zshrc and vimrc symlinks
	rm -f $(HOME)/.zshrc
	rm -f $(HOME)/.vimrc

	# remove symlinks to scripts in ~/bin
	rm -f $(HOME)/bin

	# remove symlink to guake config
	rm -f $(HOME)/.gconf/apps/guake

	# remove symlink to sublime config
	rm -f $(HOME)/.config/sublime-text-3/Packages/User
