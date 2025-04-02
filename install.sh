#!/bin/bash
set -e

GREEN='\033[0;32m'
NC='\033[0m'

function step() {
  local MSG=$1
  echo -ne "${GREEN}[INFO]${NC} $MSG..."
}

function success() {
  echo -e " ${GREEN}✔️${NC}"
}

# JetPack (L4T) sürümünü tespit et
if [ -f /etc/nv_tegra_release ]; then
  L4T_VERSION=$(head -n 1 /etc/nv_tegra_release | sed -n 's/.*R\([0-9]*\.[0-9]*\).*/\1/p')
elif grep -q "L4T_VERSION" /etc/os-release; then
  L4T_VERSION=$(grep "L4T_VERSION" /etc/os-release | cut -d "=" -f2 | cut -c1-4)
else
  echo "[HATA] JetPack (L4T) sürümü tespit edilemedi. Lütfen tam JetPack kurulumu yapınız."
  exit 1
fi

if [[ -z "$L4T_VERSION" ]]; then
  echo "[HATA] JetPack (L4T) sürümü boş görünüyor. Lütfen sisteminizi kontrol ediniz."
  exit 1
fi

step "Algılanan JetPack / L4T sürümü: $L4T_VERSION"
echo ""

REQ_FILE="pip-requirements-$L4T_VERSION.txt"

if [[ ! -f "$REQ_FILE" ]]; then
  echo "[HATA] Bu JetPack sürümü için uyumlu kurulum dosyası bulunamadı: $L4T_VERSION"
  exit 1
fi

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

step "[3/4] pip bağımlılıkları ($REQ_FILE) yükleniyor"
pip install -r $REQ_FILE
success

step "[4/4] PyTorch + torchvision wheel kurulumu"
bash install-pytorch.sh $L4T_VERSION
success

echo ""
echo -e "${GREEN}Kurulum tamamlandı! Ortamı etkinleştirmek için:${NC}"
echo "source $ENV_NAME/bin/activate"
