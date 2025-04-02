#!/bin/bash
set -e
L4T_VERSION=$1

if [[ "$L4T_VERSION" == "36.2" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/k68o99f5q45j6m1ub2qkzshl2mnyxq3j.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/7jnlj8qftkxn2z0h9x5mugp1l5gh3rzn.whl"
elif [[ "$L4T_VERSION" == "32.7" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-1.10.0-cp36-cp36m-linux_aarch64.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/torchvision-0.11.1-cp36-cp36m-linux_aarch64.whl"
else
  echo "Bu JetPack sürümüne uygun PyTorch wheel tanımlı değil: $L4T_VERSION"
  exit 1
fi

wget -O torch.whl $TORCH_WHL
wget -O vision.whl $VISION_WHL

pip install torch.whl
pip install vision.whl
