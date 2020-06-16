docker run -it \
    --gpus all \
    --rm \
    --net rosnet \
    --name libtorch \
    ros:melodic-libtorch-gpu
