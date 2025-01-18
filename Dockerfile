ARG BASE_RELEASE=ubuntu:jammy
FROM $BASE_RELEASE

# Arguments:
ARG HOME_DIR=/root

# Setup:
ENV DEBIAN_FRONTEND=noninteractive

# Packages:
RUN apt-get update \
	&& apt-get install -y \
		build-essential \
		git \
		make \
		tmux \
		vim \
	&& apt-get clean

# LaTeX Packages:
RUN apt-get update \
	&& apt-get install -y \
		latexmk \
		texlive-latex-base \
		texlive-fonts-recommended \
		texlive-fonts-extra \
		texlive-latex-extra \
		python3-pygments \
		evince \
	&& apt-get clean

# YouCompleteMe Packages:
RUN apt-get update \
	&& apt-get install -y \
		cmake \
		pip \
		python3-dev \
		taskwarrior \
	&& apt-get clean \
	&& pip install tasklib

# Install environment:
RUN mkdir -p $HOME_DIR/Install \
	&& cd $HOME_DIR/Install \
	&& git clone https://github.com/chgarrettv/environment.git \
	&& cd environment \
	&& git submodule update --init --recursive \
	&& make install-container

# Install qgit:
RUN mkdir -p $HOME_DIR/Install \
	&& cd $HOME_DIR/Install \
	&& git clone https://github.com/tibirna/qgit.git \
	&& cd qgit \
	&& apt install -y qt5* qtcreator qtbase5-dev qtdeclarative5-dev \
	&& qmake \
	&& make \
	&& make install

# Allow X11 Forwarding:
RUN echo "    ForwardX11 yes"        >> /etc/ssh/ssh_config \
	&& echo "    ForwardX11Trusted yes" >> /etc/ssh/ssh_config
