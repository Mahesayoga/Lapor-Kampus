# R1 · Inventaris Data Pribadi
# Aplikasi: Lapor Kampus Topik: Lapor Kerusakan Fasilitas Kampus Kelompok: MAX

| Data | Kategori UU PDP | Tujuan | Lokasi simpan | Retensi | Perlindungan |
|------|-----------------|--------|---------------|---------|--------------|
| ID Pengguna / NIM | Umum | Autentikasi dan identifikasi pelapor | Lokal & Cloud | Sampai akun dihapus | Enkripsi / Secure Storage |
| Foto Kerusakan | Umum | Bukti kondisi kerusakan fasilitas | Cloud | 1 Tahun | Akses terbatas / Token HTTPS |
| Deskripsi Laporan | Umum | Detail masalah fasilitas yang dilaporkan | Lokal & Cloud | 1 Tahun | Sanitasi input / DB Security |
| Lokasi Gedung / Ruangan | Umum | Menentukan titik lokasi fasilitas | Lokal & Cloud | 1 Tahun | Akses terbatas |

## Tidak Dikumpulkan (konfirmasi eksplisit)
- [x] Lokasi GPS (menggunakan input manual gedung/ruangan)
- [x] ID perangkat
- [x] Kontak / Buku Alamat
- [x] Rekaman suara / Mikrofon
- [x] Data finansial / Pembayaran

## Requirement yang Lahir dari Register Ini
- PRV-01: Aplikasi hanya mengumpulkan data minimal yang diperlukan untuk proses pelaporan kerusakan fasilitas (NIM, foto, lokasi gedung, dan deskripsi).
- PRV-02: Aplikasi tidak menggunakan SDK pihak ketiga yang melacak atau mengumpulkan data analitik pengguna tanpa izin.