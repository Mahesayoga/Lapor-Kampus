# Lapor Kampus - Kelompok MAX

Topik: Lapor Kerusakan Fasilitas Kampus

Anggota:
- Mahesa Yoga - [2300016149]
- Bintang Raif Fauzan - [2300016043]

## Cara Menjalankan
```bash
flutter pub get
flutter run

## 🏢 Deskripsi Aplikasi

**LaporFasilitas** (Sistem Pelaporan Kerusakan Fasilitas Kampus) adalah aplikasi *mobile cross-platform* yang dirancang untuk mempermudah seluruh civitas akademika (mahasiswa, dosen, dan staf) dalam melaporkan kerusakan sarana dan prasarana di lingkungan kampus secara *real-time*, transparan, dan terstruktur. Aplikasi ini menggabungkan tiga fitur utama:

1. **Pengiriman Foto & Informasi Bukti Kerusakan**: Mengunggah foto bukti fisik kerusakan fasilitas kampus langsung dari kamera atau galeri
2. **Validasi Lokasi Fasilitas**: Menentukan posisi gedung/ruangan dan membaca koordinat lokasi fasilitas yang dilaporkan secara akurat
3. **Pelacakan Status Penanganan (Tracking Status)**: Memantau proses tindak lanjut perbaikan fasilitas oleh pihak pengelola sarpras (misal: *Pending*, *Diproses*, *Selesai*)

Sistem **LaporFasilitas** dibangun dengan prinsip *Privacy by Design* yang patuh terhadap **UU No. 27 Tahun 2022 tentang Perlindungan Data Pribadi (UU PDP)** serta standar keamanan **OWASP Mobile 

## 🛠️ Teknologi yang Digunakan

- **Framework Utama**: Flutter (Channel Stable, Dart 3.10+)
- **State Management**: Provider
- **Penyimpanan Kredensial Aman**: `flutter_secure_storage` (Integrasi Android & iOS )
- **Kriptografi & Hashing**: `cryptography` (PBKDF2 HMAC-SHA256 dengan verifikasi waktu konstan)
- **Integrasi Perangkat & Fitur**:
  - `image_picker`: Pengambilan foto kerusakan dari kamera/galeri
  - `geolocator`: Penentuan koordinat lokasi fasilitas
  - `shared_preferences`: Penyimpanan preferensi & sesi lokal[
  - `intl`: Format tanggal, waktu, dan mata uang lokal
- **Arsitektur**: Clean Architecture berbasis *Repository Pattern* (Pemisahan ketat antara antarmuka UI dan sumber data)

---

## ⚙️ Persyaratan Lingkungan (Prerequisites)

Sebelum menjalankan aplikasi, pastikan komputer pengembang telah terpasang:

- **Flutter SDK**: Versi `^3.10.0` atau lebih baru (`flutter doctor` centang hijau)
- **Dart SDK**: Termasuk dalam bundle Flutter SDK
- **Git**: Versi `^2.40.0`
- **IDE**: Visual Studio Code (dengan ekstensi Flutter & Dart) atau Android Studio
- **Perangkat Uji**: Emulator Android (API Level 24+ / Android 7.0+) atau Smartphone fisik Android dengan *USB Debugging* aktif

Struktur Folder Proyek
lapor/
├── .gitignore
├── README.md
├── pubspec.yaml
├── pubspec.lock
│
├── docs/                               # Dokumentasi Proyek
│   ├── 00-charter.md                   # Project Charter
│   └── 01-compliance/                  # Register Kepatuhan & Etika (M01)
│       ├── data-inventory.md           # R1: Inventaris Data Pribadi
│       ├── ethics-matrix.md            # R2: Matriks Etika (ACM & IEEE-CS)
│       ├── pdp-rights-map.md           # R3: Peta Hak Subjek Data (UU PDP)
│       ├── owasp-assessment.md         # R4: Penilaian OWASP Mobile Top 10
│       ├── dark-pattern-audit.md       # R5: Audit Dark Pattern
│       ├── privacy-policy.md           # R6: Kebijakan Privasi M01
│       └── requirements-catalog.md     # Katalog Requirement (PRV, SEC, UX)
│
└── lib/                                # Source Code Aplikasi Flutter
    ├── main.dart                       # Entry point aplikasi
    │
    ├── core/                           # Konfigurasi global & utilitas
    │   ├── constants/                  # Warna, tema, & konstanta string
    │   ├── utils/                      # Helper (format tanggal/Rupiah)
    │   └── theme/                      # Styling & tema aplikasi
    │
    ├── models/                         # Data Models
    │   ├── expense.dart                # Model expense/laporan
    │   └── report.dart                 # Model data LaporFasilitas
    │
    ├── repositories/                   # Layer Akses Data (Repository Pattern)
    │   ├── expense_repository.dart     # Contract / Abstract class
    │   └── in_memory_expense_repository.dart # Implementasi penyimpanan sementara
    │
    ├── providers/                      # State Management (Provider)
    │   └── report_provider.dart
    │
    ├── services/                       # Layanan Eksternal / Lokal
    │   ├── storage_service.dart        # Secure Storage & SharedPreferences
    │   └── location_service.dart       # Integrasi GPS/Lokasi
    │
    ├── screens/                        # Halaman / Tampilan Utama (UI)
    │   ├── home/                       # Halaman Beranda / Dashboard
    │   ├── report/                     # Form Input & Detail Laporan
    │   └── profile/                    # Pengaturan Profil & Privasi
    │
    └── widgets/                        # Reusable UI Components
        ├── custom_button.dart
        └── custom_text_field.dart

Status Milestone Proyek

Proyek ini dikerjakan secara bertahap sepanjang semester mengacu pada peta milestone:
Milestone 	Tahapan 	Deskripsi Utama 	Status 	Tag Git
M01 	Inisiasi Proyek 	Charter, Register Kepatuhan R1–R6, Baseline Keamanan & Fondasi Repository 	🟡 Dalam Proses 	m01-start → m01-initiation
M02 	Spesifikasi 	Elisitasi Kebutuhan, User Stories, Acceptance Criteria, SRS Ringkas & Diagram UML 	⚪ Belum Mulai 	m02-spec
M03 	Prototipe UI 	Screen Inventory, Hi-Fi Prototype Figma, Design Tokens & Usability Testing 	⚪ Belum Mulai 	m03-design
M04 	Frontend Mobile 	Implementasi Widget Flutter, Navigasi, Provider State, Validasi & Data Terenkripsi 	⚪ Belum Mulai 	m04-frontend
M05 	Integrasi API 	Integrasi Cloud/Firestore, Sakelar USE_REMOTE, Security Rules & Kebijakan Privasi v2 	⚪ Belum Mulai 	m05-integration