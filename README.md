# s5-dev-scripts
A collection for s5-node install and build scripts for windows10 / ubuntu 22.04 and docker start script with debian12-slim.

## Prerequisites

1. Clone this repo.


## s5-node setup for windows10 64bit

1. cd windows10_64
2. first you need to run "1_setup s5.bat" as administrator, then you may need to restart the computer.
3. if necessary, restart the computer.
4. next run "2_build_s5.bat", after that the s5-node is installed and compiled.
5. configure the "config.toml" for your s5-node.
6. now you can start the s5-node with "s5-note_start.bat"


## s5-node setup for ubuntu 22.04 64bit

1. cd linux/ubuntu2204_64
2. run "setup_s5.sh", after that the s5-node is installed and compiled.
3. configure the "config.toml" for your s5-node.
4. now you can start the s5-node with "s5-node_start.sh"


## under linux 64bit setup a docker image with debian12-slim and s5-node

1. cd docker
2. run "start_docker_debian12-slim.sh", after that the s5-node is installed and compiled.
3. configure the "config.toml" for your s5-node.
4. Now you can start the s5 node with "s5-node_start.sh" in the docker image with name "s5-node".

 


