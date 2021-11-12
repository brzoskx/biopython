FROM ubuntu:20.04
ENV TZ=Europe/Warsaw
COPY ci-dependencies.txt /opt/ci-dependencies.txt
RUN apt-get update -y
RUN apt-get install -y python3.9
RUN apt-get install -y python3.9-dev
RUN apt-get install -y git
RUN apt-get install -y python3-pip
RUN apt-get install -y libmysqlclient-dev
RUN python3.9 -m pip install -r /opt/ci-dependencies.txt