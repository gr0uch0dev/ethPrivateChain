FROM ubuntu:xenial

RUN apt-get update \
     && apt-get install -y wget software-properties-common \
     && rm -rf /var/lib/apt/lists/*

WORKDIR "/root"

RUN add-apt-repository -y ppa:ethereum/ethereum

ARG binary
RUN apt-get update \
     && apt-get install -y ethereum

ARG password
ARG privatekey
RUN echo $password > ~/.accountpassword
RUN echo $privatekey > ~/.privatekey
ADD ./genesis.json ./genesis.json
ADD ./runNode.sh ./runNode.sh
RUN geth init genesis.json
RUN geth account import --password ~/.accountpassword  ~/.privatekey

RUN ["chmod", "+x", "runNode.sh"]

# CMD bootnodeId=$bootnodeId bootnodeIp=$bootnodeIp address=$address ./runNode.sh
CMD ./runNode.sh

EXPOSE 8544
