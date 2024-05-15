-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2024 pada 16.06
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_guru`
--

CREATE TABLE `data_guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(20) NOT NULL,
  `nip` varchar(12) NOT NULL,
  `kelamin` varchar(15) NOT NULL,
  `alamat_guru` text NOT NULL,
  `telpon_guru` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gelar` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_guru`
--

INSERT INTO `data_guru` (`id_guru`, `nama_guru`, `nip`, `kelamin`, `alamat_guru`, `telpon_guru`, `username`, `password`, `gelar`, `tempat_lahir`, `tanggal_lahir`, `agama`, `email`, `photo`) VALUES
(1, 'Sigit Ari WIbowo', '199401032022', 'laki-laki', 'Surabaya', '082456787890', 'Sigit Ari Wibowo', '123456', 'M.Pd', 'Surabaya', '1994-01-03', 'islam', '-', 'Sigit Ari Wibowo.jpg'),
(2, 'Dewi Nur Oktaviaa', '199210052022', 'laki-laki', 'Surabaya', '089561323337', 'dewiokta', 'dewiokta', 'S.Pd', 'Surabaya', '1992-10-10', 'islam', 'dewiokta@gmail.com', 'IMG-20240308-WA0024.jpg'),
(3, 'M. Ilham W.', '199604142022', 'laki-laki', 'Surabaya', '-', 'M Ilham ', '123456', 'S.Pd', 'Surabaya', '1996-04-14', 'islam', '-', 'M. Ilham Wardhana.jpg'),
(4, 'Miga Wahyuningrum', '199508132022', 'perempuan', 'Surabaya', '-', 'Miga Wahyuningrum', '1223456', 'S.Pd', 'Surabaya', '1995-08-13', 'islam', '-', 'Miga Wahyuningrum.jpg'),
(5, 'Ajeng Arimbi', '199801102022', 'perempuan', 'Surabaya', '-', 'Ajeng Arimbi', '123456', 'S.Pd', 'Surabaya', '1998-01-10', 'islam', '-', 'Ajeng Arimbi.jpg'),
(6, 'Vika Wulandari', '199512212022', 'laki-laki', 'Surabaya', '-', 'Vika Wulandari', '123456', 'S.Pd', 'Surabaya', '1995-12-21', 'islam', '-', 'Vika Wulandari.jpg'),
(7, 'Indria Setyana', '198802232022', 'perempuan', 'Surabaya', '-', 'Indria Setyana', '123456', 'S.Pd', 'Surabaya', '1988-02-23', 'islam', '-', 'Indria Setyana.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_orangtua`
--

CREATE TABLE `data_orangtua` (
  `id_orangtua` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `ayah` varchar(50) NOT NULL,
  `tl` varchar(60) NOT NULL,
  `tgl_a` date NOT NULL,
  `agama` varchar(30) NOT NULL,
  `pddk_a` varchar(50) NOT NULL,
  `status_keluarga` varchar(30) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `penghasilan_a` int(11) NOT NULL,
  `alamat_a` text NOT NULL,
  `telpon_a` varchar(12) NOT NULL,
  `ibu` varchar(60) NOT NULL,
  `tl_i` varchar(60) NOT NULL,
  `tgl_i` date NOT NULL,
  `agma_i` varchar(15) NOT NULL,
  `pddk_i` varchar(30) NOT NULL,
  `pekerjaan_i` varchar(60) NOT NULL,
  `penghasilan_i` varchar(30) NOT NULL,
  `alamat_i` text NOT NULL,
  `telpon_i` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_orangtua`
--

INSERT INTO `data_orangtua` (`id_orangtua`, `nis`, `ayah`, `tl`, `tgl_a`, `agama`, `pddk_a`, `status_keluarga`, `pekerjaan`, `penghasilan_a`, `alamat_a`, `telpon_a`, `ibu`, `tl_i`, `tgl_i`, `agma_i`, `pddk_i`, `pekerjaan_i`, `penghasilan_i`, `alamat_i`, `telpon_i`) VALUES
(1, 65514233, 'Bambang', 'Cilacap', '2024-03-26', 'islam', 'SMA', 'Ayah', '-', 0, '-', '-', 'Sumarni', 'Blora', '1969-02-07', 'islam', 'SD', 'Jualan', '0', 'Kejawan Gebang', 2147483647),
(2, 77278802, 'Florent Putri', 'Surabaya', '1985-09-10', 'islam', 'SMA', 'Ayah', 'Swasta', 0, 'Jl. Kalijudan 7b, 089513583311, 60114', '-', 'Wendy Kusuma Ningtyas', 'Surabaya', '1989-01-21', 'islam', 'SMA', 'Swasta', '0', 'Jl. Kalijudan 7b, 089513583311, 60114', 0),
(3, 71910686, 'Mudjiatno', 'Surabaya ', '1970-10-11', 'islam', 'SMA', 'Ayah', '-', 0, '-', '0', 'Sulis Setiowati ', 'Surabaya', '1974-12-08', 'islam', 'SMA', 'Ibu Rumah Tangga', '0', 'Ploso VIII Tengah no 2 ', 2147483647),
(4, 72556602, 'Alm mudher sekarto', 'Surabaya ', '1970-06-02', 'islam', 'SMA', 'Ayah', 'Swasta', 2000000, 'Dukuh bulak banteng sek gg5a/19c', '087754916116', 'Suhartatik', 'Surabaya', '1972-06-30', 'islam', 'SMP', 'Ibu Rumah Tangga', '0', 'Dukuh bulak banteng sek gg5a/19c', 2147483647),
(5, 8303, 'Winarko', 'Surabaya ', '1976-03-30', 'islam', 'SMA', 'Ayah', 'Swasta', 2000000, 'Jl. Kedung Mangu no 44', '082333811471', 'Mariyati ', 'Surabaya', '1975-05-25', 'islam', 'SMA', 'Ibu Rumah Tangga', '0', 'Jl. Wonosari wetang gang 3', 2147483647),
(6, 73392407, 'Kosiin', 'Surabaya', '1975-06-18', 'islam', 'SMA', 'Ayah', 'Swasta', 2000000, 'Jl. Klampis semalang 3 no 28', '082330875368', 'Theresia Venty Sukmastuti', 'Cilacap', '1974-01-16', 'islam', 'S1', 'Ibu Rumah Tangga', '0', 'Jl. Klampis Semalang 3 no 28', 2147483647),
(7, 79310799, 'Mulyadi', 'Gresik', '1965-06-04', 'islam', 'SMP', 'Ayah', 'Swasta', 1900000, 'Jl. Wonokusumo Jaya 1/110', '-', 'Supiati', 'Surabaya', '1972-08-28', 'islam', 'SMA', 'Pedagang', '1300000', 'Jl. Wonokusumo Jaya 1/110', 0),
(8, 7871, 'Alm Sukartiko Bachtiar ', 'Surabaya', '1974-07-21', 'islam', 'SMA', 'Ayah', '-', 0, '-', '-', 'Chotilah', 'Surabaya', '1972-12-22', 'islam', 'SMA', 'Ibu Rumah Tangga', '1500000', 'Jl. Jangkungan 1b/19D', 2147483647),
(9, 75627004, 'Jumadi', 'Jombang', '1975-07-07', 'islam', 'SMA', 'Ayah', 'Driver Gojek', 2000000, 'Kupang Krajan 8/10', '085808332942', 'Retno Sariningsih', 'Surabaya', '1976-04-14', 'islam', 'SMA', 'Ibu Rumah Tangga', '0', 'Kupang krajan gg 8/10', 2147483647),
(10, 79100068, 'Yayan Karianto', 'Majalengka', '1968-06-25', 'islam', 'SMP', 'Ayah', 'Swasta', 0, 'Jl. Kapas madya 2h no.25', '085972893342', 'ERNIK', 'Surabaya', '1978-03-04', 'islam', 'SMA', 'Ibu Rumah Tangga', '0', 'Jl. Kapas madya 2h no.25', 2147483647),
(11, 77241730, 'Nedi Fadli', 'Bandung', '1975-05-25', 'islam', 'SMA', 'Ayah', 'Swasta', 2000000, 'jl. Medokan sawah no 165', '082131952504', 'Supatmi', 'Banyuwangi', '1971-05-05', 'islam', 'SMP', 'Ibu Rumah Tangga', '0', 'jl. Medokan sawah no 165', 2147483647),
(12, 0, 'Teguh Suharyono ', 'Surabaya ', '1973-07-07', 'islam', 'SMA', 'Ayah', 'Swasta', 3000000, 'Jl. Pacar Kembang 5/40 RT. 9 RW. 7 Kec. Tambaksari Kel. Pacar Kembang 60132', '082141173773', 'Nina Dwi Rahayu', 'Nganjuk', '1974-10-13', 'islam', 'D3', 'Swasta', '3000000', 'Jl. Pacar Kembang 5/40 RT. 9 RW. 7 Kec. Tambaksari Kel. Pacar Kembang 60132', 2147483647),
(13, 2147483647, 'Agus Purnomo', 'Surabaya', '1979-08-08', 'islam', 'SMP', 'Ayah', 'Supir Bus', 4000000, 'Jl. Pogot X no. 56', '081233785573', 'Mariati', 'Karang Pelambek', '1978-12-31', 'islam', 'SD', 'Ibu Rumah Tangga ', '0', 'Jl. Pogot X no. 56', 2147483647),
(14, 1234, 'Damun', 'Ponorogo', '1986-10-09', 'islam', 'SMA', 'Ayah', 'Gojek', 1000000, 'Wonorejo', '085852600676', 'Nunuk', 'Nganjuk', '1987-02-19', 'islam', 'SMA', 'Ibu Rumah Tangga', '0', 'Wonorejo', 2147483647),
(15, 66274072, 'Saidin', 'Surabaya', '1970-08-18', 'islam', 'SMA', 'Ayah', 'Tukang', 1500000, 'Kejawan putih tambak ', '087754553656', 'Murti', 'Jember', '1978-09-06', 'islam', 'SMP', 'Tukang', '1500000', 'Kejawan putih tambak', 2147483647),
(16, 76873766, 'Rahmat Hidaya', 'Situbondo', '1973-06-05', 'islam', 'SMP', 'Ayah', 'Karyawan', 0, 'Rungkut lor GG 1 no 2,083854886515,60293', '085707830935', 'Poniti', 'Jombang', '1975-09-24', 'islam', 'SMA', 'Ibu Rumah Tangga', '0', 'Rungkut lor GG 1 no 2 ', 2147483647),
(17, 71286281, 'M.Rofi', 'Surabaya', '1986-03-12', 'islam', 'SD', 'Ayah', '-', 2000000, '-', '-', 'Elok Zunaidah', 'Surabaya', '1985-07-07', 'islam', 'SD', 'Pabrik', '2000000', 'Jl.kedung asem gg 4 no 77c', 2147483647),
(18, 2147483647, 'Ketut Arianta RAT', 'Bali', '1974-02-25', 'hindu', 'SD', 'Ayah', 'Pengacara', 1000000, 'jln Semolowaru tengah 2 no 16', '081230285699', 'Iis Suryani ', 'Surabaya', '1976-02-10', 'hindu', 'SD', 'Wiraswasta', '1000000', 'Jln Semolowaru tengah 2 no 16', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_saudara`
--

CREATE TABLE `data_saudara` (
  `id_saudara` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `umur` varchar(10) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `pddk` varchar(40) NOT NULL,
  `krj` varchar(50) NOT NULL,
  `agm` varchar(15) NOT NULL,
  `nm1` varchar(50) NOT NULL,
  `umur1` varchar(10) NOT NULL,
  `jk1` varchar(15) NOT NULL,
  `pddk1` varchar(40) NOT NULL,
  `krj1` varchar(50) NOT NULL,
  `agm1` varchar(15) NOT NULL,
  `nm2` varchar(50) NOT NULL,
  `umur2` varchar(10) NOT NULL,
  `jk2` varchar(15) NOT NULL,
  `pddk2` varchar(40) NOT NULL,
  `krj2` varchar(50) NOT NULL,
  `agm2` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_saudara`
--

INSERT INTO `data_saudara` (`id_saudara`, `nis`, `nm`, `umur`, `jk`, `pddk`, `krj`, `agm`, `nm1`, `umur1`, `jk1`, `pddk1`, `krj1`, `agm1`, `nm2`, `umur2`, `jk2`, `pddk2`, `krj2`, `agm2`) VALUES
(1, 65514233, 'Putra', '17', 'Laki-Laki', 'SMK', 'Pelajar', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 77278802, 'Cik Puan Cataleya', '3', 'Perempuan', '-', '-', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 71910686, 'Faadzan Oldy Hidayat', '25', 'Laki-Laki', 'SMA', 'Swasta', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 72556602, 'Diana lailia sripuji astutik', '21', 'Perempuan', 'SMK', 'Buruh Pabrik', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 8303, '-', '-', '-', '-', '-', '-', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 73392407, 'Mochamad Oziel Sarfaras', '12', 'Laki-Laki', 'SD', 'Pelajar', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 79310799, 'Ayu Dwi Yulianti', '23', 'Perempuan', 'Menempu S1', 'Mahasiswa', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 7871, 'Kayla Liontin Bachtiar', '12', 'Perempuan', 'SD', 'Pelajar', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 75627004, 'Ayunda Amorieta Ratno', '9', 'Perempuan', 'SD', 'Pelajar', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 79100068, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 77241730, 'Erik Ilhamsyah', '21', 'Laki-Laki', 'Menempu S1', 'Mahasiswa', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 74362905, 'Saskia Firdha Aurelia Putri', '23', 'Perempuan', 'S1', 'Swasta', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 2147483647, 'Dwi Suci Hayatni', '23', 'Perempuan', 'SMK', 'Jaga pos parkir mall', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 1234, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 66274072, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 76873766, 'Taufiq ', '13', 'Laki-Laki', 'SMP', '-', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 71286281, 'M Azzam Romadhoni', '6', 'Laki-Laki', 'TK', 'Pelajar', 'Islam', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 2147483647, 'Kadek Denna Putri Aris ArnawaRat ', '21', 'Perempuan', 'SMA', 'Tidak Kerja', 'Hindu', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` int(20) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `namap` varchar(50) NOT NULL,
  `kelamin` varchar(15) NOT NULL,
  `tpl` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `agama` varchar(100) NOT NULL,
  `warga` varchar(100) NOT NULL,
  `suku` varchar(100) NOT NULL,
  `t_skl` varchar(100) NOT NULL,
  `pindahan` varchar(100) NOT NULL,
  `anakke` varchar(100) NOT NULL,
  `bhs` varchar(100) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `telpon_siswa` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tinggal_siswa` varchar(100) NOT NULL,
  `jarak` varchar(100) NOT NULL,
  `berangkat` varchar(100) NOT NULL,
  `kendaraan` varchar(100) NOT NULL,
  `kondisilmp` varchar(100) NOT NULL,
  `kondisirmh` varchar(100) NOT NULL,
  `ruangtidur` varchar(100) NOT NULL,
  `lingkungan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`id_siswa`, `nis`, `nama_siswa`, `namap`, `kelamin`, `tpl`, `tgl`, `agama`, `warga`, `suku`, `t_skl`, `pindahan`, `anakke`, `bhs`, `alamat_siswa`, `telpon_siswa`, `email`, `username`, `password`, `tinggal_siswa`, `jarak`, `berangkat`, `kendaraan`, `kondisilmp`, `kondisirmh`, `ruangtidur`, `lingkungan`) VALUES
(1, 65514233, 'Putra Agung Dewantara', 'Putra', 'Laki-laki', 'Surabaya', '2006-05-08', 'islam', 'Indonesia', 'Jawa', '2022-06-07', 'SMP', '2', 'Jawa', 'Kejawan Gebang,089668022779,60111', '089668022779', 'putraagungd@gmail.com', 'Putra Agung Dewantara', '123456', 'Orang Tua', '700 M', 'Sepeda Motor', 'Sepeda Motor', 'Baik', 'Baik', 'Baik', 'Baik'),
(2, 77278802, 'Florent Putri A', 'Florent', 'Perempuan', 'Surabaya', '2007-10-07', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMP', '1', 'Indonesia', 'Jl. Kalijudan 7b, 089513583311, 60114', '089513583311', 'florentputri7@gmail.com', 'Florent Putri', '123456', 'Orang Tua', '10 KM', 'Diantar', 'Sepeda Motor', 'Baik', 'Sangat Baik', 'Baik', 'Baik'),
(3, 71910686, 'Tyrani Florayn Sumasa ', 'Flora', 'Perempuan', 'Makassar', '2007-09-07', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMPN 9 Surabaya', '4', 'Jawa', 'Ploso VIII Tengah no 2, 085755917945, 60133', '085755917945', 'tyraniflora7@gmail.com', 'Tyrani Florayn Sumasa', '123456', 'Kakak', '10 KM', 'Diantar', 'Sepeda Motor', 'Sangat Baik', 'Baik', 'Baik', 'Baik'),
(4, 72556602, 'Siti Aisya Asjaroh ', 'Aisya', 'Perempuan', 'Surabaya', '2007-08-02', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMPN 31 Surabaya', '2', 'Indonesia', 'Dukuh bulak banteng sek gg5a/19, 087754916116', '087754916116', 'ssya03985@gmail.com', 'Siti Aisya Asjaroh', '123456', 'Orang Tua', '13 KM', 'Sepeda Motor', 'Sepeda Motor', 'Cukup Baik', 'Sangat Baik', 'Baik', 'Baik'),
(5, 8303, 'Zakya Aprilianti', 'Zakya', 'Perempuan', 'Surabaya', '2007-04-30', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMPN 38 Surabaya', '1', 'Indonesia', 'Jl. Endrosono gang 8 no 8b, 088226012978, ', '088226012978', 'inzar3002@gmail.com', 'Zakya Aprilianti', '123456', 'Orang Tua', '11 KM', 'Sepeda Motor', 'Sepeda Motor', 'Sangat Baik', 'Baik', 'Sangat Baik', 'Baik'),
(6, 73392407, 'Dinara Aisyah', 'Nara', 'Perempuan', 'Surabaya', '2007-04-15', 'islam', 'Indonesia', 'Jawa', '2020-07-20', 'SMPN 39 Surabaya', '1', 'Indonesia', 'Jl. Klampis semalang 3 no 28', '085919413127', 'dinaraaisyah8@gmail.com', 'Dinara Aisyah', '123456', 'Orang Tua', '4 KM', 'Diantar', 'Sepeda Motor', 'Baik', 'Baik', 'Cukup', 'Cukup'),
(7, 79310799, 'Maharani Novia Ningrum', 'Rani', 'Perempuan', 'Surabaya', '2007-11-24', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMP Ghufron Faqih ', '3', 'Jawa', 'Wonokusumo Jaya 1/110, 088989180667, 60153', '088989180667', 'maharaninovianingrum@gmail.com', 'Maharani Novia Ningrum', '123456', 'Orang Tua', '14 KM', 'Sepeda Motor', 'Sepeda Motor', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik'),
(8, 7871, 'Nayla Cincin Bachtiar', 'Nayla', 'Perempuan', 'Surabaya', '2007-12-04', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMP Negeri 39 Surabaya', '1', 'Indonesia', 'Jl. Jangkungan 1b/19d', '089580210759', 'naylabachtiar67@gmail.com', 'Nayla Cincin Bachtiar', '123456', 'Orang Tua', '10 KM', 'Sepeda Motor', 'Sepeda Motor', 'Baik', 'Baik', 'Cukup', 'Cukup'),
(9, 75627004, 'Jasqueen Reishya Ratno', 'Jasqueen', 'Perempuan', 'Surabaya', '2007-12-22', 'islam', 'Indonesia', 'Jawa', '2007-07-20', 'SMP KARTIKA IV-1 ', '1', 'Indonesia', 'Kupang krajan 8/10, 087805943093,60253', '087805943093', 'queenreysha22@gmail.com', 'Jasqueen Reishya Ratno', '123456', 'Orang Tua', '10 KM', 'Diantar', 'Sepeda Motor', 'Sangat Baik', 'Kurang Baik', 'Kurang Baik', 'Kurang Baik'),
(10, 79100068, 'Reva Mariska Putri ', 'Reva', 'Laki-laki', 'Surabaya', '2007-07-14', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMPN 37 Surabaya', '1', 'Indonesia', 'Jl. Kapas madya 2h/25 , 082176124536 , 60137', '082176124536', 'revamariska35@gmail.com', 'Reva Mariska Putri', '123456', 'Orang Tua', '11 KM', 'Sepeda Motor', 'Sepeda Motor', 'Baik', 'Baik', 'Baik', 'Baik'),
(11, 77241730, 'Septia Miefa Dwi Ramadhani', 'Septia', 'Perempuan', 'Banyuwangi', '2007-09-12', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMP', '2', 'Jawa', 'jl. Medokan sawah no 165,089523538724,60295', '089523538724', 'septiar973@gmail.com', 'Septia Miefa Dwi Ramadhani', '123456', 'Orang Tua', '8 KM', 'Sepeda Motor', 'Sepeda Motor', 'Baik', 'Baik', 'Baik', 'Baik'),
(12, 74362905, 'Aliya Nafisah Aulia Husna', 'Aliya', 'Perempuan', 'Surabaya', '2007-04-20', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMP NEGERI 45 SURABAYA', '2', 'Jawa', 'Jl. Pacar Kembang 5/40  RT. 9 RW. 7 Kec. Tambaksari Kel. Pacar Kembang 60132', '08999070353', 'aliya.smpn45sby@gmail.com', 'Aliya Nafisah Aulia Husna', '123456', 'Orang Tua', '5 KM', 'Diantar', 'Sepeda Motor', 'Baik', 'Baik', 'Baik', 'Baik'),
(13, 2147483647, 'Vinda Amalia Yulianti', 'Vinda', 'Perempuan', 'Surabaya', '2007-07-11', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMPN 15 Surabaya', '2', 'Jawa', 'Jl. Pogot X no. 56, 085950095271, 60129', '085950095271', 'vindaamalia1107@gmail.com', 'Vinda Amalia Yulianti', '123456', 'Orang Tua', '11 KM', 'Sepeda Motor', 'Sepeda Motor', 'Baik', 'Cukup', 'Cukup', 'Baik'),
(14, 1234, 'Teguh Wiyono', 'Teguh', 'Laki-laki', 'Nganjuk', '2007-04-02', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMPN 30 Surabaya', '3', 'Indonesia', 'Wonorejo timur blok C gg santay', '085852600676', 'tteguhcogan@gmail.com', 'Teguh Wiyono', '123456', 'Orang Tua', '20 KM', 'Sepeda Motor', 'Sepeda Motor', 'Baik', 'Baik', 'Baik', 'Baik'),
(15, 66274072, 'Novi Roi Hatul Jannah ', 'Novi', 'Perempuan', 'Surabaya', '2007-07-07', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMP Negeri 30 Surabaya', '2', 'Indonesia', 'Kejawan putih tambak 9/3b, +62 878-6389-6058, 60112', '087863896058', 'hatuljannahnoviroi@gmail.com', 'Novi Roi Hatul Jannah', '123456', 'Orang Tua', '1 KM', 'Sepeda Motor', 'Sepeda Motor', 'Baik', 'Baik', 'Baik', 'Baik'),
(16, 76873766, 'Khofifah Dwi Yulinda ', 'Ifa', 'Perempuan', 'Jombang', '2007-07-26', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMP Al Wachid Surabaya', '2', 'Indonesia', 'Rungkut lor GG 1 no 2,083854886515,60293', '083854886515', 'rajasouvenirnusantara@gmail.com', 'Khofifah Dwi Yulinda', '123456', 'Orang Tua', '7 KM', '', 'Sepeda Motor', 'Baik', 'Baik', 'Baik', 'Baik'),
(17, 71286281, 'Alifah Rachmah Irsyadyah ', 'Alifah', 'Perempuan', 'Surabaya', '2007-01-26', 'islam', 'Indonesia', 'Jawa', '2023-07-20', 'SMP 23 surabaya', '1', 'Jawa', 'Jl.kedung asem gg 4 no 77c,083129350461, 67236', '083129350461', 'alifahri1771@gmail.com', 'Alifah Rachmah Irsyadyah', '123456', 'Orang Tua', '7 KM', 'Sepeda Motor', 'Sepeda Motor', 'Baik', 'Baik', 'Baik', 'Baik'),
(18, 2147483647, 'Komang Ayu Astri Nia Ningsih AR', 'Ayu', 'Laki-laki', 'Surabaya', '2007-07-03', 'hindu', 'Indonesia', 'Jawa', '2023-07-20', 'SMPN 19 Surabaya', '3', 'Indonesia', 'Jln Semolowaru tengah 2 no 16, 60119', '081235585925', 'ayu076109@gmail.com', 'Komang Ayu Astri', '123456', 'Orang Tua', '6 KM', 'Diantar', 'Sepeda Motor', 'Baik', 'Baik', 'Baik', 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setup_jenis_pelanggaran`
--

CREATE TABLE `setup_jenis_pelanggaran` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL,
  `point` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `setup_jenis_pelanggaran`
--

INSERT INTO `setup_jenis_pelanggaran` (`id_jenis`, `nama_jenis`, `point`) VALUES
(1, 'Tidak membawa buku sesuai jadwal', 10),
(2, 'Membuat kegaduhan di kelas atau di sekolah', 10),
(3, 'Membawa atau bermain kartu remi dan domino', 10),
(4, 'Membawa atau bermain kartu remi dan domino', 10),
(5, 'Bermain bola di koridor dan di dalam kelas', 10),
(6, 'Mencontek', 10),
(7, 'Membuang sampah sembarangan', 10),
(8, 'Gaduh saat mengikuti upacara bendera', 10),
(9, 'Melindungi teman yang bersalah', 15),
(10, 'Mencoret-coret atau mengotori dinding, pintu, meja, kursi, pagar dan lingkungan sekolah', 20),
(11, 'Merayakan ulang tahun berlebihan', 20),
(12, 'Berpacaran di sekolah', 25),
(13, 'Tidak mengikuti upacara bendera', 25),
(14, 'Berkata jorok dan kasar, melakukan hal-hal yang menyinggung perasaan orang lan', 25),
(15, 'Menggunakan HP waktu KBM berlangsung tanpa seijin dari guru di kelas', 25),
(16, 'Menyalahgunakan uang SPP atau uang sekolah', 25),
(17, 'Membawa dan menyalakan petasan', 25),
(18, 'Membuat surat izin palsu', 30),
(19, 'Meloncat jendela dan pagar sekolah', 40),
(20, 'Bertindak tidak sopan dan kasar atau melecehkan kepala sekolah, guru dan karyawan sekolah', 50),
(21, 'Berperilaku asusila baik di dalam maupun diluar sekolah', 60),
(22, 'Mengancam/mengintimidasi teman sekelas atau teman sekolah', 75),
(23, 'Merusak dan menyalahgunakan sarana dan prasarana di sekolah', 80),
(24, 'Mengancam / mengintimidasi kepala sekolah, guru dan karyawan sekolah', 100),
(25, 'Membawa / merokok saat masih mengenakan seragam sekolah', 100),
(26, 'Menyalahgunakan media sosial yang merugikan pihak lain', 100),
(27, 'Melakukan tindakan pencemaran lingkungan', 100),
(28, 'Berjudi dalam bentu apapun di sekolah', 150),
(29, 'Membawa senjata tajam, senjara api dan barang berbahaya di sekolah', 150),
(30, 'Terliat secara langsung maupun tidak langsung perkelahian/tawuran di sekolah maupun diluar sekolah', 150),
(31, 'Mengikuti aliran/geng terlarang/komunitas LGBT dan radikalisme', 150),
(32, 'Membawa, melakukan, menedarkan dan membuat video, buku, majalah porno/ sesuatu yang berbau pornografi dan pornoaksi', 200),
(33, 'Mencuri di sekolah/ di luar sekolah ', 200),
(34, 'Membawa, menggunakan  / mengedarkan miras dan narkoba', 250),
(35, 'Memalsukan stempel sekolah, edaran sekolah,/tanda tangan kepala sekolah, guru dan karyawan sekolah', 250),
(36, 'Terlibat kriminal atau mencemarkan nama baik sekolah', 250),
(37, 'Terbukti hamil/menghamili', 250),
(38, 'Terbukti menikah', 250),
(39, 'Terbukti menikah', 250),
(40, 'Tidak mengerjakan tugas', 10),
(41, 'Datang terlambat', 10),
(42, 'Tidak mengikui pelajaran tanpa izin', 10),
(43, 'Meninggalkan kelas tanpa izin', 10),
(44, 'Di kantin saat jam pelajaran', 10),
(45, 'Tidak mengikuti dan melaksanakan piket 7k', 10),
(46, 'Tidur di kelas saat pelajaran di berlangsung', 10),
(47, 'Tidak membawa buku yang berkaitan dengan pelajaran', 10),
(48, 'Pulang sebelum waktunya tanpa izin dari sekolah', 20),
(49, 'Tidak masuk sekolah tanpa keterangan', 20),
(50, 'Tidak mengikuti upacara', 20),
(51, 'Tidak mengikuti kegiatan sekolah', 20),
(52, 'Tidak mengikuti kegiatan ekstrakulikuler', 20),
(53, 'Tidak berseragam sesuai ketentuann', 10),
(54, 'Tidak memasukkan baju ', 10),
(55, 'Melipat lengan baju,baju tidak di kancingkan', 10),
(56, 'Seragam yang di coret coret', 10),
(57, 'Celana/rok bawah tidak di kelim', 10),
(58, 'Celana/rok sobek', 10),
(59, 'Tidak memakai kaos kaki', 10),
(60, 'Memakai kaos kaki tidak sesuai ketentuan(Senin-kamis putih jumat hitam)', 10),
(61, 'Tidak memakai ikat pinggang ', 10),
(62, 'Memakai ikat pinggang tidak sesuaii dengan ketentuan ', 10),
(63, 'Tidak memakai sepatu hitam(selain olahraga)', 10),
(64, 'Rambut panjang terurai(peserta didik)', 10),
(65, 'Berpakaian seragam yang di kecilkan/ketat', 10),
(66, 'Memakai jaket di lingkungan sekolah', 10),
(67, 'Seragam atribut tidak lengkap', 10),
(68, 'Rambut gondrong,di semir maupun di sambung', 10),
(69, 'Bermakeup berlebihan,memakai softlens maupun berkutek', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setup_jenis_sanksi`
--

CREATE TABLE `setup_jenis_sanksi` (
  `id_sanksi` int(11) NOT NULL,
  `nama_sanksi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `setup_jenis_sanksi`
--

INSERT INTO `setup_jenis_sanksi` (`id_sanksi`, `nama_sanksi`) VALUES
(1, 'Pelanggaran Ringan'),
(2, 'Pelanggaran Sedang'),
(3, 'Pelanggaran Berat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setup_kelas`
--

CREATE TABLE `setup_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `setup_kelas`
--

INSERT INTO `setup_kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'Kelas XI RPL 1'),
(2, 'Kelas XI RPL 2'),
(3, 'X LPB 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setup_pembimbing`
--

CREATE TABLE `setup_pembimbing` (
  `id_pemb` int(11) NOT NULL,
  `nama_siswa` varchar(60) NOT NULL,
  `nama_guru` varchar(60) NOT NULL,
  `kelas` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `setup_pembimbing`
--

INSERT INTO `setup_pembimbing` (`id_pemb`, `nama_siswa`, `nama_guru`, `kelas`) VALUES
(1, 'Sigit Ari WIbowo', 'Florent Putri A', 'X LPB 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setup_sosiometri`
--

CREATE TABLE `setup_sosiometri` (
  `id_sosiometri` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `teman1` varchar(500) NOT NULL,
  `teman2` varchar(500) NOT NULL,
  `alasan_teman` varchar(500) NOT NULL,
  `bermain1` varchar(500) NOT NULL,
  `bermain2` varchar(500) NOT NULL,
  `alasan_bermain` varchar(500) NOT NULL,
  `tidaksuka1` varchar(500) NOT NULL,
  `tidaksuka2` varchar(500) NOT NULL,
  `alasan_tidaksuka` varchar(500) NOT NULL,
  `menyenangkan1` varchar(500) NOT NULL,
  `menyenangkan2` varchar(500) NOT NULL,
  `alasan_menyenangkan` varchar(500) NOT NULL,
  `dukungan1` varchar(500) NOT NULL,
  `dukungan2` varchar(500) NOT NULL,
  `alasan_dukungan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `setup_sosiometri`
--

INSERT INTO `setup_sosiometri` (`id_sosiometri`, `nama_siswa`, `teman1`, `teman2`, `alasan_teman`, `bermain1`, `bermain2`, `alasan_bermain`, `tidaksuka1`, `tidaksuka2`, `alasan_tidaksuka`, `menyenangkan1`, `menyenangkan2`, `alasan_menyenangkan`, `dukungan1`, `dukungan2`, `alasan_dukungan`) VALUES
(1, 'Putra Agung Dewantara', 'Nia', 'Nuri', 'Nia, Baik\r\nNuri,Menyenangkan', 'Rumantika', 'Maryam', 'Sama-sama menyenangkan', 'Sindi', 'Sila', 'Sindi, Menyebalkan\r\nSila, terlalu banyak bicara', 'Duro', 'Ana', 'Mereka aktif', 'Sofia', 'Ain', 'mereka sama sama baiik'),
(2, 'Dinara Aisyah', 'Nayla', 'Kayla', 'menyenangkan dan sering membantu', 'Kayla', 'Nayla', 'karena seru', 'Teguh', 'Devin', 'karena berisik', 'Novi', 'April', 'karena bisa saling membantu dan bekerjasama dengan baik', 'Kayla', 'Nayla', 'karena mereka sering membantu'),
(3, 'Jasqueen Reishya Ratno', 'Dinara Aisyah', 'Maharani Novia', 'karena suka membantu saya ketika sulit mengerjakan tugas', 'Alifiah R.I', 'Novi Roi Hatul', 'karena mereka asik', 'Teguh', 'Putra Agung', 'karena mereka usil', 'Khofifah Dwi', 'Aliyah Nafisah', 'saling membantu satu sama lain', 'Reva Mariska', 'Septia Miefa', 'mereka selalu mendukung di situasi apapun'),
(4, 'Siti Aisya Asjaroh', 'Nayla', 'Kayla', 'menyenangkan', 'Kayla', 'Nayla', 'seru dan asik', 'Teguh', 'Haikal', 'berisik', 'Nayla', 'Kayla', 'selalu produktif dan aktif', 'Nayla', 'Kayla', 'selalu menjad support system');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa_pelanggaran`
--

CREATE TABLE `tbl_siswa_pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL,
  `nm_siswa` varchar(50) NOT NULL,
  `nm_pelanggaran` varchar(50) NOT NULL,
  `nm_sanksi` varchar(50) NOT NULL,
  `poin` varchar(50) NOT NULL,
  `tgl_kejadian` date NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_siswa_pelanggaran`
--

INSERT INTO `tbl_siswa_pelanggaran` (`id_pelanggaran`, `nm_siswa`, `nm_pelanggaran`, `nm_sanksi`, `poin`, `tgl_kejadian`, `ket`) VALUES
(1, 'Florent Putri A', 'Membuat kegaduhan di kelas atau di sekolah', 'Pelanggaran Kecil', '10', '2024-04-25', 'Ramai dan sudah diperingatkan'),
(2, 'Florent Putri A', 'Membuang sampah sembarangan', 'Pelanggaran Kecil', '10', '2024-05-15', 'Sembrono');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `photo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `alamat`, `telepon`, `username`, `password`, `photo`) VALUES
(1, 'Admin', 'Jl. Keputih Tegal No.54, Keputih, Kec. Sukolilo, Surabaya, Jawa Timur 60111', '085648816717', 'admin', 'admin', 'ADMIN .png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_izin`
--

CREATE TABLE `tb_izin` (
  `no` int(11) NOT NULL,
  `p_ijin` varchar(80) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `hari` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `untuk` varchar(100) NOT NULL,
  `alasan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_izin`
--

INSERT INTO `tb_izin` (`no`, `p_ijin`, `nama`, `kelas`, `hari`, `tanggal`, `untuk`, `alasan`) VALUES
(1, 'Sigit Ari WIbowo ', 'Putra Agung Dewantara', 'XI RPL 2', 'Kamis', '2024-04-25', 'Pulang', 'Sakit'),
(2, 'Dewi Nur Oktaviaa', 'Florent Putri A', 'X LPB 2', 'Kamis', '2024-04-25', 'Terlambat', 'Kesiangan'),
(3, 'Ajeng Arimbi', 'Tyrani Florayn Sumasa', 'X LPB 2', 'Kamis', '2024-04-25', 'Keluar', 'Membuat KTP E');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `no` int(11) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `subjek` text NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pesan`
--

INSERT INTO `tb_pesan` (`no`, `nama`, `email`, `telp`, `subjek`, `pesan`, `tanggal`) VALUES
(1, 'Florent Pu', 'florentputri7@gmail.com', '089513583311', 'Halo', 'Halo saya ingin berkonsultasi mengenai prestasi saya', '2024-04-25'),
(2, 'Tyrani Flo', 'tyraniflora7@gmail.com', '085755917945', 'Halo', 'Halo saya ingin berkonsultasi mengenai kelanjutan saya untuk berkuliah', '2024-04-25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `data_orangtua`
--
ALTER TABLE `data_orangtua`
  ADD PRIMARY KEY (`id_orangtua`);

--
-- Indeks untuk tabel `data_saudara`
--
ALTER TABLE `data_saudara`
  ADD PRIMARY KEY (`id_saudara`);

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `setup_jenis_pelanggaran`
--
ALTER TABLE `setup_jenis_pelanggaran`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `setup_jenis_sanksi`
--
ALTER TABLE `setup_jenis_sanksi`
  ADD PRIMARY KEY (`id_sanksi`);

--
-- Indeks untuk tabel `setup_kelas`
--
ALTER TABLE `setup_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `setup_pembimbing`
--
ALTER TABLE `setup_pembimbing`
  ADD PRIMARY KEY (`id_pemb`);

--
-- Indeks untuk tabel `setup_sosiometri`
--
ALTER TABLE `setup_sosiometri`
  ADD PRIMARY KEY (`id_sosiometri`);

--
-- Indeks untuk tabel `tbl_siswa_pelanggaran`
--
ALTER TABLE `tbl_siswa_pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_izin`
--
ALTER TABLE `tb_izin`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_guru`
--
ALTER TABLE `data_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data_orangtua`
--
ALTER TABLE `data_orangtua`
  MODIFY `id_orangtua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `data_saudara`
--
ALTER TABLE `data_saudara`
  MODIFY `id_saudara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id_siswa` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `setup_jenis_pelanggaran`
--
ALTER TABLE `setup_jenis_pelanggaran`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `setup_jenis_sanksi`
--
ALTER TABLE `setup_jenis_sanksi`
  MODIFY `id_sanksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `setup_kelas`
--
ALTER TABLE `setup_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `setup_pembimbing`
--
ALTER TABLE `setup_pembimbing`
  MODIFY `id_pemb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `setup_sosiometri`
--
ALTER TABLE `setup_sosiometri`
  MODIFY `id_sosiometri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa_pelanggaran`
--
ALTER TABLE `tbl_siswa_pelanggaran`
  MODIFY `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_izin`
--
ALTER TABLE `tb_izin`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
