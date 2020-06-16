FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

ARG USERNAME

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get -y install nano wget curl

RUN pip3 install pyyaml

RUN useradd -m -s /bin/bash ${USERNAME}

WORKDIR /home/${USERNAME}
