#!/bin/bash
sudo docker build -t ros2_livox_node -f docker/02_livox/Dockerfile .
sudo docker run --rm -it \
--device=/dev/ttyUSB0 \
--env DISPLAY \
--volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
--volume /share:/app/share \
--net=host \
--ipc=host \
ros2_eg2 \
ros2 topic echo /livox/lidar

