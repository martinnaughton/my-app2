FROM jenkins/jenkins:lts

USER root

#RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2  software-properties-common
#RUN curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey
#RUN add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/debian \ $(lsb_release -cs) \ stable"
#RUN apt-get update
#RUN apt-get install -y docker-ce docker-ce-cli containerd.iodd
#RUN apt-get install -y maven


RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg2  software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update
RUN apt-get install -y docker-ce docker-ce-cli containerd.io
