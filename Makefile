# ##############################################################
# Settings:

BASE      ?= ubuntu
RELEASE   ?= jammy
HOME_DIR  ?= /root
CONTAINER ?= lucid_nash

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Project Settings:

PLATFORM ?= linux/x86_64
IMAGE    ?= environment-$(BASE)-$(RELEASE)

# ##############################################################
# Targets:

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# help:

.PHONY: help
help:
	@echo "Usage: make <target>"
	@echo
	@echo "Targets:"
	@echo "  help              : Display this help menu."
	@echo "  image             : Build the Docker image."
	@echo "  container         : Create and start a container from the image."
	@echo "  run               : Run an existing container."
	@echo "  install-container : Install the environment on a Linux container."
	@echo "  install-linux     : Install the environment on a Linux system."
	@echo "  install-lite      : Install the lite environment on a Linux system."
	@echo "  install-mac       : Install the environment on a macOS system."
	@echo "  uninstall         : Uninstall the environment."

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# image:

.PHONY: image
image:
	docker build \
		--platform $(PLATFORM) \
		--build-arg BASE_RELEASE=$(BASE):$(RELEASE) \
		--build-arg HOME_DIR=$(HOME_DIR) \
		-t $(IMAGE) \
		.

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# container:

.PHONY: container
container:
	docker run -it -v Repositories:/root/Repositories -e DISPLAY=docker.for.mac.host.internal:0 --platform $(PLATFORM) $(IMAGE) /bin/bash

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# run:

.PHONY: run
run:
	docker exec -it -e DISPLAY=docker.for.mac.host.internal:0 $(CONTAINER) /bin/bash

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# install-container:

.PHONY: install-container
install-container:
	ln -s `pwd`/.tmux ~/.tmux
	ln -s `pwd`/.tmux.conf ~/.tmux.conf
	ln -s `pwd`/.vimrc ~/.vimrc
	ln -s `pwd`/.vim ~/.vim
	echo "" >> ~/.bashrc
	echo "source `pwd`/.containerbashrc" >> ~/.bashrc
	cd ~/.vim/plugged/YouCompleteMe && python3 install.py --force

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# install-linux:

.PHONY: install-linux
install-linux:
	ln -s `pwd`/.tmux ~/.tmux
	ln -s `pwd`/.tmux.conf ~/.tmux.conf
	ln -s `pwd`/.vimrc ~/.vimrc
	ln -s `pwd`/.vim ~/.vim
	echo "" >> ~/.bashrc
	echo "source `pwd`/.bashrc" >> ~/.bashrc
	cd ~/.vim/plugged/YouCompleteMe && python3 install.py --force

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# install-lite:

.PHONY: install-lite
install-lite:
	ln -s `pwd`/.tmux ~/.tmux
	ln -s `pwd`/.tmux.conf ~/.tmux.conf
	ln -s `pwd`/.vimrc ~/.vimrc
	ln -s `pwd`/.vim ~/.vim
	echo "" >> ~/.bashrc
	echo "source `pwd`/.litebashrc" >> ~/.bashrc
	cd ~/.vim/plugged/YouCompleteMe && python3 install.py --force

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# install-mac:

.PHONY: install-mac
install-mac:
	ln -s `pwd`/.tmux ~/.tmux
	ln -s `pwd`/.tmux.conf ~/.tmux.conf
	ln -s `pwd`/.vimrc ~/.vimrc
	ln -s `pwd`/.vim ~/.vim
	echo "" >> ~/.zshrc
	echo "source `pwd`/.zshrc" >> ~/.zshrc
	cd ~/.vim/plugged/YouCompleteMe && python3 install.py

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# uninstall:

.PHONY: uninstall
uninstall:
	unlink ~/.tmux
	unlink ~/.tmux.conf
	unlink ~/.vimrc
	unlink ~/.vim
