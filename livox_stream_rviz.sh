#!/bin/bash
sudo docker build -t ros2_eg2 -f eg2/Dockerfile .
sudo docker run --rm -it \
--device=/dev/ttyUSB0 \
--env DISPLAY=$DISPLAY \
--volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
--volume /share:/app/share \
--net=host \
--ipc=host \
ros2_eg2 \
# \
#ros2 run xsens_driver mtnode.py
ros2 launch livox_lidar_rviz_launch.py

