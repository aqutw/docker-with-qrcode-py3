FROM ubuntu:latest
MAINTAINER aqutw

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

RUN ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime 
RUN echo "Asia/Taipei" > /etc/timezone

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip \
  && pip3 install qrcode \
  && pip3 install pandas \
  && pip3 install Pillow

ENTRYPOINT ["python3"]
