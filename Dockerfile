ARG BASE_RELEASE=ubuntu:jammy
FROM $BASE_RELEASE

# Arguments:
ARG HOME_DIR=/root

# Setup:
ENV DEBIAN_FRONTEND=noninteractive

# Copy the sources over:
COPY .containerbashrc $HOME_DIR/.environmentbashrc
COPY .tmux/ $HOME_DIR/.tmux
COPY .tmux.conf $HOME_DIR/
COPY .vimrc $HOME_DIR/
COPY .vim/ $HOME_DIR/.vim

# Packages:
RUN apt-get update \
	&& apt-get install -y \
		build-essential \
		git \
		make \
		tmux \
		vim \
	&& apt-get clean

# Install qgit:
RUN mkdir $HOME_DIR/Install \
	&& cd $HOME_DIR/Install \
	&& git clone https://github.com/tibirna/qgit.git \
	&& cd qgit \
	&& apt install -y qt5* qtcreator qtbase5-dev qtdeclarative5-dev \
	&& qmake \
	&& make \
	&& make install

# LaTeX:
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

# Install YouCompleteMe:
RUN apt-get update \
	&& apt-get install -y \
		cmake \
		pip \
		python3-dev \
		taskwarrior \
	&& apt-get clean \
	&& pip install tasklib \
	&& cd $HOME_DIR/.vim/plugged/YouCompleteMe \
	&& python3 install.py --force

# Final Setup:
RUN echo "source ~/.environmentbashrc" >> ~/.bashrc

# Allow X11 Forwarding:
RUN echo "    ForwardX11 yes"        >> /etc/ssh/ssh_config \
	&& echo "    ForwardX11Trusted yes" >> /etc/ssh/ssh_config
