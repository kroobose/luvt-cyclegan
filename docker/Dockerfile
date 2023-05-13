FROM pytorch/pytorch:1.8.1-cuda11.1-cudnn8-runtime

ENV TZ=Asia/Tokyo
WORKDIR /workspace
ENV LANG C.UTF-8
ENV LANGUAGE en_US
ENV DEBCONF_NOWARNINGS yes
ENV PYTHONIOENCODING utf-8
ENV DEBIAN_FRONTEND=noninteractive

# package install
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y --no-install-recommends git lsof wget unzip build-essential libreadline-dev \ 
libncursesw5-dev libssl-dev libsqlite3-dev libgdbm-dev \
libbz2-dev liblzma-dev zlib1g-dev uuid-dev libffi-dev libdb-dev libgl1-mesa-dev python3-llvmlite

# autoremove
RUN apt-get -y update && apt-get -y upgrade && apt-get autoremove -y

RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip wheel colorama shap
RUN pip3 install --upgrade nbformat
RUN pip3 install --upgrade setuptools==62.4

COPY requirements.txt .
RUN pip3 install -r requirements.txt