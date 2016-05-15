FROM mono
MAINTAINER Darren Cauthon <darren@cauthon.com>

RUN apt-get update
RUN apt-get install -y wget git build-essential

WORKDIR /

RUN git clone https://github.com/SparkPost/csharp-sparkpost.git

WORKDIR /csharp-sparkpost/src

RUN nuget update -self
RUN nuget restore
RUN xbuild /p:Configuration=Release

RUN nuget pack SparkPost/SparkPost.nuspec -Prop Configuration=Release
