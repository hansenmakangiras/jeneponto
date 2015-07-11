-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2015 at 11:07 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_jeneponto`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `online` datetime NOT NULL,
  `aktif` enum('1','0') NOT NULL,
  `level` enum('1','0') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `email`, `online`, `aktif`, `level`) VALUES
(1, 'Adminku', 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'admin@mail.com', '2015-01-12 13:31:08', '1', '0'),
(2, 'Rahmat', 'rahmat', 'af2a4c9d4c4956ec9d6ba62213eed568', 'abd.rahmat.ika@gmail.com', '2015-01-12 18:07:25', '1', '1'),
(3, 'Abd Rahmat Ika', 'rahmatika', 'af2a4c9d4c4956ec9d6ba62213eed568', 'rama.afive@yahoo.com', '0000-00-00 00:00:00', '1', '0'),
(4, 'Admin', 'sasa', '21232f297a57a5a743894a0e4a801fc3', 'general.emailku@gmail.coma', '2015-01-08 16:29:59', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id_user` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `dibaca` enum('1','0') NOT NULL,
  `waktu` time NOT NULL,
  `tgl` date NOT NULL,
  `user_from` int(11) NOT NULL,
  `history_for` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id_user`, `pesan`, `dibaca`, `waktu`, `tgl`, `user_from`, `history_for`) VALUES
(2, 'zz', '0', '13:19:22', '2015-01-12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `das`
--

CREATE TABLE IF NOT EXISTS `das` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_das_nama` varchar(100) NOT NULL,
  `luas` float NOT NULL,
  `persentase` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `das_letak`
--

CREATE TABLE IF NOT EXISTS `das_letak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kecamatan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `das_letak_data`
--

CREATE TABLE IF NOT EXISTS `das_letak_data` (
  `id_das_letak` int(11) NOT NULL,
  `id_das_nama` int(11) NOT NULL,
  `luas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `das_nama`
--

CREATE TABLE IF NOT EXISTS `das_nama` (
  `id_das` int(11) NOT NULL AUTO_INCREMENT,
  `nama_das` varchar(100) NOT NULL,
  PRIMARY KEY (`id_das`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `das_penutupan_lahan`
--

CREATE TABLE IF NOT EXISTS `das_penutupan_lahan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `morvologi_das` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `das_penutupan_lahan_data`
--

CREATE TABLE IF NOT EXISTS `das_penutupan_lahan_data` (
  `id_das_penutupan_lahan` int(11) NOT NULL,
  `penutupan_lahan` varchar(100) NOT NULL,
  `luas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `format_tgl`
--

CREATE TABLE IF NOT EXISTS `format_tgl` (
  `id_format` int(2) NOT NULL AUTO_INCREMENT,
  `format` varchar(20) NOT NULL,
  PRIMARY KEY (`id_format`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `format_tgl`
--

INSERT INTO `format_tgl` (`id_format`, `format`) VALUES
(1, 'Y-m-d'),
(2, 'Y/m/d'),
(3, 'd-m-Y'),
(4, 'd/m/Y'),
(5, 'F j, Y'),
(6, 'tgl_indo');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE IF NOT EXISTS `halaman` (
  `id_halaman` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(11) NOT NULL,
  `judul_halaman` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tag` text NOT NULL,
  `publish` enum('Y','N') NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl` date NOT NULL,
  `id_user` int(3) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `permalink` varchar(250) NOT NULL,
  PRIMARY KEY (`id_halaman`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id_halaman`, `id_kategori`, `judul_halaman`, `deskripsi`, `tag`, `publish`, `isi_halaman`, `tgl`, `id_user`, `foto`, `permalink`) VALUES
(1, 13, 'Tips Dan Trick Berinternet', '<p>,m</p>\r\n', '', 'Y', '<p>,m</p>\r\n', '2014-12-06', 2, '', 'tips-dan-trick-berinternet'),
(2, 13, 'Tips Dan Trick Berinterne', '<p>dss</p>\r\n', '', 'Y', '<p>dss</p>\r\n', '2014-12-06', 2, '', 'tips-dan-trick-berinterne'),
(3, 0, 'About Us', '<p>Vestibulum id ligula porta felis euismod semper. Donec ullamcorper nulla non metus auctor fringilla. Aenean eu leo...', '', 'N', '<p>Vestibulum id ligula porta felis euismod semper. Donec ullamcorper nulla non metus auctor fringilla. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>\r\n', '2014-12-07', 2, '', 'about-us');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `untuk` enum('tulisan','halaman','port') NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `aktif`, `untuk`) VALUES
(9, 'Umum', 'Y', 'tulisan'),
(11, 'Lorem Ipsum', 'Y', 'tulisan'),
(13, 'Coba', 'Y', 'halaman'),
(15, 'Umum', 'Y', 'port'),
(16, 'Lorem Ipsum', 'Y', 'port'),
(17, 'Tes', 'Y', 'port');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE IF NOT EXISTS `kecamatan` (
  `id_kec` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kec` varchar(50) NOT NULL,
  `permalink` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kec`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kec`, `nama_kec`, `permalink`) VALUES
(1, 'Bangkala', 'bangkala'),
(2, 'Bangkala Barat', 'bangkala-barat'),
(3, 'Bontoramba', 'bontoramba'),
(4, 'Tamalatea', 'tamalatea'),
(5, 'Turatea', 'turatea'),
(6, 'Binamu', 'binamu'),
(7, 'Batang', 'batang'),
(8, 'Arungkene', 'arungkene'),
(9, 'Tarowang', 'tarowang'),
(10, 'Kelara', 'kelara'),
(11, 'Rumbia', 'rumbia');

-- --------------------------------------------------------

--
-- Table structure for table `kehutanan`
--

CREATE TABLE IF NOT EXISTS `kehutanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kecamatan` int(11) NOT NULL,
  `hl` float NOT NULL,
  `taman_buru` float NOT NULL,
  `hpt` float NOT NULL,
  `hp` float NOT NULL,
  `apl` float NOT NULL,
  `perairan` float NOT NULL,
  `tidak_ada_data` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kehutanan_data_hutan`
--

CREATE TABLE IF NOT EXISTS `kehutanan_data_hutan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kegiatan` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kehutanan_data_hutan_desa`
--

CREATE TABLE IF NOT EXISTS `kehutanan_data_hutan_desa` (
  `id_kehutanan_data_hutan_kecamatan` int(11) NOT NULL,
  `desa` int(11) NOT NULL,
  `luas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kehutanan_data_hutan_kecamatan`
--

CREATE TABLE IF NOT EXISTS `kehutanan_data_hutan_kecamatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kehutanan_data_hutan` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kehutanan_gambar`
--

CREATE TABLE IF NOT EXISTS `kehutanan_gambar` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kehutanan_kegiatan_benih`
--

CREATE TABLE IF NOT EXISTS `kehutanan_kegiatan_benih` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun_kegiatan` int(5) NOT NULL,
  `luas` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kehutanan_kegiatan_rehabilitasi`
--

CREATE TABLE IF NOT EXISTS `kehutanan_kegiatan_rehabilitasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun_kegiatan` int(5) NOT NULL,
  `luas` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kehutanan_penutupan_lahan`
--

CREATE TABLE IF NOT EXISTS `kehutanan_penutupan_lahan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kawasan_hutan` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kehutanan_penutupan_lahan_data`
--

CREATE TABLE IF NOT EXISTS `kehutanan_penutupan_lahan_data` (
  `id_kehutanan_penutupan_lahan` int(11) NOT NULL,
  `penutupan_lahan` varchar(200) NOT NULL,
  `luas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id_komentar` int(11) NOT NULL AUTO_INCREMENT,
  `id_tulisan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `komentar` text NOT NULL,
  `tgl` date NOT NULL,
  `publish` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_tulisan`, `nama`, `email`, `komentar`, `tgl`, `publish`) VALUES
(31, 18, 'Rahmat', 'abd.rahmat@mai.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2014-12-17', 'Y'),
(42, 18, 'Adminku', 'rama.afive@yahoo.com', 'Anda belum mengisi komentar atau terlalu pendek', '2015-01-07', 'Y'),
(43, 18, 'Adminku', 'rama.afive@yahoo.com', 'Anda belum mengisi komentar atau terlalu pendek', '2015-01-07', 'Y'),
(44, 18, 'Adminku', 'rama.afive@yahoo.com', 'Anda belum mengisi komentar atau terlalu pendek', '2015-01-07', 'Y'),
(45, 18, 'Adminku', 'mail@mail.com', 'Tinggalkan komentar Tinggalkan komentar', '2015-01-07', 'Y'),
(47, 18, 'rahmat (Administrator)', '', 'sds', '2015-01-07', 'Y'),
(48, 18, 'Adminku', 'mail@mail.com', 'Ok. Makasih', '2015-01-07', 'Y'),
(50, 18, 'Adminku', 'mail@mail.com', 'hi iiiiii\r\nkkjkjkjk', '2015-01-07', 'Y'),
(51, 21, 'Adminku', 'mail@mail.com', 'okkkkkkk', '2015-01-07', 'Y'),
(52, 18, 'Rahmat (Administrator)', '', 'Hi Jugaa :P', '2015-01-07', 'Y'),
(54, 18, 'Rahmat (Administrator)', '', '<span class="wysiwyg-color-red">sdsdsdsd</span>', '2015-01-07', 'Y'),
(58, 18, 'Adminku', 'mail@mail.com', 'rararararararar', '2015-01-07', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE IF NOT EXISTS `main_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(200) NOT NULL,
  `link_menu` varchar(200) NOT NULL,
  `urutan` int(3) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`id_menu`, `nama_menu`, `link_menu`, `urutan`) VALUES
(2, 'Beranda', '', 1),
(3, 'Kehutanan', 'kehutanan/', 3),
(4, 'Profil', 'profil/', 2),
(7, 'Perkebunan', 'perkebunan/', 4),
(8, 'DAS', 'das/', 5),
(9, 'Peraturan Perundangan', 'peraturan-perundagan/', 6),
(10, 'Galeri', 'galeri/', 7),
(11, 'Berita', 'berita/', 8),
(12, 'Kontak', 'kontak/', 9);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `email`) VALUES
(0, 'abd.rahmat@mai.com'),
(0, 'mailku@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE IF NOT EXISTS `pengaturan` (
  `nama_web` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `tag` text NOT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `pesan_off` text NOT NULL,
  `format_tgl` int(2) NOT NULL,
  `pengaktifan` enum('email','otomatis') NOT NULL,
  `max_login` int(2) NOT NULL,
  `email_host` varchar(50) NOT NULL,
  `password_email` varchar(50) NOT NULL,
  `port_email` int(11) NOT NULL,
  `atas_nama` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`nama_web`, `deskripsi`, `tag`, `url`, `email`, `status`, `pesan_off`, `format_tgl`, `pengaktifan`, `max_login`, `email_host`, `password_email`, `port_email`, `atas_nama`) VALUES
('Dinas Perkebunan Jeneponto', 'Ini adalah website resmi Pemerintah Dearah Kabupaten Jeneponto, merupakan wadah pertukaran informasi tentang Kabupaten Jeneponto', 'jeneponto, kabupaten jeneponto', 'http://localhost/jeneponto/', 'general.emailku@gmail.com', '1', 'Maaf, saat ini website kami dalam proses maintenance.', 6, '', 0, 'smtp.gmail.com', 'rahmat1992', 587, 'My CMS');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_tamu`
--

CREATE TABLE IF NOT EXISTS `pesan_tamu` (
  `id_tamu` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `pesan` text NOT NULL,
  `status` enum('1','0') NOT NULL,
  `tgl` date NOT NULL,
  PRIMARY KEY (`id_tamu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pesan_tamu`
--

INSERT INTO `pesan_tamu` (`id_tamu`, `nama`, `email`, `subject`, `pesan`, `status`, `tgl`) VALUES
(1, 'Adminku', 'abd.rahmat.ika@gmail.com', 'r', 'sddsddsddsddsddsddsddsddsddsdd', '0', '2015-01-06'),
(2, 'Adminku', 'rama.afive@yahoo.com', 'ddf', 'dssddsdssddssssssssssssssssssssssss', '0', '2015-01-06'),
(3, 'k', 'rama.afive@yahoo.com', 'j', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', '0', '2015-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE IF NOT EXISTS `portfolio` (
  `id_portfolio` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `keterangan` varchar(150) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_portfolio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id_portfolio`, `id_kategori`, `keterangan`, `foto`) VALUES
(1, 15, 'Lorem', 'galeri-2.jpg'),
(2, 15, 'Lorem ipsum dolor sit amet', 'galeri-3.JPG'),
(3, 16, 'Rerum doloremque, perferendis molestias dicta ', 'galeri-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_n_banner`
--

CREATE TABLE IF NOT EXISTS `slide_n_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `url` varchar(50) NOT NULL,
  `type` enum('Banner','Slide') NOT NULL,
  `publish` enum('1','0') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `slide_n_banner`
--

INSERT INTO `slide_n_banner` (`id`, `judul`, `gambar`, `keterangan`, `url`, `type`, `publish`) VALUES
(5, '', 'detail data.png', '', 'http://abdrahmatika.com', 'Banner', '1'),
(6, 'Judul 4', 'kebun-1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', '', 'Slide', '1'),
(7, 'Judul 3', 'kebun-2.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', '', 'Slide', '1'),
(8, 'Judul 2', 'kebun-3.JPG', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', '', 'Slide', '1'),
(9, 'Judul 1', 'kebun-4.jpg', '<p>Rerum doloremque, perferendis molestias dicta</p>', '', 'Slide', '1');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE IF NOT EXISTS `social_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `social_media` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `social_media`, `link`) VALUES
(1, 'Facebook', 'https://www.facebook.com/'),
(2, 'Twitter', 'https://twitter.com/'),
(3, 'Linkedin', ''),
(4, 'Pinterest', ''),
(5, 'Instagram', ''),
(6, 'Youtube', '');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('::1', '2015-01-12', 96, '1421042960'),
('::1', '2015-01-09', 6, '1420783838'),
('::1', '2015-01-08', 21, '1420708338'),
('::1', '2015-01-07', 494, '1420646171'),
('::1', '2015-01-06', 3, '1420525296');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE IF NOT EXISTS `sub_menu` (
  `id_submenu` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `nama_submenu` varchar(200) NOT NULL,
  `link_submenu` varchar(200) NOT NULL,
  `urutan` int(3) NOT NULL,
  PRIMARY KEY (`id_submenu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id_templates` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `pembuat`, `folder`, `aktif`) VALUES
(4, 'Standar', 'Gifa Eriyanto', 'template/standar', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tulisan`
--

CREATE TABLE IF NOT EXISTS `tulisan` (
  `id_tulisan` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `judul_tulisan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tag` text NOT NULL,
  `publish` enum('Y','N') NOT NULL,
  `isi_tulisan` longtext NOT NULL,
  `tgl` date NOT NULL,
  `id_user` int(3) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `permalink` varchar(250) NOT NULL,
  `hit` int(11) NOT NULL,
  PRIMARY KEY (`id_tulisan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tulisan`
--

INSERT INTO `tulisan` (`id_tulisan`, `id_kategori`, `judul_tulisan`, `deskripsi`, `tag`, `publish`, `isi_tulisan`, `tgl`, `id_user`, `foto`, `permalink`, `hit`) VALUES
(18, 11, 'Testing', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum doloremque, perferendis molestias dicta reiciendis...', '', 'Y', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum doloremque, perferendis molestias dicta reiciendis rem voluptatibus repellat soluta nostrum, eveniet excepturi, nulla debitis? Enim laboriosam necessitatibus reiciendis esse, rerum vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi illo, pariatur molestias enim deleniti corrupti neque! Harum, cumque, ducimus. Repellendus debitis earum blanditiis ab nostrum aliquid voluptates similique, incidunt reprehenderit modi officia esse ipsam vel maiores qui rerum voluptas, quam reiciendis error obcaecati quae, magnam laudantium. Quos unde hic fugiat.</p>\r\n<p>Consectetur adipisicing elit. Necessitatibus itaque aliquid vero dolorem quidem autem quae eius veritatis, cupiditate qui commodi tempore vel a nisi perferendis ipsa voluptatibus repellat nihil facere provident est id eligendi iste doloremque. Obcaecati, laudantium deserunt, aut repellendus consequatur unde. Esse molestiae impedit consectetur rerum architecto accusantium explicabo, voluptates cupiditate tenetur quas. Maxime inventore reprehenderit, ipsa ea libero ipsam in. Voluptate nisi sequi quidem cum dolorum temporibus enim modi pariatur illum harum optio voluptas, expedita est nobis necessitatibus repudiandae ab. Sed iste autem itaque et, consequuntur atque sunt. Atque reprehenderit temporibus consectetur ipsa dolores vel perspiciatis.</p>\r\n<p>Repellendus debitis earum blanditiis ab nostrum aliquid voluptates similique, incidunt reprehenderit modi Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur voluptatibus dicta fugiat a ipsa, ad, cum accusamus possimus dolorem incidunt suscipit harum, maiores nihil. Expedita dolor reprehenderit ullam. Velit, vero. Sit aspernatur, officia incidunt harum ad, eveniet beatae ut totam. officia esse ipsam vel maiores qui rerum voluptas, quam reiciendis error obcaecati quae, magnam laudantium. Quos unde hic fugiat.</p>', '2014-12-14', 2, 'post-1.jpg', 'testing', 0),
(19, 9, 'Test Berita', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum doloremque, perferendis molestias dicta reiciendis...', 'tag 1,tag2', 'Y', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum doloremque, perferendis molestias dicta reiciendis rem voluptatibus repellat soluta nostrum, eveniet excepturi, nulla debitis? Enim laboriosam necessitatibus reiciendis esse, rerum vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi illo, pariatur molestias enim deleniti corrupti neque! Harum, cumque, ducimus. Repellendus debitis earum blanditiis ab nostrum aliquid voluptates similique, incidunt reprehenderit modi officia esse ipsam vel maiores qui rerum voluptas, quam reiciendis error obcaecati quae, magnam laudantium. Quos unde hic fugiat.</p>\r\n<p>Consectetur adipisicing elit. Necessitatibus itaque aliquid vero dolorem quidem autem quae eius veritatis, cupiditate qui commodi tempore vel a nisi perferendis ipsa voluptatibus repellat nihil facere provident est id eligendi iste doloremque. Obcaecati, laudantium deserunt, aut repellendus consequatur unde. Esse molestiae impedit consectetur rerum architecto accusantium explicabo, voluptates cupiditate tenetur quas. Maxime inventore reprehenderit, ipsa ea libero ipsam in. Voluptate nisi sequi quidem cum dolorum temporibus enim modi pariatur illum harum optio voluptas, expedita est nobis necessitatibus repudiandae ab. Sed iste autem itaque et, consequuntur atque sunt. Atque reprehenderit temporibus consectetur ipsa dolores vel perspiciatis.</p>\r\n<p>Repellendus debitis earum blanditiis ab nostrum aliquid voluptates similique, incidunt reprehenderit modi Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur voluptatibus dicta fugiat a ipsa, ad, cum accusamus possimus dolorem incidunt suscipit harum, maiores nihil. Expedita dolor reprehenderit ullam. Velit, vero. Sit aspernatur, officia incidunt harum ad, eveniet beatae ut totam. officia esse ipsam vel maiores qui rerum voluptas, quam reiciendis error obcaecati quae, magnam laudantium. Quos unde hic fugiat.</p>', '2015-01-07', 2, 'post-4.jpg', 'test-berita', 0),
(20, 9, 'Lorem Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum doloremque, perferendis molestias dicta reiciendis...', '', 'Y', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum doloremque, perferendis molestias dicta reiciendis rem voluptatibus repellat soluta nostrum, eveniet excepturi, nulla debitis? Enim laboriosam necessitatibus reiciendis esse, rerum vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi illo, pariatur molestias enim deleniti corrupti neque! Harum, cumque, ducimus. Repellendus debitis earum blanditiis ab nostrum aliquid voluptates similique, incidunt reprehenderit modi officia esse ipsam vel maiores qui rerum voluptas, quam reiciendis error obcaecati quae, magnam laudantium. Quos unde hic fugiat.</p>\r\n<p>Consectetur adipisicing elit. Necessitatibus itaque aliquid vero dolorem quidem autem quae eius veritatis, cupiditate qui commodi tempore vel a nisi perferendis ipsa voluptatibus repellat nihil facere provident est id eligendi iste doloremque. Obcaecati, laudantium deserunt, aut repellendus consequatur unde. Esse molestiae impedit consectetur rerum architecto accusantium explicabo, voluptates cupiditate tenetur quas. Maxime inventore reprehenderit, ipsa ea libero ipsam in. Voluptate nisi sequi quidem cum dolorum temporibus enim modi pariatur illum harum optio voluptas, expedita est nobis necessitatibus repudiandae ab. Sed iste autem itaque et, consequuntur atque sunt. Atque reprehenderit temporibus consectetur ipsa dolores vel perspiciatis.</p>\r\n<p>Repellendus debitis earum blanditiis ab nostrum aliquid voluptates similique, incidunt reprehenderit modi Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur voluptatibus dicta fugiat a ipsa, ad, cum accusamus possimus dolorem incidunt suscipit harum, maiores nihil. Expedita dolor reprehenderit ullam. Velit, vero. Sit aspernatur, officia incidunt harum ad, eveniet beatae ut totam. officia esse ipsam vel maiores qui rerum voluptas, quam reiciendis error obcaecati quae, magnam laudantium. Quos unde hic fugiat.</p>', '2015-01-07', 2, 'post-3.jpg', 'lorem-ipsum', 0),
(21, 11, 'Lorem Ipsum 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum doloremque, perferendis molestias dicta reiciendis...', '', 'Y', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum doloremque, perferendis molestias dicta reiciendis rem voluptatibus repellat soluta nostrum, eveniet excepturi, nulla debitis? Enim laboriosam necessitatibus reiciendis esse, rerum vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi illo, pariatur molestias enim deleniti corrupti neque! Harum, cumque, ducimus. Repellendus debitis earum blanditiis ab nostrum aliquid voluptates similique, incidunt reprehenderit modi officia esse ipsam vel maiores qui rerum voluptas, quam reiciendis error obcaecati quae, magnam laudantium. Quos unde hic fugiat.</p>\r\n<p>Consectetur adipisicing elit. Necessitatibus itaque aliquid vero dolorem quidem autem quae eius veritatis, cupiditate qui commodi tempore vel a nisi perferendis ipsa voluptatibus repellat nihil facere provident est id eligendi iste doloremque. Obcaecati, laudantium deserunt, aut repellendus consequatur unde. Esse molestiae impedit consectetur rerum architecto accusantium explicabo, voluptates cupiditate tenetur quas. Maxime inventore reprehenderit, ipsa ea libero ipsam in. Voluptate nisi sequi quidem cum dolorum temporibus enim modi pariatur illum harum optio voluptas, expedita est nobis necessitatibus repudiandae ab. Sed iste autem itaque et, consequuntur atque sunt. Atque reprehenderit temporibus consectetur ipsa dolores vel perspiciatis.</p>\r\n<p>Repellendus debitis earum blanditiis ab nostrum aliquid voluptates similique, incidunt reprehenderit modi Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur voluptatibus dicta fugiat a ipsa, ad, cum accusamus possimus dolorem incidunt suscipit harum, maiores nihil. Expedita dolor reprehenderit ullam. Velit, vero. Sit aspernatur, officia incidunt harum ad, eveniet beatae ut totam. officia esse ipsam vel maiores qui rerum voluptas, quam reiciendis error obcaecati quae, magnam laudantium. Quos unde hic fugiat.</p>', '2015-01-07', 2, 'post-5.jpg', 'lorem-ipsum-2', 0),
(22, 11, 'Berita', '<p>brita</p>', '', 'Y', '<p>brita</p>', '2015-01-08', 2, 'front-page.jpg', 'berita', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_kehutanan_data_hutan`
--
CREATE TABLE IF NOT EXISTS `view_kehutanan_data_hutan` (
`id` int(11)
,`kegiatan` varchar(100)
,`nama_kec` varchar(50)
,`desa` int(11)
,`luas` float
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_kehutanan_penutupan_lahan`
--
CREATE TABLE IF NOT EXISTS `view_kehutanan_penutupan_lahan` (
`id` int(11)
,`kawasan_hutan` varchar(100)
,`penutupan_lahan` varchar(200)
,`luas` float
);
-- --------------------------------------------------------

--
-- Structure for view `view_kehutanan_data_hutan`
--
DROP TABLE IF EXISTS `view_kehutanan_data_hutan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kehutanan_data_hutan` AS select `t1`.`id` AS `id`,`t1`.`kegiatan` AS `kegiatan`,`t4`.`nama_kec` AS `nama_kec`,`t3`.`desa` AS `desa`,`t3`.`luas` AS `luas` from (((`kehutanan_data_hutan` `t1` join `kehutanan_data_hutan_kecamatan` `t2` on((`t1`.`id` = `t2`.`id_kehutanan_data_hutan`))) join `kehutanan_data_hutan_desa` `t3` on((`t2`.`id` = `t3`.`id_kehutanan_data_hutan_kecamatan`))) join `kecamatan` `t4` on((`t2`.`id_kecamatan` = `t4`.`id_kec`)));

-- --------------------------------------------------------

--
-- Structure for view `view_kehutanan_penutupan_lahan`
--
DROP TABLE IF EXISTS `view_kehutanan_penutupan_lahan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kehutanan_penutupan_lahan` AS select `t1`.`id` AS `id`,`t1`.`kawasan_hutan` AS `kawasan_hutan`,`t2`.`penutupan_lahan` AS `penutupan_lahan`,`t2`.`luas` AS `luas` from (`kehutanan_penutupan_lahan` `t1` join `kehutanan_penutupan_lahan_data` `t2` on((`t1`.`id` = `t2`.`id_kehutanan_penutupan_lahan`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
