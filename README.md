# Jetson 1-Click Install

Projenin amacı tek komutla Jetson'a temiz bir kurulum gerçekleştirmektir.
Bu kurulum, JetPack 6.0 (Ubuntu 22.04 + L4T 36.2.0) ile uyumludur ve en kararlı AI/ML kütüphaneleri ile birlikte gelir.

## Özellikler

- CUDA, cuDNN, TensorRT, VPI gibi sistem bileşenlerini otomatik kurulur.
- Python ortamı (`venv`) oluşturur ve gerekli pip kütüphanelerini yüklenir.
- Jetson’a özel PyTorch + torchvision kurulur.
- **YOLOv12**, **RT-DETR** gibi modelleri hızlıca çalıştırmak için hazır environment oluşturulmasına olanak sağlar.

## Kurulum

### 1. Repoyu klonlayın

```bash
git clone https://github.com/lemreaskin/jetson-oneclick-install.git
cd jetson-oneclick-install
```

### 2. Kurulumu başlatın

```bash
bash install.sh
```

Bir oluşturulacak Python ortamına bir isim vermeniz gerekir. Varsayılan olarak `jetson-env` kullanılır.

### 3. Ortamı etkinleştirin

```bash
source <ortam-adi>/bin/activate
```

## Kurulumun Başlıca Bileşenleri

### Sistem Seviyesi:
- CUDA 12.2 (JetPack 6.0)
- cuDNN 8.9.2
- TensorRT 8.6.1
- VPI 3.x
- DeepStream 6.3
- GStreamer NVIDIA HW hızlandırmalı eklentiler

### Python:
- PyTorch 2.1.0 (Jetson uyumlu wheel)
- torchvision 0.16.0 (Jetson uyumlu wheel)
- ultralytics (YOLOv8, YOLOv12 desteği)
- transformers (RT-DETR için)
- onnx, onnxruntime-gpu, opencv, pandas, jupyterlab, ve daha fazlası

## Sık Sorulan Sorular (FAQ)

### Kurulum ne kadar sürer?
İnternet hızınıza bağlı olarak 10-25 dakika ya da daha fazla sürebilir.

### `venv` yerine `conda` kullanabilir miyim?
Bu kurulum yalnızca `pip + venv` ile tasarlanmıştır. 
