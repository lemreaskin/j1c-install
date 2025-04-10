#!/bin/bash
set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

function log_info() {
    echo -e "${YELLOW}[INFO]${NC} $1"
}

function log_ok() {
    echo -e "${GREEN}[OK]${NC} $1"
}

function log_install() {
    echo -e "${GREEN}[INSTALL]${NC} $1"
}

function log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

log_info "JetPack sürümü algılanıyor..."
L4T_VERSION=$(head -n 1 /etc/nv_tegra_release | sed -n 's/.*R\([0-9]*\.[0-9]*\).*/\1/p')
log_ok "Tespit edilen L4T / JetPack sürümü: $L4T_VERSION"

log_info "nvidia-jetpack metapaket kontrol ediliyor..."
if dpkg -s nvidia-jetpack &> /dev/null; then
    log_ok "nvidia-jetpack zaten kurulu."
else
    log_install "JetPack bileşenleri kuruluyor..."
    sudo apt update
    sudo apt install -y nvidia-jetpack
fi

log_info "Geliştirme araçları ve kütüphaneler kuruluyor..."

sudo apt update
sudo apt install -y \
    build-essential \
    python3-pip \
    python3-venv \
    libopencv-dev \
    python3-opencv \
    vpi3-dev \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    gstreamer1.0-alsa \
    gstreamer1.0-plugins-base-apps \

log_ok "Tüm sistem gereksinimleri tamamlandı."
