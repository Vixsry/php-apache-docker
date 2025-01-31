# 🐘 PHP & MariaDB Docker Compose Development Environment 🚢

<div align="center">
  <img src="https://img.shields.io/badge/PHP-8.2-777BB3?style=flat-square&logo=php" alt="PHP Version">
  <img src="https://img.shields.io/badge/MariaDB-11.2-1F305F?style=flat-square&logo=mariadb" alt="MariaDB Version">
  <img src="https://img.shields.io/badge/Docker-Compose-2496ED?style=flat-square&logo=docker" alt="Docker Compose">
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="License">
</div>

## 🌟 Fitur Utama

- 🐘 PHP 8.2 dengan Apache
- 💽 MariaDB 11.2 terbaru
- 🔍 Adminer untuk manajemen database
- 💾 Backup otomatis database
- 🛡️ Konfigurasi keamanan yang ditingkatkan

## 📊 OSS Insight Statistics

[![OSS Insight](https://img.shields.io/badge/OSS%20Insight-Project%20Analysis-blue?style=for-the-badge&logo=github)](https://ossinsight.io/analyze/)

### 🔢 Statistik Proyek

<table>
  <tr>
    <td align="center">
      <a href="https://ossinsight.io/analyze/">
        <img src="https://img.shields.io/badge/Total%20Commits-Dynamic-brightgreen?style=for-the-badge" alt="Total Commits">
      </a>
    </td>
    <td align="center">
      <a href="https://ossinsight.io/analyze/">
        <img src="https://img.shields.io/badge/Contributors-Dynamic-blue?style=for-the-badge" alt="Contributors">
      </a>
    </td>
  </tr>
</table>

## 🚀 Prasyarat

- 🐳 Docker (versi terbaru)
- 🐋 Docker Compose (versi 3.9+)
- 💻 Sistem Operasi: Linux, macOS, atau Windows dengan Docker Desktop

## 🔧 Instalasi & Pengaturan

### 1. Kloning Repositori

```bash
git clone https://github.com/anda/nama-repository.git
cd nama-repository
```

### 2. Konfigurasi Lingkungan

1. Salin file environment:
```bash
cp .env.example .env.php
cp .env.example .env.db
```

2. Edit kredensial di file `.env.php` dan `.env.db`:
```bash
nano .env.php
nano .env.db
```

### 3. Membangun dan Menjalankan Kontainer

```bash
docker-compose up --build -d
```

### 4. Akses Aplikasi

- 🌐 Aplikasi Web: `http://localhost`
- 🗃️ Adminer: `http://localhost:8080`

## 🔒 Keamanan

- Tidak ada hak istimewa berlebihan pada kontainer
- Pembatasan kemampuan sistem
- Penggunaan file environment terpisah
- Backup otomatis database

## 📦 Struktur Proyek

```
.
├── app/                # Kode sumber PHP
├── backups/            # Cadangan database
├── mysql/              # Konfigurasi MariaDB
│   ├── my.cnf
│   └── initdb.d/
├── php/                # Konfigurasi PHP
│   ├── Dockerfile
│   └── custom.ini
├── docker-compose.yml
└── README.md
```

## 💡 Tips Pengembangan

- Gunakan `docker-compose logs [service]` untuk debug
- Perbarui `.env` files dengan kredensial yang aman
- Nonaktifkan akses root eksternal untuk database

## 🤝 Kontribusi

1. Fork repositori
2. Buat branch fitur (`git checkout -b fitur-keren`)
3. Commit perubahan (`git commit -m 'Tambah fitur keren'`)
4. Push ke branch (`git push origin fitur-keren`)
5. Buat Pull Request

## 📜 Lisensi

Didistribusikan di bawah Lisensi MIT. Lihat `LICENSE` untuk informasi lebih lanjut.

## 🛠️ Teknologi yang Digunakan

<div align="center">
  <img src="https://img.shields.io/badge/PHP-777BB3?style=for-the-badge&logo=php&logoColor=white" alt="PHP">
  <img src="https://img.shields.io/badge/Apache-D22128?style=for-the-badge&logo=apache&logoColor=white" alt="Apache">
  <img src="https://img.shields.io/badge/MariaDB-1F305F?style=for-the-badge&logo=mariadb&logoColor=white" alt="MariaDB">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker">
</div>

---

<div align="center">
  👨‍💻 Dibuat dengan ❤️ oleh Vixsry
</div>
