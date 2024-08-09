#!/bin/bash
#
# Copyright (c) 2021, NVIDIA CORPORATION.  All rights reserved.
#
# NVIDIA CORPORATION and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.  Any use, reproduction, disclosure or
# distribution of this software and related documentation without an express
# license agreement from NVIDIA CORPORATION is strictly prohibited.

# Build ROS dependency
echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
source /opt/ros/${ROS_DISTRO}/setup.bash

### My Changes
echo "alias vslam_go='ros2 launch isaac_ros_visual_slam isaac_ros_visual_slam_realsense.launch.py'" >> ~/.bashrc
echo "alias keypoints='ros2 run keypoints_visualizer vslam_sim'" >> ~/.bashrc
echo "alias sr='source /workspaces/isaac_ros-dev/install/setup.bash && echo \"The isaac_ros-dev workspace was sourced successfully.\"'" >> ~/.bashrc

echo "source /workspaces/isaac_ros-dev/install/setup.bash" >> ~/.bashrc
echo "alias cb='colcon build --symlink-install'" >> ~/.bashrc
echo "alias cs='clear'" >> ~/.bashrc
### My Changes

sudo apt-get update
rosdep update

# Restart udev daemon
sudo service udev restart

$@
