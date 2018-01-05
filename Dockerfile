FROM ubuntu:xenial

RUN apt-get update && apt-get install -y curl git

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get update && apt-get install -y nodejs && npm install -g npm

RUN apt-get update && apt-get install -y \
  iputils-ping \
  libcairo2-dev \
  libjpeg-dev \
  libpango1.0-dev \
  libgif-dev \
  libpng-dev \
  build-essential \
  g++ \
  openssh-client \
  libkrb5-dev \
  rsync \
  gcc \
  libusb-1.0-0-dev

RUN mkdir -p ~/.ssh

CMD [ "node" ]
