-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2025 at 06:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_ID` char(2) NOT NULL,
  `admin_NAME` varchar(60) NOT NULL,
  `admin_NPM` int(10) NOT NULL,
  `admin_USER` char(30) NOT NULL,
  `admin_PASS` char(255) NOT NULL,
  `admin_FOTO` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_ID`, `admin_NAME`, `admin_NPM`, `admin_USER`, `admin_PASS`, `admin_FOTO`) VALUES
('2', 'Darren Evan Nathanael', 825240062, 'darrenevann1705@gmail.com', '123', 'fotoDarren.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa_penerima`
--

CREATE TABLE `beasiswa_penerima` (
  `id_beasiswa` int(11) NOT NULL,
  `mhs_NPM` char(20) DEFAULT NULL,
  `sumber_id` int(11) DEFAULT NULL,
  `periode_id` int(11) DEFAULT NULL,
  `nominal` decimal(15,2) DEFAULT NULL,
  `berkas_syarat` varchar(255) DEFAULT NULL,
  `status_pengajuan` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beasiswa_penerima`
--

INSERT INTO `beasiswa_penerima` (`id_beasiswa`, `mhs_NPM`, `sumber_id`, `periode_id`, `nominal`, `berkas_syarat`, `status_pengajuan`) VALUES
(3, '205240055', 2, 1, 1000000.00, 'GJ2526 - WEB RESPONSIVE FRONT END (1).pdf', 'Diajukan'),
(4, '825240062', 5, 1, 5000000.00, 'GJ2526 - WEB RESPONSIVE FRONT END (1).pdf', 'Diajukan');

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa_periode`
--

CREATE TABLE `beasiswa_periode` (
  `periode_id` int(11) NOT NULL,
  `nama_periode` varchar(50) NOT NULL,
  `status_aktif` enum('Aktif','Tutup') DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beasiswa_periode`
--

INSERT INTO `beasiswa_periode` (`periode_id`, `nama_periode`, `status_aktif`) VALUES
(1, 'Semester Ganjil 2024/2025', 'Aktif'),
(2, 'Semester Genap 2024/2025', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa_sumber`
--

CREATE TABLE `beasiswa_sumber` (
  `sumber_id` int(11) NOT NULL,
  `nama_sumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beasiswa_sumber`
--

INSERT INTO `beasiswa_sumber` (`sumber_id`, `nama_sumber`) VALUES
(1, 'Djarum Beasiswa Plus'),
(2, 'Beasiswa Bank Indonesia'),
(3, 'KIP Kuliah (Kemdikbud)'),
(4, 'Yayasan Alumni UNTAR'),
(5, 'BS FOUNDATION');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `beritaID` int(11) NOT NULL,
  `kategoriID` int(11) DEFAULT NULL,
  `beritaJudul` varchar(200) DEFAULT NULL,
  `beritaIsi` text DEFAULT NULL,
  `beritaTgl` date DEFAULT NULL,
  `beritaFoto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`beritaID`, `kategoriID`, `beritaJudul`, `beritaIsi`, `beritaTgl`, `beritaFoto`) VALUES
(2, 1, 'Beasiswa BS Foundation', 'Beasiswa bpp dan sks full selama 1 semester', '2025-11-28', 'LOGO.png'),
(4, 2, 'Ulang Tahun UNTAR ', 'Ulang tahun UNTAR yang ke 69 ', '2025-12-07', 'ultahuntar.jpg'),
(5, 3, 'Kenaikan Akreditasi UNTAR', 'Kenaikan Akreditasi UNTAR ke Unggul', '2025-12-07', 'Akreditasi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan`
--

CREATE TABLE `bimbingan` (
  `id_bimbingan` int(11) NOT NULL,
  `dosen_NIDN` char(20) DEFAULT NULL,
  `mhs_NPM` char(20) DEFAULT NULL,
  `tgl_bimbingan` date DEFAULT NULL,
  `isi_bimbingan` text DEFAULT NULL,
  `file_bimbingan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bimbingan`
--

INSERT INTO `bimbingan` (`id_bimbingan`, `dosen_NIDN`, `mhs_NPM`, `tgl_bimbingan`, `isi_bimbingan`, `file_bimbingan`) VALUES
(3, 'D0002', '205240055', '2025-12-06', 'Bimbingan Judul', 'PROJECT UAS WEBDEV - MEMBUAT HALAMAN WEB - SISI FR_251120_145147-1 (1).pdf'),
(4, 'D0001', '825240062', '2025-12-07', 'Bimbingan Latar Belakang', 'GJ2526 - WEB RESPONSIVE FRONT END (1).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `dosen_NIDN` char(10) NOT NULL,
  `dosen_NIK` char(8) NOT NULL,
  `dosen_Nama` char(30) NOT NULL,
  `dosen_Ket` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`dosen_NIDN`, `dosen_NIK`, `dosen_Nama`, `dosen_Ket`) VALUES
('D0001', '31730001', 'Lewiandy', 'Dosen Hukum '),
('D0002', '31730002', 'Susanti', 'Dosen Design Mobile App'),
('D0003', '31730003', 'Supratman', 'Dosen Game Dev');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `judul_foto` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `judul_foto`, `deskripsi`, `tanggal`, `nama_file`) VALUES
(2, 'Angkatan 2001 Universitas Tarumanagara', 'Angkatan pertama Universitas Tarumanagara', '2025-12-07', 'angkatan1.jpg'),
(3, 'Angkatan 2002 Universitas Tarumanagara', 'Angkatan Kedua Universitas Tarumanagara', '2025-12-07', 'angkatan2.jpg'),
(4, 'Angkatan 2003 Universitas Tarumanagara', 'Angkatan Ketiga Mahasiswa Universitas Tarumanagara', '2025-12-07', 'angkatan3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `kategoriID` int(11) NOT NULL,
  `kategoriNama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_berita`
--

INSERT INTO `kategori_berita` (`kategoriID`, `kategoriNama`) VALUES
(1, 'Pengumuman Akademik'),
(2, 'Kegiatan Mahasiswa'),
(3, 'Prestasi Kampus'),
(4, 'Info Beasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mhs_NPM` int(9) NOT NULL,
  `mhs_Nama` char(40) NOT NULL,
  `mhs_Alamat` varchar(100) NOT NULL,
  `mhs_DOB` date NOT NULL,
  `mhs_Ket` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`mhs_NPM`, `mhs_Nama`, `mhs_Alamat`, `mhs_DOB`, `mhs_Ket`) VALUES
(205240055, 'Jesslein Felisha', 'Jl Taman S. Parman No. B47', '2025-06-27', 'Hukum Internasional'),
(825240062, 'Darren Evan Nathanael', 'Tj Duren', '2006-05-17', 'Mahasiswa SI B');

-- --------------------------------------------------------

--
-- Table structure for table `penasihat`
--

CREATE TABLE `penasihat` (
  `mhs_NPM` int(9) NOT NULL,
  `dosen_NIDN` char(10) NOT NULL,
  `penasihat_FILE` char(60) NOT NULL,
  `penasihat_KET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penasihat`
--

INSERT INTO `penasihat` (`mhs_NPM`, `dosen_NIDN`, `penasihat_FILE`, `penasihat_KET`) VALUES
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(205240055, 'D0001', 'EDUVANCE clear.webp', 'Ganti logo nya'),
(0, '', '', ''),
(0, '', '', ''),
(825240062, 'D0002', 'globalisasi.jpg', 'Kerjakan');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `mhs_NPM` char(9) NOT NULL,
  `peserta_SEMT` char(6) NOT NULL,
  `peserta_THAKD` char(9) NOT NULL,
  `peserta_TGLDAFTAR` date NOT NULL,
  `peserta_JUDUL` char(80) NOT NULL,
  `peserta_DOKUMEN` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`mhs_NPM`, `peserta_SEMT`, `peserta_THAKD`, `peserta_TGLDAFTAR`, `peserta_JUDUL`, `peserta_DOKUMEN`) VALUES
('205240055', 'Ganjil', '2024-2025', '2025-11-28', 'Pengaruh Kasus Pembunuhan Terhadap Keluarga Pelaku', 'Screenshot 2025-12-06 210358.png'),
('825240062', 'Ganjil', '2024-2025', '2025-11-28', 'Pengaruh Globalisasi Pada Pedalaman Desa Di Indonesia', 'globalisasi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL,
  `mhs_NPM` char(20) DEFAULT NULL,
  `tgl_ujian` date DEFAULT NULL,
  `jam_ujian` time DEFAULT NULL,
  `foto_ujian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `mhs_NPM`, `tgl_ujian`, `jam_ujian`, `foto_ujian`) VALUES
(5, '205240055', '2025-12-06', '21:20:00', 'ujianjesslein.jpg'),
(6, '825240062', '2025-12-07', '23:59:00', 'ujianDarren.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beasiswa_penerima`
--
ALTER TABLE `beasiswa_penerima`
  ADD PRIMARY KEY (`id_beasiswa`);

--
-- Indexes for table `beasiswa_periode`
--
ALTER TABLE `beasiswa_periode`
  ADD PRIMARY KEY (`periode_id`);

--
-- Indexes for table `beasiswa_sumber`
--
ALTER TABLE `beasiswa_sumber`
  ADD PRIMARY KEY (`sumber_id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`beritaID`),
  ADD KEY `kategoriID` (`kategoriID`);

--
-- Indexes for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD PRIMARY KEY (`id_bimbingan`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`dosen_NIDN`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`kategoriID`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mhs_NPM`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beasiswa_penerima`
--
ALTER TABLE `beasiswa_penerima`
  MODIFY `id_beasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `beasiswa_periode`
--
ALTER TABLE `beasiswa_periode`
  MODIFY `periode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beasiswa_sumber`
--
ALTER TABLE `beasiswa_sumber`
  MODIFY `sumber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `beritaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bimbingan`
--
ALTER TABLE `bimbingan`
  MODIFY `id_bimbingan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `kategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`kategoriID`) REFERENCES `kategori_berita` (`kategoriID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
