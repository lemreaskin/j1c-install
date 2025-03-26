#!/bin/bash
set -e

TORCH_WHL="torch-2.1.0+nv23.10-cp310-cp310-linux_aarch64.whl"
VISION_WHL="torchvision-0.16.0+nv23.10-cp310-cp310-linux_aarch64.whl"

wget -N https://nvidia.box.com/shared/static/k68o99f5q45j6m1ub2qkzshl2mnyxq3j.whl -O $TORCH_WHL
wget -N https://nvidia.box.com/shared/static/7jnlj8qftkxn2z0h9x5mugp1l5gh3rzn.whl -O $VISION_WHL

pip install $TORCH_WHL
pip install $VISION_WHL
