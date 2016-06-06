FROM ruby:2.2.5
MAINTAINER Darren Cauthon <darren@cauthon.com>

RUN apt-get update
RUN apt-get install -y wget git dos2unix vim zip

WORKDIR /root

RUN git clone https://github.com/darrencauthon/vim_config.git .vim
RUN cp .vim/.vimrc .vimrc

CMD bash
