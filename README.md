### Introduction

Boilerplate for setting up development environment for Front End.
> Note: Just configure shell commands for MacOS only

### How do I get set up?

> Remember install & docker first.
> Let grant permissions to all directories that will execute *.sh* files such as: `./bin/*.sh`, `./bootstrap` file and in _entrypoints_ dir, using `sudo` (if need).
Ex:

``chmod +x ./bootstrap.sh`` or ``sudo chmod 777 ./bootstrap.sh``
``chmod +x ./bin/*.sh`` or ``sudo chmod 777 ./bin/*.sh``
``sudo chmod 777 ./docker/entrypoints/*.sh``

Quick research & get knowledge from docker-compose either.
> Deploy mode have not supportted yet.
> To custom evironement, let put in `docker-compose.yml` with corresponding in `docker/docker-compose-files` directory.

### Shell command support for quick bootstrap
Explain about arguments:
``-m``: M is Mode, Modes are:
> **-r**: run (as default).
> **-b**: build images, it needs **-r** to define all _images_ or by _environment_.
> **-r**: _all_ as default value which means it will build all images or by environment.
> **-e**: Environment is your defined, default is _development_

Examples:

1.Run infra with environment
``./boostrap.sh -e environment_you_wanna``

2.Build all images
``./boostrap.sh -m b -r all/environment_you_wanna``

### Contribution guidelines
Huy Doan