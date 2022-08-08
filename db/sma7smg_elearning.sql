-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Nov 2020 pada 03.38
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sma7smg_elearning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adminx`
--

CREATE TABLE `adminx` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `usernamex` varchar(15) NOT NULL DEFAULT '',
  `passwordx` varchar(50) NOT NULL DEFAULT '',
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `adminx`
--

INSERT INTO `adminx` (`kd`, `usernamex`, `passwordx`, `postdate`) VALUES
('e4ea2f7dfb2e5c51e38998599e90afc2', 'admin', 'ed743e37d5c7be42fd6902e1664feefb', '2020-07-29 19:58:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel`
--

CREATE TABLE `guru_mapel` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `postdate` datetime DEFAULT NULL,
  `mapel_kode` varchar(100) DEFAULT NULL,
  `mapel_nama` varchar(100) DEFAULT NULL,
  `tapel` varchar(100) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `user_kode` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru_mapel`
--

INSERT INTO `guru_mapel` (`kd`, `postdate`, `mapel_kode`, `mapel_nama`, `tapel`, `kelas`, `user_kode`, `user_nama`) VALUES
('041c7cc5a8fb9320f6f3b538ce538b4c', '2020-07-16 04:35:40', 'BING', 'Bahasa Inggris', '2020xgmringx2021', 'X IPA 1', '1111111', '1111111'),
('bed40a0fdbd30f3d100fb2bc9b6b8fdd', '2020-07-16 04:35:40', 'BING', 'Bahasa Inggris', '2020xgmringx2021', 'X IPA 1', '1111111', '1111111'),
('0c30f1a85dc9c7c4275aa8afb7ed51b5', '2020-07-29 21:50:17', 'ELEK', 'Elektronika', '2019xgmringx2020', 'X IPA 1', '1111111', '1111111'),
('fb2811f4b77a8d8e1c86807dd81d7a57', '2020-07-29 21:50:17', 'IPA', 'IPA', '2020xgmringx2021', 'X IPA 1', '1111111', '1111111'),
('3caacc1f3f86c1bd743481ba732eb65f', '2020-07-17 03:58:04', 'PENJASKES', 'Pendidikan Jasmani dan Kesehatan', '2020xgmringx2021', 'X IPA 1', '1111111', '1111111'),
('5b8e5fa8f5be23d7f75532500919c67e', '2020-07-29 08:04:59', 'IPA', 'IPA', '2020xgmringx2021', 'X IPA 1', '1111111', '1111111'),
('c87c64244d02b4a50c838ac30910c147', '2020-07-29 21:50:17', 'BJAWA', 'Bahasa Jawa', '2020xgmringx2021', 'X IPA 1', '1111111', '1111111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_artikel`
--

CREATE TABLE `guru_mapel_artikel` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `rangkuman` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_artikel_msg`
--

CREATE TABLE `guru_mapel_artikel_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_artikel` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `user_kode` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `msg` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_chatroom`
--

CREATE TABLE `guru_mapel_chatroom` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `kd_user` varchar(50) DEFAULT NULL,
  `user_tipe` varchar(100) DEFAULT NULL,
  `user_kode` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `msg` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_file_materi`
--

CREATE TABLE `guru_mapel_file_materi` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `ket` longtext DEFAULT NULL,
  `filex` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_forum`
--

CREATE TABLE `guru_mapel_forum` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `topik` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_forum_msg`
--

CREATE TABLE `guru_mapel_forum_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_forum` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `user_kode` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_jadwal`
--

CREATE TABLE `guru_mapel_jadwal` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(100) DEFAULT NULL,
  `no` varchar(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `durasi` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `aktif` enum('true','false') NOT NULL DEFAULT 'false',
  `soal_jml` varchar(10) DEFAULT NULL,
  `soal_postdate` datetime DEFAULT NULL,
  `proses` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_kalender`
--

CREATE TABLE `guru_mapel_kalender` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `ket` longtext NOT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_kategori`
--

CREATE TABLE `guru_mapel_kategori` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_link`
--

CREATE TABLE `guru_mapel_link` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `url` longtext NOT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_log`
--

CREATE TABLE `guru_mapel_log` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_guru_mapel` varchar(100) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `mapel_kode` varchar(100) DEFAULT NULL,
  `mapel_nama` varchar(100) DEFAULT NULL,
  `tapel` varchar(100) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `user_tipe` varchar(100) DEFAULT NULL,
  `user_kd` varchar(100) DEFAULT NULL,
  `user_kode` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `dibaca_postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru_mapel_log`
--

INSERT INTO `guru_mapel_log` (`kd`, `kd_guru_mapel`, `ket`, `postdate`, `mapel_kode`, `mapel_nama`, `tapel`, `kelas`, `user_tipe`, `user_kd`, `user_kode`, `user_nama`, `dibaca`, `dibaca_postdate`) VALUES
('83d7c1084e5d541c10b56f443306909f', '041c7cc5a8fb9320f6f3b538ce538b4c', 'Menu Tanya Jawab', '2020-11-15 09:38:15', 'BING', 'Bahasa Inggris', '2020xgmringx2021', 'X IPA 1', 'GURU', '2e5140e952c7c174d87e151da750a0fd', '1111111', '1111111', 'false', NULL),
('2703ff1d2ce050fc4c4d76385a1b331c', '041c7cc5a8fb9320f6f3b538ce538b4c', 'Menu Kehadiran Siswa', '2020-11-15 09:38:19', 'BING', 'Bahasa Inggris', '2020xgmringx2021', 'X IPA 1', 'GURU', '2e5140e952c7c174d87e151da750a0fd', '1111111', '1111111', 'false', NULL),
('fd93287fc122cef7b65ac650a3abce8a', '041c7cc5a8fb9320f6f3b538ce538b4c', 'Menu Kategori', '2020-11-15 09:38:20', 'BING', 'Bahasa Inggris', '2020xgmringx2021', 'X IPA 1', 'GURU', '2e5140e952c7c174d87e151da750a0fd', '1111111', '1111111', 'false', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_news`
--

CREATE TABLE `guru_mapel_news` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `kd_kategori` varchar(50) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `rangkuman` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_news_msg`
--

CREATE TABLE `guru_mapel_news_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_news` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `user_kode` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_polling`
--

CREATE TABLE `guru_mapel_polling` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `topik` varchar(100) DEFAULT NULL,
  `opsi1` varchar(50) DEFAULT NULL,
  `opsi2` varchar(50) DEFAULT NULL,
  `opsi3` varchar(50) DEFAULT NULL,
  `opsi4` varchar(50) DEFAULT NULL,
  `opsi5` varchar(50) DEFAULT NULL,
  `nil_opsi1` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi2` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi3` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi4` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi5` varchar(5) NOT NULL DEFAULT '0',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_soal`
--

CREATE TABLE `guru_mapel_soal` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `jadwal_kd` varchar(50) DEFAULT NULL,
  `waktu` varchar(100) DEFAULT NULL,
  `durasi` varchar(100) DEFAULT NULL,
  `no` varchar(10) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `kunci` varchar(1) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_soal_filebox`
--

CREATE TABLE `guru_mapel_soal_filebox` (
  `kd` varchar(50) NOT NULL,
  `soal_kd` varchar(50) DEFAULT NULL,
  `filex` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_tanya`
--

CREATE TABLE `guru_mapel_tanya` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `user_kode` varchar(100) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `tanya` longtext NOT NULL,
  `jawaban` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_tugas`
--

CREATE TABLE `guru_mapel_tugas` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `topik` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel_video`
--

CREATE TABLE `guru_mapel_video` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kelas`
--

CREATE TABLE `m_kelas` (
  `kd` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kelas`
--

INSERT INTO `m_kelas` (`kd`, `kelas`) VALUES
('75a36c9944d290544923e81583b11921', 'X IPA 1'),
('023d7308e248e819f28e8f93cd3b133c', 'X IPS 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mapel`
--

CREATE TABLE `m_mapel` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kode` varchar(50) DEFAULT NULL,
  `mapel` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`kd`, `kode`, `mapel`, `postdate`) VALUES
('4598dd5b9ac644eaec4af76c548743be', 'BINDO', 'Bahasa dan Sastra Indonesia', '0000-00-00 00:00:00'),
('d8022de243b4ce12b64f03a48158d39f', 'BING', 'Bahasa Inggris', '0000-00-00 00:00:00'),
('fc76ca9f6ebcf0f34ab21b55cefdb912', 'IPA', 'IPA', '0000-00-00 00:00:00'),
('c89e31c6134d92194320f6661e446dfb', 'IPS', 'IPS', '0000-00-00 00:00:00'),
('8afc44d568dbc8e74709b598628e8330', 'KOMP', 'Komputer', '0000-00-00 00:00:00'),
('8c5d87f3695190b00ffc7ab43e8aed24', 'ELEK', 'Elektronika', '0000-00-00 00:00:00'),
('558dc5761abfa074e9b9f6ef52499a4d', 'BD1', 'Bahasa Daerah', '0000-00-00 00:00:00'),
('a572500460f997c17f391716e9ccdcdf', 'BJAWA', 'Bahasa Jawa', '2020-07-29 21:43:43'),
('1fcea08f19467a3a0c3e5aedb9308a9d', 'PENJASKES', 'Pendidikan Jasmani dan Kesehatan', '2020-07-29 21:43:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_tapel`
--

CREATE TABLE `m_tapel` (
  `kd` varchar(50) NOT NULL,
  `tapel` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_tapel`
--

INSERT INTO `m_tapel` (`kd`, `tapel`, `postdate`) VALUES
('c87eeab939405de5cb86af2b4fb9b5eb', '2020xgmringx2021', '2020-07-17 02:54:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_user`
--

CREATE TABLE `m_user` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(100) DEFAULT NULL,
  `nomor` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tipe` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `tapel_kd` varchar(50) DEFAULT NULL,
  `tapel_nama` varchar(100) DEFAULT NULL,
  `kelas_kd` varchar(50) DEFAULT NULL,
  `kelas_nama` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_user`
--

INSERT INTO `m_user` (`kd`, `usernamex`, `passwordx`, `nomor`, `nama`, `tipe`, `postdate`, `tapel_kd`, `tapel_nama`, `kelas_kd`, `kelas_nama`) VALUES
('bc0859fbf7d6fc7e912c005de9fb8c4f', '16091983', '3a16cbe5d35183dc4237a077190b6d32', '16091983', 'Witriyani', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('45d9ff9b259df8a6bd3d53af33299ccc', '25041984', '3ba2c0c0c493db121b75e8beffe9dddf', '25041984', 'Isna Ahmad Irfan, ST', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('d2194b78044d47e035e31fc856ba220a', '13071986', 'a08e91f1a15579e233ce4854ed66efe2', '13071986', 'Ani Kartika Devi, SE', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('dcd172955626560a541e7a48cf9f5904', '3061990', '405c05563157aa47dcb51d0cc403c709', '3061990', 'Kusheri Wijanarko', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('177d05986f2305e2cc8cb1445a8878b8', '21091976', 'ee37c73c24a61c680abe2b1fb1407f10', '21091976', 'Kusdi', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('b3a1c667349bf69534956c58d801ab47', '18011971', 'ba6b978cfff491bb82fc0dd2066611e0', '18011971', 'Eko Cahyono', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('d3a9f68c56942729ae52008fa0ac72a1', '8071984', '259c0823663153743042151fd07c7ba4', '8071984', 'Sumiyo', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('b45610eb506b2943225affb6856a8119', '24091980', '63fe39d77102f52993ef7b4728f8f9dc', '24091980', 'Ariyanto', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('5af985d7cf58c199be9ff536fe16c2d7', '2101983', '2e45b8220e19f7486c7a44496ca09b1a', '2101983', 'Eko Setiawan', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('9556e83ae7b4eee05e10cfd7ba10072a', '19031994', '7d4503c511565d73a029daedab6098fc', '19031994', 'Nurlita Fajar Fitriana, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('b6e06b38968fb62395f06907c9bce008', '25111993', 'c13f16320458b5d08b1d01747ac6fcee', '25111993', 'Adi Kurniawan, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('60844fe146c470248b416d430a23109c', '5051991', '175f0eca06b9e51e877a9ef9f086c0bd', '5051991', 'Nur Fatoni, S.Pd., Gr', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('d9baae9cdafb8b247693d383936292e5', '28081990', '17067745ee68c759fdc1f0c6a744c4a5', '28081990', 'Agustina Ismiyati, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('4504e26aedd66c38198f974a1e61e969', '17121993', '7c38fbbecee9a39e0643081b72af0080', '17121993', 'Dedi Wahyu Hartanto, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('e333a3636893dc209adb493f74916a7c', '21061991', 'afa1f860fcffe6c1c8aa23400fb76817', '21061991', 'Dwi Yuni Kartika Ningtyas, S.Pd, Gr', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('98655db1032bd9bf6b07c855d40b9315', '11101989', 'bd12ac0bfe1eab7a475343f317d9f5eb', '11101989', 'Muhamad Adila Wildantsani, S.Sn', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('aed3bedbd12a1c615b5548c344841efe', '4111987', '580d4ed31a837c89125af0367e8c2c27', '4111987', 'Mohamad Siswanto, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('bd4148dbce686c99ebc634a8dda3b8bb', '24101994', 'c3528d55713644356f212ae8282a91d4', '24101994', 'Lystia Aryanti Nurjannah, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('49623bcdb65683475c1385b0606047e9', '18051991', 'ee3d92f0208cccc917452309ca50731f', '18051991', 'Phaksi Nirwana, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('687c9f38c224be916ce1a6c25c9bea46', '19630819 198803 2 003', '2bde49050ab1525d73a8385404b04b1e', '19630819 198803 2 003', 'Dra. Siti Nurjanah', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('3cf841c217361da8852135b4e6015b72', '19640630 198703 1 006', '1100a1a7daa6891ab205a8546ba9e0d4', '19640630 198703 1 006', 'Drs. H. Hadi Purnomo, M.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('4a7dd662b14602c1aff862024f162634', '19650811 198702 1 003', '3424305ef5bb3f3bbebd2575d9b028ab', '19650811 198702 1 003', 'Erwan Haryanto, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('8d2b8e8642ff8ba2ab04d820aa62e6b4', '19651126 199903 2 001', '7ccee9734af79b4ec0301be0a167d527', '19651126 199903 2 001', 'Dra. Musrifah, M.Si', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('7a7b8b1963054980f533ea12e8c15c0e', '19660112 199203 2 004', '1b8c5242241ceb29a1120bbab57648ed', '19660112 199203 2 004', 'Dra. Lily Kornia', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('09173a8c2cf89760c01bf997ae04715c', '19660410 199003 2 010', '708b70e4aec5bdd760ae2495baf2de68', '19660410 199003 2 010', 'Dra. Dwi Rahmawati., M.Si', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('8dc9846ce68f60076ddc6e7e3178816d', '19670713 199802 2 002', '97bfb96a8d818f0eae2a165e2cac0fec', '19670713 199802 2 002', 'Ernawati, M.Kom., M.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('0943098b45adf6cbb677e964ff118b9c', '19680312 200212 1 009', '7ff514ee60c700a8e122a8b88a0b8dca', '19680312 200212 1 009', 'Khasan Bisri, S.Pd., M.Si', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('6f4a27506157283cb13f3f7749ae655c', '19700102 200212 2 003', '4e111c93e7cc62cf05ce823d72b6fd06', '19700102 200212 2 003', 'Puji Handayani, S.Pd., M.Si', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('72adbf6ade4f21146ead6bfe8b511f3e', '19710614 200212 2 003', '0644b95d1135cfb40d753f826446564d', '19710614 200212 2 003', 'Nur Hidayah, S.Pd., M.Si', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('42e2a3c83cb1a938e62006d5762832bf', '19710906 200312 2 005', 'b9038bfdb195a3da09e946987ad05b92', '19710906 200312 2 005', 'Siti Mardliyah, S.Pd.', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('a16fb2583936ae26e83d46f6dcaf4eb1', '19720706 200212 2 005', 'abb767e27bbe1ca3736187319659b755', '19720706 200212 2 005', 'Neti Tri Lestari, S.Pd, M.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('d03a06390e9fd1bdf4789fc0883c3aa6', '19741024 200501 2 009', 'bdf583a0b76bfe3cd77fd788f590684e', '19741024 200501 2 009', 'Atiek Indriyastuti, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('2fc9920a7a90ec729abb46ceb9749810', '19660901 200604 2 010', 'f50dacbaca937ef8c074afdcb1e309f0', '19660901 200604 2 010', 'Dra. Hurustiati', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('8547004939b16ab9322de0237a8e8f63', '19670319 200604 2 005', 'bc2acc118aab93c018ad6aa7688f69c6', '19670319 200604 2 005', 'Nunik, S.Pd, M.Si', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('28fce45b705c2c8a7edf498b3fecce44', '19670701 200801 1 008', 'ad813ef5afdfba55f139cd64ff98a1a2', '19670701 200801 1 008', 'Drs. Charis Supartono', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('3d11678348ce55226e71fff0c9aa5ad6', '19721025 200501 2 012', '17eb2e6469773bb743393c6d9a50d95e', '19721025 200501 2 012', 'Suneki, S.Pd., M.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('e344ea61a6cdfd1171e1304978057cae', '19741123 200701 2 008', '7fb4d26b4f1c30e8c32a9d43e775bd23', '19741123 200701 2 008', 'Tuti Supriyanti Asofi, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('031919eab8c2322fe3d5d9bc545b8812', '19860910 200903 2 011', 'd87c78619d651d596aa15f6ac1ff3e36', '19860910 200903 2 011', 'Anis Nuril Laili Sulistyowati, S.Pd., M.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('909faa83ba3fe398fd00efd703ef2336', '19630908 200701 1 010', '7f311c3c32e656f2d5d4f235d3c51e12', '19630908 200701 1 010', 'Parsudi, S.Pd.', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('1b9af562aa96210ca0e0b98045468bf1', '19650310 200701 2 018', 'c697f4d273228204c57ad61338412d5b', '19650310 200701 2 018', 'Dra. Sri Istiqomah, M.SI', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('e24b9335fcddbfd7926ddb8a0891ba26', '19750324 200701 1 005', 'd6fc5dabcd7261175560a6efa2cf2fd0', '19750324 200701 1 005', 'Danu Sulistyo, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('29f9ab1a55f4574a0c8ce3e86dcb81b6', '19750930 200801 1 012', '09ed4d4d7b84e0536d7e2ca268268c0c', '19750930 200801 1 012', 'Arief Saksono, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('a77b0d3c67025b98e79964b870e90e34', '19761223 200701 2 014', 'b8bf0997a835be8c81212ecfa86e9c3a', '19761223 200701 2 014', 'Desy Tri Idialisanti, S.Pd.M.Si', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('ca82f6576b79acf59adb8816dc399565', '19810406 201001 1 022', 'e3fda81f53ec40ed45c98112dc8fb25f', '19810406 201001 1 022', 'Irno Prakosa, S.Kom', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('d3843cc61f39816190dbe0356edcc984', '19820515 201101 1 011', 'ecad891d40fbd1d6c0f6119e1af4d926', '19820515 201101 1 011', 'Titis Widi Atmadi, S.Kom', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('a03d8f07e26304a511a84c44c300e810', '19680310 201406 1 001', 'f3383dd261294cbf1670a0771107b6c4', '19680310 201406 1 001', 'Bambang Sutopo, SS.', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('1aa11cc55ffba69da6d71aded84e12d9', '19700715 201406 1 003', '40ace2339c2ea4d5045637ceff2d54e6', '19700715 201406 1 003', 'Joshua Suwito, S.Th', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('e667bf1afecda6d9706318cc2b2b4360', '19730514 201406 2 001', 'f458de7076719d5f49d750fdc795d220', '19730514 201406 2 001', 'Duratun Nasekhah, S.Pd.', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('5edcb3eceef59ee233c01352cb3a2d46', '19820512 201406 2 006', 'ca9f8e80dff33407d1b84b9c9079ab22', '19820512 201406 2 006', 'Fitri Markorini, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('df1325c82727fa23a118f27d636c4ae5', '19920818 201902 2 006', '7d176446eb28333775c642d9aea17915', '19920818 201902 2 006', 'Idayatul Mafuroh, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('efd1e51119c48048c987f56b9c3c7de0', '19931007 201902 2 008', '7923a3a81722395690f4d9fdb416f78e', '19931007 201902 2 008', 'Ashfiyatus Surayya, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('86333789ee8707bdb20b578f429c9c0f', '19650101 198703 2 015', '3cf077dc376fc1a4723f1de7277e9513', '19650101 198703 2 015', 'Nur Khamidah, S.Sos', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('19f7e98d8f1013eca11d8406a0a22d17', '19641111 200801 1 004', 'ca9590c293bfdd5ecb86afbdd959a114', '19641111 200801 1 004', 'Drs. Sujiyanto', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('3d300452c2bc31b138f8e1c8582fd846', '19691208 201406 1 001', '72cf98176878edc580c89b902fdc4fa7', '19691208 201406 1 001', 'Rochmad', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('93f53ff208d0383a5c5636db31716769', '19640409 198601 1 004', 'dd847f3541b35f62922ecc7536628bbf', '19640409 198601 1 004', 'Surani', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('a15fbec7d34f84d2fc8ef7b005186b26', '30041988', 'c079d8cfd3ff437cdc8d711741612079', '30041988', 'Ari Setyawan, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('861e98136485b0ab17183ef9c8db7646', '2531987', 'd037405771c07a81934461bfa8061d37', '2531987', 'Irwan Retyanto, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('dbf7b2c327743a5fae1fe04b06824b53', '25061990', '3216ac240c2db09bab0fa020250705b7', '25061990', 'Anida Sedi, S.S', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('f4fe3533b7a509611e4e607a581a331c', '10021989', '84e4db73b7011c1a424e49dede826487', '10021989', 'Rifa Irwan Sani, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('d2ee3892ca0841979ced2f49b6477421', '26071984', 'c84794fb019a2ddbb2598f7642467a73', '26071984', 'Dian Cahyaningrum, S.Sos', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('30d662e1300626d9ddbb210ff6531a40', '20061981', '5cf1d92e89ddfa9ff7687f9f17c0ace0', '20061981', 'Abu Khoir, S.Pd. I', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('b792771bb52483a40029fe57be0bfa81', '16041963', '7a96c636195f57b3faf4d2f74f58722a', '16041963', 'Drs. Zaidun Ibnu Chozin', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('2e5140e952c7c174d87e151da750a0fd', '1111111', '7fa8282ad93047a4d6fe6111c93b308a', '1111111', '1111111', 'GURU', '2020-07-29 21:38:30', NULL, NULL, NULL, NULL),
('b2a2c6562c9dec4c667aff434006571c', '19600618 198603 1 010', 'b4b6fcbdcb172ad473172128bc206a96', '19600618 198603 1 010', 'Drs. Khoirul Imdad, Ed.M', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('620fe303658ab7bab8d785f459449480', '19600808 198603 2 012', 'ea22c57d0fbab4c6883144e369df45e5', '19600808 198603 2 012', 'Dra. Sri Yuliati, M.Si', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('cfaa660829f9d4e5e206f2526a86395e', '1234567', 'fcea920f7412b5da7be0cf42b8c93759', '1234567', '1234567', 'GURU', '2020-07-29 21:36:31', NULL, NULL, NULL, NULL),
('cb6f7196509283e08299b8b9ee46bd1f', '19630811 198903 2 005', '7885feaf888d694a6d2cee67cfba7146', '19630811 198903 2 005', 'Dra. Ida Ayu Oka Ekawati', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('cca5eb41b79c230f287f4185f98a52d6', '19630506 198403 2 008', 'c2bc7e3ef00fe10191ec0fe569804743', '19630506 198403 2 008', 'Sri Wahyuni, S.Pd.M.SI', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('d3fd592d3c96862962fbedf275b7f0a3', '19610731 198803 2 004', '678b743d97a642a0a14c017ac3652432', '19610731 198803 2 004', 'Christina Dyah Parvati, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('becf607eb186fd711e4db77b4f283975', '19601129 198403 2 003', '3fe4c40df2d926541ad9f7ca00812625', '19601129 198403 2 003', 'Dra. Dwi Handayani', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('d1704b55203b1c5cd6996bc809e5b88f', '19601104 198403 2 006', '1dc6467614dcd394c96737da35b13e14', '19601104 198403 2 006', 'Dra. Fransisca Budiati', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('6d965127ce27d3b4a40d964751abcecb', '19600902 198503 2 010', '13e19c960076846e0a640fffd9eab116', '19600902 198503 2 010', 'Dra. Laksmi Erwina', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('b023a61e7cfaaf167c202caf9b1e8632', '19601008 198603 2 009', '6f21196c95eb1670dcfebd0d442021b8', '19601008 198603 2 009', 'Dra. Ina Pradnyawati', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('10caf2e46872a986caa6c13582c1a30b', '11061976', '4b3a3931ae66fa9078010b8dfa3b37c9', '11061976', 'Andar Setyo Nugroho, SH', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('49bb621a5c8cf22d938213c0cceab19c', '9041972', '6b62060b726973a737726beef7c11589', '9041972', 'Fathun Nurrokhmawati, SE', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('5d77a46e844abae5d7ec075294e02b7d', '3011977', '224ac0be38e8be216c0e38a913d81c5d', '3011977', 'Agung Wibowo', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('6e8b68347c7b76a3cfc4c7406107bf1c', '28051983', 'fee1bd3dc37d39f292d4869065324fdb', '28051983', 'Joko Pramono', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('43d1b81475e53372000b5c5a3af5a69a', '12111995', 'b3944ba8a15fbfebb6d151c2dd93bf83', '12111995', 'Dwi Laksmi Danisworo, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('555e7310c240972df97380d7cc3e8a43', '16111993', 'e0f4ab71b3e0077dfb976f986628b124', '16111993', 'Arizal Zulfikhar, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('7a898c06a7cd078e6127e8261dab76b3', '31011995', '18179ef5f66bcd18a9900372510b37a8', '31011995', 'Eka Ahmad Rofiq, S.Pd', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('eb8a935d5a38911d842ae305c754bb17', '13051969', '9bba7af6760516c1946830d399e9790c', '13051969', 'Rin Suwarti', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('4b14ba02b0f8b1b25c0a9c870440ae39', '12071964', 'fd86c64cf84ed35a95689db99bc0c8c6', '12071964', 'Sugiyono', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('61df72a8926c203c93aaeaa08309a0a5', '19101980', '34981937cda4a4204e0aae73d0cc4cd0', '19101980', 'Sintia Putty Khaerunisa, S.Sos', 'GURU', '2020-11-15 09:33:07', NULL, NULL, NULL, NULL),
('2c7ea74972615e79a3586fee4473fb54', '1234567', 'fcea920f7412b5da7be0cf42b8c93759', '1234567', '1234567', 'SISWA', '2020-07-29 21:33:18', '322639a34022e27be17fff1b6e9c7d5e', '2020xgmringx2021', '7fb40e66bd449244ac44fe90b31e1532', 'X IPA 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_soal`
--

CREATE TABLE `siswa_soal` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `jadwal_kd` varchar(50) DEFAULT NULL,
  `siswa_kd` varchar(50) DEFAULT NULL,
  `soal_kd` varchar(50) DEFAULT NULL,
  `jawab` varchar(1) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `kunci` varchar(1) DEFAULT NULL,
  `benar` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_soal_nilai`
--

CREATE TABLE `siswa_soal_nilai` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `jadwal_kd` varchar(50) DEFAULT NULL,
  `siswa_kd` varchar(50) DEFAULT NULL,
  `jml_benar` varchar(3) DEFAULT NULL,
  `jml_salah` varchar(3) DEFAULT NULL,
  `waktu_mulai` datetime DEFAULT NULL,
  `waktu_proses` datetime DEFAULT NULL,
  `waktu_akhir` datetime DEFAULT NULL,
  `skor` varchar(5) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `waktu_selesai` datetime DEFAULT NULL,
  `jml_soal_dikerjakan` varchar(10) DEFAULT NULL,
  `selesai` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_tugas`
--

CREATE TABLE `siswa_tugas` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `tugas_kd` varchar(50) DEFAULT NULL,
  `siswa_kd` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext DEFAULT NULL,
  `nilai` varchar(10) DEFAULT NULL,
  `nilai_postdate` datetime DEFAULT NULL,
  `nilai_ket` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_blog`
--

CREATE TABLE `user_blog` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `user_kode` varchar(100) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `foto_path` varchar(255) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL DEFAULT '-',
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL DEFAULT '-',
  `situs` varchar(255) NOT NULL DEFAULT '-',
  `telp` varchar(100) NOT NULL DEFAULT '-',
  `agama` varchar(30) NOT NULL DEFAULT '-',
  `hobi` varchar(100) NOT NULL DEFAULT '-',
  `aktivitas` varchar(100) NOT NULL DEFAULT '-',
  `tertarik` varchar(100) NOT NULL DEFAULT '-',
  `makanan` varchar(100) NOT NULL DEFAULT '-',
  `minuman` varchar(100) NOT NULL DEFAULT '-',
  `musik` varchar(100) NOT NULL DEFAULT '-',
  `film` varchar(100) NOT NULL DEFAULT '-',
  `buku` varchar(100) NOT NULL DEFAULT '-',
  `idola` varchar(100) NOT NULL DEFAULT '-',
  `pend_akhir` varchar(100) NOT NULL DEFAULT '-',
  `pend_thnlulus` varchar(4) NOT NULL,
  `moto` varchar(100) NOT NULL DEFAULT '-',
  `kata_mutiara` varchar(100) NOT NULL DEFAULT '-',
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_blog_album`
--

CREATE TABLE `user_blog_album` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `user_kode` varchar(100) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_blog_album_filebox`
--

CREATE TABLE `user_blog_album_filebox` (
  `kd` varchar(50) NOT NULL,
  `kd_album` varchar(50) NOT NULL,
  `filex` longtext NOT NULL,
  `ket` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_blog_album_msg`
--

CREATE TABLE `user_blog_album_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_blog_album` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `user_kode` varchar(100) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_blog_artikel`
--

CREATE TABLE `user_blog_artikel` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `user_kode` varchar(100) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `kd_kategori` varchar(50) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `rangkuman` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_blog_artikel_msg`
--

CREATE TABLE `user_blog_artikel_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_blog_artikel` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `user_kode` varchar(100) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_blog_msg`
--

CREATE TABLE `user_blog_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `tapel` varchar(100) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `kd_user` varchar(50) DEFAULT NULL,
  `user_tipe` varchar(100) DEFAULT NULL,
  `user_kode` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `uuser_tipe` varchar(100) DEFAULT NULL,
  `uuser_kode` varchar(100) DEFAULT NULL,
  `uuser_nama` varchar(100) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `dibaca_postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_blog_status`
--

CREATE TABLE `user_blog_status` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) DEFAULT NULL,
  `user_tipe` varchar(100) DEFAULT NULL,
  `user_kode` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `onlineya` varchar(100) DEFAULT NULL,
  `ipnya` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_blog_status`
--

INSERT INTO `user_blog_status` (`kd`, `kd_user`, `user_tipe`, `user_kode`, `user_nama`, `status`, `postdate`, `onlineya`, `ipnya`) VALUES
('92977279663057dafc53778aac1cd62a', '2e5140e952c7c174d87e151da750a0fd', 'GURU', '1111111', '1111111', 'Selamat Datang....', '2020-11-15 09:38:04', 'YA', '127.0.0.1'),
('0bd3ca16bd688bf5cbfb4013250e3557', '2e5140e952c7c174d87e151da750a0fd', 'GURU', '1111111', '1111111', '[2020/2021. X IPA 1]. Bahasa Inggris [BERANDA].', '2020-11-15 09:38:15', 'YA', '127.0.0.1'),
('2d60ce1c3c6dd7d7af4487c47fe004df', '2e5140e952c7c174d87e151da750a0fd', 'GURU', '1111111', '1111111', '[2020/2021. X IPA 1]. Bahasa Inggris [SISWA].', '2020-11-15 09:38:19', 'YA', '127.0.0.1'),
('76920194aea2572fe68cb1b9f9b5752f', '2e5140e952c7c174d87e151da750a0fd', 'GURU', '1111111', '1111111', '[2020/2021. X IPA 1]. Bahasa Inggris [KATEGORI].', '2020-11-15 09:38:20', 'YA', '127.0.0.1'),
('2a636ec5401903cc061c3be7c2fbad58', '2e5140e952c7c174d87e151da750a0fd', 'GURU', '1111111', '1111111', 'Selamat Datang....', '2020-11-15 09:38:22', 'YA', '127.0.0.1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_blog_status_msg`
--

CREATE TABLE `user_blog_status_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_blog_status` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `user_kode` varchar(100) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_learning`
--

CREATE TABLE `user_learning` (
  `kd` varchar(50) NOT NULL,
  `tapel` varchar(100) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `kd_user` varchar(50) DEFAULT NULL,
  `user_kode` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `kd_guru_mapel` varchar(50) DEFAULT NULL,
  `ket` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `dibaca_postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adminx`
--
ALTER TABLE `adminx`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel`
--
ALTER TABLE `guru_mapel`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_artikel`
--
ALTER TABLE `guru_mapel_artikel`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_artikel_msg`
--
ALTER TABLE `guru_mapel_artikel_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_chatroom`
--
ALTER TABLE `guru_mapel_chatroom`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_file_materi`
--
ALTER TABLE `guru_mapel_file_materi`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_forum`
--
ALTER TABLE `guru_mapel_forum`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_forum_msg`
--
ALTER TABLE `guru_mapel_forum_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_jadwal`
--
ALTER TABLE `guru_mapel_jadwal`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_kalender`
--
ALTER TABLE `guru_mapel_kalender`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_kategori`
--
ALTER TABLE `guru_mapel_kategori`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_link`
--
ALTER TABLE `guru_mapel_link`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_log`
--
ALTER TABLE `guru_mapel_log`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_news`
--
ALTER TABLE `guru_mapel_news`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_news_msg`
--
ALTER TABLE `guru_mapel_news_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_polling`
--
ALTER TABLE `guru_mapel_polling`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_soal`
--
ALTER TABLE `guru_mapel_soal`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_soal_filebox`
--
ALTER TABLE `guru_mapel_soal_filebox`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_tanya`
--
ALTER TABLE `guru_mapel_tanya`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_tugas`
--
ALTER TABLE `guru_mapel_tugas`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `guru_mapel_video`
--
ALTER TABLE `guru_mapel_video`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `m_tapel`
--
ALTER TABLE `m_tapel`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `siswa_soal`
--
ALTER TABLE `siswa_soal`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `siswa_soal_nilai`
--
ALTER TABLE `siswa_soal_nilai`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `siswa_tugas`
--
ALTER TABLE `siswa_tugas`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `user_blog`
--
ALTER TABLE `user_blog`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `user_blog_album`
--
ALTER TABLE `user_blog_album`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `user_blog_album_filebox`
--
ALTER TABLE `user_blog_album_filebox`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `user_blog_artikel`
--
ALTER TABLE `user_blog_artikel`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `user_blog_artikel_msg`
--
ALTER TABLE `user_blog_artikel_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `user_blog_msg`
--
ALTER TABLE `user_blog_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `user_blog_status`
--
ALTER TABLE `user_blog_status`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `user_blog_status_msg`
--
ALTER TABLE `user_blog_status_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `user_learning`
--
ALTER TABLE `user_learning`
  ADD PRIMARY KEY (`kd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
