# s5-dev-scripts
A collection for s5-node install and build scripts for windows10 / ubuntu22.04 / Debian9.2 and docker-start-script for debian12 / ubuntu2204.

## Prerequisites

1. Clone this repo.

## under linux 64bit setup a docker image with debian12 and s5-node

1. cd docker
2. before you install s5-node, first configure the file "debian12_64/default_config_extra.toml".
3. run "start_docker_debian12_systemd.sh", after that the s5-node is installed and compiled.
4. Now you can start the s5 node with "s5-node_start.sh" in the docker image with name "s5-node".

## under linux 64bit setup a docker image with ubuntu2204 and s5-node

1. cd docker
2. before you install s5-node, first configure the file "ubuntu2204_64/default_config_extra.toml".
3. run "start_docker_ubuntu2204_systemd.sh", after that the s5-node is installed and compiled.
4. Now you can start the s5 node with "s5-node_start.sh" in the docker image with name "s5-node".

 


