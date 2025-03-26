#!/bin/bash
set -e

# Renk tanımları
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Basit işlem göstergesi
function step() {
  local MSG=$1
  echo -ne "${GREEN}[INFO]${NC} $MSG..."
}

function success() {
  echo -e " ${GREEN}✔️${NC}"
}

echo -e "${GREEN}Jetson One-Click Installer Başlıyor...${NC}"
read -p "Python ortamı için bir isim girin [default: jetson-env]: " ENV_NAME
ENV_NAME=${ENV_NAME:-jetson-env}

step "[1/4] Sistem gereksinimleri kuruluyor"
bash system-requirements.sh
success

step "[2/4] Python ortamı ($ENV_NAME) oluşturuluyor"
python3 -m venv $ENV_NAME
source $ENV_NAME/bin/activate
pip install --upgrade pip > /dev/null
success

step "[3/4] Python kütüphaneleri yükleniyor"
pip install -r pip-requirements.txt
success

step "[4/4] PyTorch + torchvision kuruluyor"
bash install-pytorch.sh
success

echo ""
echo -e "${GREEN}Kurulum tamamlandı! Ortamı etkinleştirmek için:${NC}"
echo "source $ENV_NAME/bin/activate"
