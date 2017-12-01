FROM debian:stretch

LABEL Maintainer="Matt Burdan <burdz@burdz.net>"

RUN apt update -y && \
    apt install -y \
      git \
      python-pip \
      python-dev \
      build-essential

ADD . /tmp

RUN pip install -r /tmp/requirements.txt

ENV PATH "$PATH:~/.local/bin"
