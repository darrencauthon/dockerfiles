FROM mono
MAINTAINER Darren Cauthon <darren@cauthon.com>

RUN apt-get update
RUN apt-get install -y wget git build-essential

RUN apt-get install -y vim

WORKDIR /

RUN git clone https://github.com/SparkPost/csharp-sparkpost.git

WORKDIR /csharp-sparkpost/src

ADD build_and_deploy.sh /csharp-sparkpost/src
RUN chmod 777 build_and_deploy.sh

#RUN nuget update -self
#RUN nuget restore
#RUN xbuild /p:Configuration=Release

#RUN nuget pack SparkPost/SparkPost.nuspec -Prop Configuration=Release

CMD /csharp-sparkpost/src/build_and_deploy.sh
