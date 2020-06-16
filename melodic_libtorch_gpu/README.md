# docker+ROS+libtorch(gpu)

- nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

```
$ git clone https://github.com/pytorch/pytorch
$ cd pytorch
$ git submodule update --init --recursive
$ python setup.py build
$ mkdir build_libtorch && cd build_libtorch
$ python ../tools/build_libtorch.py
```

$ sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
$ apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
$ curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
$ apt install ros-melodic-ros-base

$apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
python-catkin-tools protobuf-compiler
### Error
- lsb_release: command not found > sudo apt-get install lsb-release

- xhost +

- docker run -it **--gpus all** --rm --net rosnet --name libtorch ros:melodic-libtorch-gpu
