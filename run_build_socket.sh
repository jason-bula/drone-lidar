#!/bin/bash
sudo docker build -t ros2_socket -f docker/03_socket/Dockerfile .
sudo docker run --rm -it \
--device=/dev/ttyUSB0 \
--env DISPLAY \
--volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
--volume /share:/app/share \
--net=host \
--ipc=host \
ros2_socket \
ros2 run topic_to_socket test

