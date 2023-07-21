#!/bin/bash
sudo docker build -t ros2_xsens_node -f docker/01_xsens/Dockerfile .
sudo docker run --rm -it \
--device=/dev/bus/usb/001/003 \
--device=/dev/ttyUSB0 \
--env DISPLAY \
--volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
ros2_xsens_node \
ros2 run xsens_driver mtnode.py


