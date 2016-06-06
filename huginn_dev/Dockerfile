FROM ubuntu:wily
MAINTAINER Darren Cauthon <darren@cauthon.com>

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update
RUN apt-get install -y wget git dos2unix vim zip curl

WORKDIR /root

RUN git clone https://github.com/darrencauthon/vim_config.git .vim
RUN cp .vim/.vimrc .vimrc

#RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
#RUN source /usr/local/rvm/scripts/rvm
#RUN rvm install ruby-2.0.0-p648
#RUN rvm use 2.0

sudo apt-get -y update
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
cd /tmp
wget http://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p451.tar.gz
tar -xvzf ruby-2.0.0-p451.tar.gz
cd ruby-2.0.0-p451/
./configure --prefix=/usr/local
make
sudo make install

CMD bash
