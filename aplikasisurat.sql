-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Okt 2021 pada 16.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasisurat2021`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(15) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(500) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2021-08-24 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `nama`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'admin', '$2y$10$JdOHpHTj0WOr3vm9YA0.RewxnU7SlMJTR1Cm6x3w7uMwWRErUNjo6', 'Muhammad Firandhanu Ar Rasyid', '1831710133', 'http://localhost/appsuratmasukkeluar/uploads/files/1621929810.png', NULL, NULL, '2021-08-26 11:02:24', NULL, 1),
(2, 'user', '$2y$10$pC2c7jyWUK3HwQo4tCeFD..jB7EK4T5jRkMb7P1yMs2Dpnzd.XWbi', 'User', '12452@gamaial.com', 'http://localhost/appsuratmasukkeluar/uploads/files/1622020736.png', NULL, NULL, '2021-08-24 00:00:00', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(1, 1, 'pengguna', 'list'),
(2, 1, 'pengguna', 'view'),
(3, 1, 'pengguna', 'add'),
(4, 1, 'pengguna', 'edit'),
(5, 1, 'pengguna', 'editfield'),
(6, 1, 'pengguna', 'delete'),
(7, 1, 'pengguna', 'import_data'),
(8, 1, 'surat_keluar', 'list'),
(9, 1, 'surat_keluar', 'view'),
(10, 1, 'surat_keluar', 'add'),
(11, 1, 'surat_keluar', 'edit'),
(12, 1, 'surat_keluar', 'editfield'),
(13, 1, 'surat_keluar', 'delete'),
(14, 1, 'surat_keluar', 'import_data'),
(15, 1, 'surat_masuk', 'list'),
(16, 1, 'surat_masuk', 'view'),
(17, 1, 'surat_masuk', 'add'),
(18, 1, 'surat_masuk', 'edit'),
(19, 1, 'surat_masuk', 'editfield'),
(20, 1, 'surat_masuk', 'delete'),
(21, 1, 'surat_masuk', 'import_data'),
(22, 1, 'pengguna', 'accountedit'),
(23, 1, 'pengguna', 'accountview'),
(24, 1, 'role_permissions', 'list'),
(25, 1, 'role_permissions', 'view'),
(26, 1, 'role_permissions', 'add'),
(27, 1, 'role_permissions', 'edit'),
(28, 1, 'role_permissions', 'editfield'),
(29, 1, 'role_permissions', 'delete'),
(30, 1, 'roles', 'list'),
(31, 1, 'roles', 'view'),
(32, 1, 'roles', 'add'),
(33, 1, 'roles', 'edit'),
(34, 1, 'roles', 'editfield'),
(35, 1, 'roles', 'delete'),
(36, 2, 'surat_keluar', 'list'),
(37, 2, 'surat_keluar', 'view'),
(38, 2, 'surat_keluar', 'add'),
(39, 2, 'surat_keluar', 'edit'),
(40, 2, 'surat_keluar', 'editfield'),
(41, 2, 'surat_masuk', 'list'),
(42, 2, 'surat_masuk', 'view'),
(43, 2, 'surat_masuk', 'add'),
(44, 2, 'surat_masuk', 'edit'),
(45, 2, 'surat_masuk', 'editfield'),
(46, 2, 'pengguna', 'accountedit'),
(47, 2, 'pengguna', 'accountview');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `No_Agenda` int(15) NOT NULL,
  `Nomor_Surat` varchar(255) NOT NULL,
  `Tanggal_surat` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `Asal_surat` varchar(255) NOT NULL,
  `perihal` varchar(500) NOT NULL,
  `file_surat` varchar(500) NOT NULL,
  `penerima` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`No_Agenda`, `Nomor_Surat`, `Tanggal_surat`, `tanggal_terima`, `Asal_surat`, `perihal`, `file_surat`, `penerima`) VALUES
(1, '2021/PD3/TU/001', '2021-05-25', '2021-05-25', 'Malang', 'Pengumuman Wisuda ke 53 Jurusan Teknologi Informasi ', 'http://localhost:8080/AplikasiArsipSurat/uploads/files/ktbc6nu1s7o9v53.pdf', 'admin'),
(5, '2021/PD3/TU/002', '2021-10-26', '2021-10-26', 'Surabaya', 'Pengumuman Hasil Seleksi Program Magang Internship', 'http://localhost:8080/AplikasiArsipSurat/uploads/files/hxld89i503jeng2.pdf', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `No_Agenda` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
