# s5-dev-scripts
A collection for s5-node install and build scripts for windows10 / ubuntu 22.04 and docker start script with debian12-slim.

## Prerequisites

1. Clone this repo.

## under linux 64bit setup a docker image with debian12-slim and s5-node

1. cd docker
2. run "start_docker_debian12-slim.sh", after that the s5-node is installed and compiled.
3. configure the "config.toml" for your s5-node.
4. Now you can start the s5 node with "s5-node_start.sh" in the docker image with name "s5-node".

 


