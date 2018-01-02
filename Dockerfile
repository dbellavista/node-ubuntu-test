FROM ubuntu:xenial

RUN apt-get update && apt-get install -y curl git

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get update && apt-get install -y nodejs && npm install -g npm

RUN apt-get update && apt-get install -y \
	libcairo2-dev \
	libjpeg-dev \
	libpango1.0-dev \
	libgif-dev \
	libpng-dev \
	build-essential \
	g++ \
  openssh-client \
  rsync \
  gcc \
  libusb-1.0-0-dev

RUN eval $(ssh-agent -s)
RUN mkdir -p ~/.ssh

CMD [ "node" ]
