#!/bin/bash
set -e
L4T_VERSION=$1

if [[ "$L4T_VERSION" == "32.4" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-1.7.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.8.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "32.5" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-1.8.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.9.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "32.6" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-1.9.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.10.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "32.7" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-1.10.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.11.1.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "35.1" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-1.12.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.13.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "35.2" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-1.12.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.13.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "35.3" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-1.13.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.14.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "35.4" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-1.13.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.14.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "36.2" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-2.1.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.16.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "36.3" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-2.1.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.16.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

if [[ "$L4T_VERSION" == "36.4" ]]; then
  TORCH_WHL="https://nvidia.box.com/shared/static/torch-torch-2.1.0.whl"
  VISION_WHL="https://nvidia.box.com/shared/static/vision-vision-0.16.0.whl"
  wget -O torch.whl $TORCH_WHL
  wget -O vision.whl $VISION_WHL
  pip install torch.whl
  pip install vision.whl
  exit 0
fi

echo "Bu JetPack sürümüne uygun PyTorch wheel tanımlı değil: $L4T_VERSION"
exit 1
