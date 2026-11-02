# Katalog Requirement Kepatuhan
# Buat ID sendiri untuk topik kalian; gunakan pola ini sebagai panduan

## Privasi & UX (PRV-xx, UX-xx)
| ID | Requirement | Sumber | Milestone |
|----|-------------|--------|-----------|
| PRV-01 | Minimisasi data: Hanya mengumpulkan NIM, foto, deskripsi, dan lokasi gedung | P04/R1 | M04 |
| PRV-02 | Tidak ada SDK pihak ketiga yang mengumpulkan data pelacakan | P04 | M01-M05 |
| PRV-03 | Hapus semua data laporan & akun ≤ 2 ketukan | UU PDP Ps. 8 | M04 |
| PRV-04 | Ekspor data laporan ke format portabel | UU PDP Ps. 7 | M04 |
| PRV-05 | Kebijakan privasi bisa dibuka dari dalam aplikasi | UU PDP Ps. 5 | M03-M04 |
| UX-01 | Lulus audit dark pattern R5 pada setiap rilis | P04 | M03-M05 |

## Keamanan (SEC-xx)
| ID | Requirement | Sumber | Milestone |
|----|-------------|--------|-----------|
| SEC-01 | Data sensitif disimpan di secure storage, bukan SharedPreferences | P05 M9 | M01 |
| SEC-02 | PIN/credential di-hash dengan KDF + salt acak | P05 M1 | M01 |
| SEC-03 | allowBackup=false; tanpa log print di versi production | P05 M8 | M01 |
| SEC-04 | Tanpa secret di repo; .gitignore dan pemindaian keamanan aktif | P05 M1 | M01 |
| SEC-05 | Semua komunikasi jaringan wajib HTTPS | P05 M5 | M01-M05 |
| SEC-06 | Izin minimal: tanpa izin INTERNET sampai M05 | P05 M5/M6 | M01-M05 |