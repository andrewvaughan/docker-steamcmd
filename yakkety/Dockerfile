# SteamCMD Server
#
# --------------------------------------------------------------------------------------------------------------------
# @DOCKER-BUILD : docker build -t andrewvaughan/steamcmd .
# @DOCKER-RUN   : docker run andrewvaughan/steamcmd:yakkety
# --------------------------------------------------------------------------------------------------------------------
#
# See the readme for this container at:
# https://github.com/andrewvaughan/docker-steamcmd/blob/master/README.md

FROM ubuntu:yakkety

MAINTAINER Andrew Vaughan <hello@andrewvaughan.io>


### Update Ubuntu packages to be able to support SteamCMD

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get autoremove -y

RUN apt-get install -y \
    wget \
    lib32gcc1


### Setup working directories

RUN mkdir /opt/steamcmd
WORKDIR /opt/steamcmd


### Download SteamCMD from Valve

RUN wget http://media.steampowered.com/client/steamcmd_linux.tar.gz \
    && tar -xvzf steamcmd_linux.tar.gz \
    && rm steamcmd_linux.tar.gz


### Run SteamCMD

ENTRYPOINT ["/opt/steamcmd/steamcmd.sh"]
