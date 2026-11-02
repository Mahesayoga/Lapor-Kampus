# R4 · Penilaian OWASP Mobile Top 10 (2024)
# Aplikasi: Lapor Kampus Topik: Pelaporan Kerusakan Fasilitas Kampus

| # | Risiko | Status M01 | Kontrol / Rencana |
|---|--------|------------|-------------------|
| M1 | Kredensial tidak aman | Mitigasi | Menggunakan `.gitignore` untuk menyembunyikan API key & file rahasia |
| M2 | Supply chain | Mitigasi | Meninjau dependensi pubspec & mengunci versi di `pubspec.lock` |
| M3 | Autentikasi / otorisasi | Direncanakan | PIN lokal + batas percobaan autentikasi; server rules di M05 |
| M4 | Validasi input/output | Direncanakan | Validator form input teks & batas ukuran foto di M04 |
| M5 | Komunikasi tidak aman | N/A hingga M05 | Menggunakan HTTPS & `network_security_config` saat menghubungkan API |
| M6 | Kontrol privasi | Mitigasi | Menerapkan prinsip minimisasi data (PRV-01 hingga PRV-06) |
| M7 | Perlindungan binary | Direncanakan | Obfuscate kode Dart saat build release (`--obfuscate`) |
| M8 | Konfigurasi salah | Mitigasi | Menyetel `android:allowBackup="false"` & mematikan log debug sensitif |
| M9 | Penyimpanan tidak aman | Direncanakan | Menggunakan `flutter_secure_storage` untuk token & data sensitif di M04 |
| M10 | Kriptografi lemah | Mitigasi | Menggunakan pustaka `cryptography` (KDF PBKDF2), tanpa MD5/SHA1 |

## Risiko Khas Topik Ini (tambahkan)
- M6/M9 Lapor Kampus: Foto bukti kerusakan & deskripsi laporan – enkripsi data lokal dan pastikan sanitasi metadata lokasi/EXIF foto sebelum diunggah ke server.