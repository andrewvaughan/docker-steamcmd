# SteamCMD Docker Container

The Steam Console Client (or [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)) is a command-line version of the Steam client.  Its primary use is to install and update various servers on dedicated environments to create consistent, multiplayer environments.  SteamCMD works with any game that uses the [SteamPipe](https://developer.valvesoftware.com/wiki/SteamPipe) content system.

This container is intended to be extended to provide ease-of-access to the SteamCMD system, generally when automating the installation and/or configuration of servers within Docker containers.

# Docker Tags

All tags are based off of the underlying [Ubuntu](https://hub.docker.com/_/ubuntu/) system running them.  All servers are intended for x64 based systems.

* `12.04`, `precise` [(precise/Dockerfile)](https://github.com/andrewvaughan/docker-steamcmd/blob/master/precise/Dockerfile)
* `14.04`, `trusty` [(trusty/Dockerfile)](https://github.com/andrewvaughan/docker-steamcmd/blob/master/trusty/Dockerfile)
* `16.04`, `xenial`, `latest` [(xenial/Dockerfile)](https://github.com/andrewvaughan/docker-steamcmd/blob/master/xenial/Dockerfile)
* `16.10`, `yakkety` [(yakkety/Dockerfile)](https://github.com/andrewvaughan/docker-steamcmd/blob/master/yakkety/Dockerfile)
* `17.04`, `zesty`, `devel` [(zesty/Dockerfile)](https://github.com/andrewvaughan/docker-steamcmd/blob/master/zesty/Dockerfile)

# Quick Start

`docker run andrewvaughan/steamcmd:latest +login anonymous +quit`

# Interactive Mode

SteamCMD can also be used in interactive mode to test interactions with the system:

`docker run -it andrewvaughan/steamcmd:latest`

These could be attempted, for instance, while in interactive mode:

* `login anonymous` (generally required before doing anything)
* `app_update 4020 validate` (Installs Garry's Mod sandbox server)
* `quit` (exits)

# Issues and Contributing

Please refer to our [Contribution Guidelines](https://github.com/andrewvaughan/docker-steamcmd/blob/master/CONTRIBUTING.md).

# License

Please refer to the [MIT License](https://github.com/andrewvaughan/docker-steamcmd/blob/master/LICENSE) for this project.
