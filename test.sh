#!/bin/bash
sudo docker build -t ros2_webserver_node -f docker/04_webserver/Dockerfile .
sudo docker run --rm -it \
--device=/dev/ttyUSB0 \
--env DISPLAY \
--volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
--volume /share:/app/share \
--net=host \
--ipc=host \
-p 8000:8000 \
-p 9090:9090 \
ros2_webserver_node \
ros2 run webserver test
