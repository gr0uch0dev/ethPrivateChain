FROM ubuntu:xenial

RUN apt-get update \
     && apt-get install -y wget software-properties-common \
     && rm -rf /var/lib/apt/lists/*

WORKDIR "/root"

RUN add-apt-repository -y ppa:ethereum/ethereum

ARG binary
RUN apt-get update \
     && apt-get install -y ethereum
ADD ./mineWhenNeeded.js ./mineWhenNeeded.js
ADD ./loadMiningScript.sh ./loadMiningScript.sh
ADD ./geth.service ./geth.service
RUN ["chmod", "+x", "loadMiningScript.sh"]

# RUN systemctl --user enable geth.service
# RUN systemctl --user start geth.service

CMD ./loadMiningScript.sh

EXPOSE 8543
