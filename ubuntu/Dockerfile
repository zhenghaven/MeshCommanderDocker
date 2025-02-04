FROM ubuntu:24.04

############################## Install packages ##############################
RUN apt update \
	&& apt install -y \
		git \
		python3 \
		python3-venv \
		python3-pip \
		curl \
		gnupg \
		apt-transport-https \
		ca-certificates \
	&& apt autoremove -y \
	&& apt clean -y
############################## ################ ##############################


# Node.js
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor > /etc/apt/trusted.gpg.d/nodesource.gpg
RUN echo "deb https://deb.nodesource.com/node_23.x nodistro main" >> /etc/apt/sources.list.d/nodesource.list
# RUN echo "deb-src https://deb.nodesource.com/node_23.x nodistro main" >> /etc/apt/sources.list.d/nodesource.list
RUN apt update -y \
	&& apt install -y nodejs=23.7.0-1nodesource1 \
	&& apt autoremove -y \
	&& apt clean -y


# MeshCommander
RUN mkdir /opt/meshcommander
WORKDIR /opt/meshcommander
RUN npm install meshcommander


# Start MeshCommander
ENTRYPOINT [ "node", "/opt/meshcommander/node_modules/meshcommander", "--any", "--port", "3000" ]
# ENTRYPOINT [ "/bin/bash" ]

