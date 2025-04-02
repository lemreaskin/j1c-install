# Jetson One-Click Install

Bu projenin amacı, Jetson cihazınızda **tek komutla** AI/ML geliştirme ortamını kurmak.  
İster sıfırdan flashlanmış bir sistem, ister eksik kütüphanelerle gelen bir kurulum olsun — `j1c` ile uyumlu, kararlı bir ortam hazırlayabilirsiniz.

> JetPack **4.x**, **5.x**, **6.x** sürümleri desteklenmektedir.  
> (JetPack 4.4'ten JetPack 6.2'ye kadar tüm ara sürümler)

---

## 🚀 Özellikler

- JetPack sürümünüz otomatik olarak algılanır  
- CUDA, cuDNN, TensorRT, VPI gibi sistem bileşenleri eksikse kurulur  
- Python ortamı (`venv`) oluşturulur ve pip ile tüm kütüphaneler yüklenir  
- Jetson’a özel **uyumlu PyTorch + torchvision** otomatik kurulur  
- **YOLOv8/YOLOv12**, **RT-DETR** gibi modelleri çalıştırmak için hazır ortam sağlar  

---

## ⚙️ Kurulum

### 1. Repoyu klonlayın

```bash
git clone https://github.com/lemreaskin/jetson-oneclick-install.git
cd jetson-oneclick-install
```

### 2. Kurulumu başlatın

```bash
bash install.sh
```

📝 Python ortamı için bir isim girmeniz istenecek.  
Varsayılan: `jetson-env`

### 3. Ortamı etkinleştirin

```bash
source <ortam-adi>/bin/activate
```

---

## 📦 Kurulumun Başlıca Bileşenleri

### Sistem Seviyesi (JetPack'e uygun şekilde):

- CUDA (JetPack ile uyumlu sürüm)
- cuDNN
- TensorRT
- VPI
- GStreamer (HW hızlandırmalı)
- DeepStream (isteğe bağlı)

### Python Ortamı:

- PyTorch (JetPack sürümüne uygun NVIDIA wheel)
- torchvision
- ultralytics (YOLO modelleri için)
- transformers, datasets (RT-DETR ve benzeri modeller için)
- onnx, onnxruntime-gpu, opencv-python-headless
- jupyterlab, matplotlib, scikit-learn, pandas
- jetson-stats, pycuda, imageio, vb.

---

## ❓ Sık Sorulan Sorular (FAQ)

### Kurulum ne kadar sürer?
İnternet hızınıza bağlı olarak 10–25 dakika sürebilir.

### Ortam hangi JetPack sürümlerini destekliyor?

| JetPack | L4T    | Durum       |
|---------|--------|-------------|
| 4.4     | 32.4   | ✅ Destekleniyor |
| 4.5     | 32.5   | ✅ Destekleniyor |
| 4.6.x   | 32.6–32.7 | ✅ Destekleniyor |
| 5.1.x   | 35.1–35.4 | ✅ Destekleniyor |
| 6.0     | 36.2   | ✅ Destekleniyor |
| 6.1     | 36.3   | ✅ Destekleniyor |
| 6.2     | 36.4   | ✅ Destekleniyor |

### `venv` yerine `conda` kullanabilir miyim?
Hayır. Bu sistem `venv` + `pip` ile çalışacak şekilde optimize edilmiştir.  
Jetson cihazlarda `conda` önerilmez.

### JetPack bileşenleri sistemde eksikse?
Script otomatik olarak eksik bileşenleri algılar ve `nvidia-jetpack` paketini yükler.  
Sisteminiz çıplak olsa bile her şey otomatik olarak tamamlanır.

---

## 🧠 Notlar

- Python ortamı sistemden izole çalışır, projelerinizi etkilemez  
- Her JetPack sürümüne özel uyumlu kütüphane kombinasyonları kullanılır  
- Kurulum sırasında sisteminize zarar verecek bir işlem yapılmaz  

---

## 📜 Lisans

MIT License

---

## ❤️ Katkı

Pull request ve önerilere her zaman açığız!  
Yeni JetPack sürümleri çıktıkça desteklemek için katkılarınızı bekliyoruz.
