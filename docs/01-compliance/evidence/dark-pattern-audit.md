# R5 · Audit Dark Pattern
# Pertanyaan uji ini dijalankan pada setiap rilis milestone

| Pola | Pertanyaan Uji | Harapan di Aplikasi Kami |
|------|----------------|--------------------------|
| Pre-selected options | Adakah opsi yang sudah tercentang demi kepentingan kita? | Semua sakelar opsional default MATI |
| Trick questions | Bisakah kalimat opsi dibaca dua arah? | Kalimat positif tunggal: 'Izinkan X?' |
| Roach motel | Apakah keluar/hapus lebih sulit daripada masuk? | Hapus laporan/akun ≤ 2 ketukan, tanpa CS |
| Confirmshaming | Apakah tombol 'tidak' mempermalukan pengguna? | Teks netral: 'Tidak sekarang' |
| Privacy zuckering | Apakah pengaturan privasi tersebar atau rumit? | Satu layar 'Privasi & Data' |
| Misdirection / Obstruction | Apakah tombol batalkan laporan disembunyikan atau dibuat samar? | Tombol 'Batal' dan 'Kirim Laporan' memiliki kontras dan ukuran yang jelas |

## Requirement yang Lahir dari Register Ini
- UX-01: Lulus audit dark pattern pada setiap rilis
- UX-02: Fitur opsional default MATI; persetujuan bisa ditarik
- UX-03: Teks ≥ 14sp, kontras AA, label aksesibilitas pada kontrol utama