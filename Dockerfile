FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y build-essential software-properties-common \
    && add-apt-repository ppa:git-core/ppa \
    && apt-get update -y \
    && apt-get autoremove -y

RUN apt-get install -y git make

# clean
RUN apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Microsoft/pict.git \
    && cd pict/ \
    && make \
    && chmod 0755 pict \
    && cp pict /usr/bin

CMD ["pict"]
