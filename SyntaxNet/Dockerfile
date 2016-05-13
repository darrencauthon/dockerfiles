#FROM ubuntu:14.04
#FROM mikeneck/bazel
FROM mikeneck/jdk8
MAINTAINER Darren darren@cauthon.com

RUN \
  apt-get update && \
  apt-get install -y \
    pkg-config \
    g++ \
    zlib1g-dev && \
  groupadd -r build && \
  useradd -m -g build bazel

RUN apt-get install -y swig

#USER bazel
#WORKDIR /home/bazel

RUN \
  curl -L \
    https://github.com/bazelbuild/bazel/releases/download/0.2.2/bazel-0.2.2-installer-linux-x86_64.sh \
    -o bazel-install.sh
RUN chmod 700 bazel-install.sh
RUN ./bazel-install.sh --user && \
  rm bazel-install.sh

ENV BAZEL_BIN=/home/bazel/bin
ENV PATH=$PATH:$BAZEL_BIN

CMD ["/bin/bash"]

# Set the lang to US, utf8
#RUN locale-gen en_US.UTF-8
#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US:en
#ENV LC_ALL en_US.UTF-8

# Install base package
#RUN apt-get update
#RUN apt-get install -y wget git build-essential software-properties-common


