# Face Attendance (Mobile) — SPEKTR

Bu — mobil brauzerda ishlaydigan **Face Attendance** (yuzni tanib, ishga kelgan vaqtni yozuvchi) single-file web ilova.

## Nimasi bor
- `index.html` — mobil uchun optimallashtirilgan bitta HTML/JS fayl.
- `models/` — face-api.js model fayllari uchun papka (bo'sh, quyidagi script orqali yuklanadi).
- `fetch_models.sh` — model fayllarni avtomatik yuklash uchun shell script (Linux/macOS yoki Windows Subsystem for Linux).

## Qanday ishlaydi (qisqacha)
1. `index.html` ga kirib, kamera ruxsatini bering.
2. `Enroll` orqali har bir xodimning yuz descriptorlarini saqlang.
3. `Start Scan` bosilganda orqa kamera orqali yuzni taniydi va `localStorage` ga vaqt yozadi.
4. `CSV yuklab olish` orqali attendance faylini olishingiz mumkin.

## Modellarni yuklash
Face-api.js modellari katta va ularni GitHub raw manbaidan yuklab olish tavsiya etiladi.
Terminalda:

```bash
# Birinchi marta ishlatayotganda:
chmod +x fetch_models.sh
./fetch_models.sh
```

Bu `models/` papkasiga kerakli fayllarni yuklaydi.

## GitHub Pages ga joylash
1. Yangi repo yarating (masalan `face-attendance`).
2. Fayllarni commit qilib push qiling.
3. `Settings` → `Pages` dan `main` branch va `/ (root)` ni tanlang.
4. `/models` papkasidagi fayllar ham repoda bo'lishi kerak — shunda GitHub Pages brauzerda `index.html` to'g'ri yuklanadi.

> Eslatma: GitHub Pages ba'zan `raw` fayllarni `Content-Type` bilan boshqarish masalalari bo'lishi mumkin. Agar brauzer model fayllarini yuklay olmayotgan bo'lsa, model fayllarni boshqa CDN (masalan S3 yoki GitHub Releases) ga joylashtirishni o'ylab ko'ring.

## Litsenziya
MIT
