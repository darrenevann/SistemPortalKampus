# Sistem Portal Kampus

## Deskripsi
Sistem Portal Kampus adalah aplikasi berbasis web yang digunakan untuk mengelola data akademik, pendaftaran skripsi, jadwal ujian, serta informasi beasiswa. Sistem ini memisahkan antara tampilan publik (frontend) dan panel pengelolaan data (admin).

## Fitur Utama
1. Dashboard Admin: Ringkasan data sistem.
2. Manajemen Skripsi: Pengelolaan data peserta skripsi dan dokumen terkait.
3. Jadwal Ujian: Pengaturan waktu, tanggal, dan dokumentasi foto ujian.
4. Sistem Beasiswa: Pengelolaan sumber beasiswa dan daftar penerima.
5. Galeri & Berita: Publikasi kegiatan kampus dan pengumuman akademik.

## Spesifikasi Teknis
- Bahasa: PHP.
- Database: MySQL (MariaDB).
- Frontend: Bootstrap 5.
- Server: Localhost (XAMPP/AppServ).

## Struktur Database
Sistem menggunakan database `tugasakhir` dengan tabel-tabel utama sebagai berikut:
- `admin`: Data autentikasi administrator.
- `mahasiswa` & `dosen`: Data master civitas akademika.
- `peserta` & `ujian`: Manajemen siklus skripsi.
- `beasiswa_penerima`, `beasiswa_sumber`, `beasiswa_periode`: Manajemen bantuan dana pendidikan.

## Instalasi
1. Impor file `tugasakhir (4).sql` ke MySQL Anda.
2. Sesuaikan konfigurasi database pada `admin/includes/config.php`.
3. Pastikan direktori `admin/dokumen/` tersedia dan memiliki izin akses tulis (write permission) untuk unggahan file.

## Kredensial Default (Development)
- Email: darrenevann1705@gmail.com
- Password: 123
