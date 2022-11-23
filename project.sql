-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 06:32 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT '1',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(30, 'Konser Kantata Barock 2018 berlangsung Dramatis', 'konser-kantata-barock-2018-berlangsung-dramatis', '<p>Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta, Jumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya setelah 21 tahun vakum dari dunia musik.</p>\r\n\r\n<div style=\"background-color:#ffffff; border:medium none; color:#000000; overflow:hidden; text-align:left; text-decoration:none\">&nbsp;</div>\r\n', 'konser.png', 'Y', 42, '2012-08-20', '09:12:06', 'Senin', 'admin'),
(31, 'Asunt in anim uis aute irure dolor in reprehenderit', 'asunt-in-anim-uis-aute-irure-dolor-in-reprehenderit', '<p>Asunt in anim uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum. Allamco laboris nisi ut aliquip ex ea commodo consequat. Aser velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum.</p>\r\n', 'maxresdefault.jpg', 'Y', 13, '2012-08-20', '09:40:01', 'Senin', 'admin'),
(28, 'Murah Meriah belanja puas di Pasar Asemka', 'murah-meriah-belanja-puas-di-pasar-asemka', '<p>Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.</p>\r\n', 'Murah-Meriah.jpg', 'Y', 62, '2012-08-18', '23:14:05', 'Sabtu', 'admin'),
(29, 'Karpet Raksasa dari Bunga mendapatkan rekor muri', 'karpet-raksasa-dari-bunga-mendapatkan-rekor-muri', '<p>Belgia sedang memperingati peristiwa tahunan &quot;La Fete De La Fleur&quot; atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.</p>\r\n', 'karpet.jpg', 'Y', 120, '2012-08-19', '03:02:27', 'Minggu', 'admin'),
(51, 'Jalan-jalan bersama pemenang quiz online swarakalibata', 'jalanjalan-bersama-pemenang-quiz-online-swarakalibata', '<p>Israel pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.</p>\r\n', 'quiz.jpg', 'Y', 1, '2018-04-21', '22:55:11', 'Sabtu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'toska');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(19, 'Belajar Islam menjadi lebih mudah', 'http://mycoding.net', '', '2017-05-21'),
(20, 'Kursus Web Programming Online', 'http://mycoding.net', '', '2017-05-21'),
(21, 'Pro dan Kontra Fenomena Viral di Dunia Maya', 'http://mycoding.net', '', '2017-05-21'),
(22, 'Memurnikan Aqidah Menebarkan Sunnah', 'http://mycoding.net', '', '2017-05-21'),
(23, 'Media Salafiyyah Ahlus Sunnah', 'http://mycoding.net', '', '2017-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(598, 40, 'admin', 'Tahukah kamu betapa pentingnya pemeriksaan kesehatan gigi secara berkala ?', '', '', 'tahukah-kamu-betapa-pentingnya-pemeriksaan-kesehatan-gigi-secara-berkala-', 'N', 'N', 'N', '<p><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Halo Temandinkes ✨</span><br style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Tahukah kamu betapa pentingnya pemeriksaan kesehatan gigi secara berkala ?</span><br style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">yuk sama-sama kita simak infografis diatas.&nbsp;</span><br style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">sumber : dit Promkes Kemenkes&nbsp;</span><br style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><a class=\"qi72231t nu7423ey n3hqoq4p r86q59rh b3qcqh3k fq87ekyn bdao358l fsf7x5fv rse6dlih s5oniofx m8h3af8h l7ghb35v kjdc1dyq kmwttqpk srn514ro oxkhqvkx rl78xhln nch0832m cr00lzj9 rn8ck1ys s3jn8y49 icdlwmnq  _aa9_ _a6hd\" href=\"https://www.instagram.com/explore/tags/infografis/\" role=\"link\" tabindex=\"0\" style=\"color: rgb(var(--ig-link)); background-color: rgb(255, 255, 255); outline: none; cursor: pointer; list-style: none; border: 0px; margin: 0px; padding: 0px; display: inline; touch-action: manipulation; overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">#infografis</a><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">&nbsp;</span><a class=\"qi72231t nu7423ey n3hqoq4p r86q59rh b3qcqh3k fq87ekyn bdao358l fsf7x5fv rse6dlih s5oniofx m8h3af8h l7ghb35v kjdc1dyq kmwttqpk srn514ro oxkhqvkx rl78xhln nch0832m cr00lzj9 rn8ck1ys s3jn8y49 icdlwmnq  _aa9_ _a6hd\" href=\"https://www.instagram.com/explore/tags/kesehatangigi/\" role=\"link\" tabindex=\"0\" style=\"color: rgb(var(--ig-link)); background-color: rgb(255, 255, 255); outline: none; cursor: pointer; list-style: none; border: 0px; margin: 0px; padding: 0px; display: inline; touch-action: manipulation; overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">#kesehatangigi</a><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">&nbsp;</span><a class=\"qi72231t nu7423ey n3hqoq4p r86q59rh b3qcqh3k fq87ekyn bdao358l fsf7x5fv rse6dlih s5oniofx m8h3af8h l7ghb35v kjdc1dyq kmwttqpk srn514ro oxkhqvkx rl78xhln nch0832m cr00lzj9 rn8ck1ys s3jn8y49 icdlwmnq  _aa9_ _a6hd\" href=\"https://www.instagram.com/explore/tags/dinkeskotabekasi/\" role=\"link\" tabindex=\"0\" style=\"color: rgb(var(--ig-link)); background-color: rgb(255, 255, 255); outline: none; cursor: pointer; list-style: none; border: 0px; margin: 0px; padding: 0px; display: inline; touch-action: manipulation; overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">#dinkeskotabekasi</a><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">&nbsp;</span><a class=\"qi72231t nu7423ey n3hqoq4p r86q59rh b3qcqh3k fq87ekyn bdao358l fsf7x5fv rse6dlih s5oniofx m8h3af8h l7ghb35v kjdc1dyq kmwttqpk srn514ro oxkhqvkx rl78xhln nch0832m cr00lzj9 rn8ck1ys s3jn8y49 icdlwmnq  _aa9_ _a6hd\" href=\"https://www.instagram.com/explore/tags/dinkesbekasi/\" role=\"link\" tabindex=\"0\" style=\"color: rgb(var(--ig-link)); background-color: rgb(255, 255, 255); outline: none; cursor: pointer; list-style: none; border: 0px; margin: 0px; padding: 0px; display: inline; touch-action: manipulation; overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">#dinkesbekasi</a><br></p>\r\n', '', 'Kamis', '2012-10-25', '02:13:20', 'DINKES2.jpg', 0, '', 'Y'),
(608, 31, 'admin', 'Peningkatan Kapasitas Lingkungan Hidup', '', '', 'peningkatan-kapasitas-lingkungan-hidup', 'N', 'N', 'N', '<p><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Kepala Bidang Tata Lingkungan dan Peningkatan Kapasitas Lingkungan Hidup, Kiswatinigsih didampingi Subkoordinator Inventarisasi RPPLH, KLHS dan Pemeliharaan Lingkungan Hidup, Rini Wijayanti menghadiri diskusi agen perubahan sebagai penggerak restorasi ekosistem pengelolaan lingkungan hidup merupakan upaya mengembalikan kondisi lingkungan yang sudah mengalami degradasi akibat pencemaran (air,udara dan tanah) dan menyebabkan perubahan iklim. Dalam hal tersebut perlu dilakukan komitmen dan aksi bersama stakeholder, acara tersebut bertempat di Kodam Jaya Jayakarta - Jakarta Timur.</span><br></p>\r\n', '', 'Senin', '2019-07-15', '07:00:01', '316146649_698957835094042_2682193528332650798_n-_1_.jpg', 0, 'terkini,kesehatan', 'Y'),
(612, 36, 'admin', 'Google Pakai Motorola untuk Gugat Apple', '', '', 'google-pakai-motorola-untuk-gugat-apple', 'N', 'N', 'N', '<p>Jakarta - Perang gugatan antara para produsen smartphone belum menunjukkan tanda berakhir. Yang terbaru, Motorola menuding Apple melanggar tujuh patennya.<br />\r\n<br />\r\nVendor ponsel yang diakuisisi Google pun meminta pihak berwewenang untuk memblokir impor iPhone, iPad dan komputer Mac. Perangkat-perangkat tersebut diminta dilarang beredar di Amerika Serikat.<br />\r\n<br />\r\nKomplain Motorola didaftarkan ke lembaga International Trade Comission (ITC). Paten yang dipermasalahkan terkait location reminders, notifikasi email, pemutar video dan sebagainya.<br />\r\n<br />\r\n&quot;Kami ingin menyelesaikan persoalan paten tersebut, namun ketidakmauan Apple untuk melisensinya membuat kami tidak punya pilihan selain mempertahankan inovasi kami,&quot; demikian pernyataan Motorola yang TerasJakarta kutip dari DigitalTrends, Minggu (19/8/2012).<br />\r\n<br />\r\nHal ini dinilai sebagai perang antara Google dan Apple, dengan Google menggunakan paten Motorola untuk menyerang Apple. Terlebih lagi, Apple banyak memperkarakan vendor Android seperti Samsung dan juga Motorola sendiri.</p>\r\n', '', 'Senin', '2012-08-20', '04:49:48', '', 186879, 'teknologi', 'Y'),
(613, 36, 'admin', 'Lenovo Yakin Kalahkan Microsoft Surface', '', '', 'lenovo-yakin-kalahkan-microsoft-surface', 'N', 'N', 'N', '<p>Jakarta - Microsoft akan menjual tablet produksi sendiri yang bernama Surface. Beberapa mitra produsen PC kabarnya tak senang dengan kehadiran Surface yang dianggap sebagai pesaing. Namun Lenovo percaya diri tablet buatannya akan mampu mengalahkan Surface.<br />\r\n<br />\r\n&quot;Microsoft memang kuat di software, namun saya tidak percaya mereka bisa menyediakan hardware terbaik di dunia. Sedangkan Lenovo bisa,&quot; klaim CEO Lenovo, Yang Yuanqing.<br />\r\n<br />\r\n&quot;Meskipun kami tidak suka Microsoft membuat hardware, namun meskipun mereka memulai bisnis hardware ini, kami pikir itu hanya berarti satu kompetitor bertambah lagi,&quot; imbuhnya, yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\nSebelumnya, kehadiran Microsoft Surface mendapat perlawanan dari Acer. Vendor komputer asal Taiwan itu menyatakan bahwa kedatangan Surface akan berdampak negatif bagi ekosistem industri PC.<br />\r\n<br />\r\nDi masa lalu, Microsoft memang selalu bermitra dengan vendor PC untuk membuat komputer berbasis sistem operasi Windows. Namun untuk Windows 8, mereka memutuskan membuat tablet PC sendiri.<br />\r\n<br />\r\nBahkan, ada kabar yang beredar bahwa Surface akan dijual hanya USD 199. Jika benar, bisa jadi Surface sukses besar mengingat harganya yang sangat terjangkau. Kabarnya, Surface akan dipasarkan sekitar bulan Oktober mendatang, bersamaan dengan perkenalan resmi OS Windows 8.</p>\r\n', '', 'Senin', '2012-08-20', '04:53:44', '', 186879, 'teknologi', 'Y'),
(625, 41, 'admin', 'Ghazali: Putaran Kedua Pilkada DKI Ketat', '', '', 'ghazali-putaran-kedua-pilkada-dki-ketat', 'N', 'Y', 'N', '<p>Jakata - Pengamat politik dari Universitas Indonesia, Effendi Ghazali, mengungkapkan pada putaran kedua pemilihan kepala daerah (Pilkada) pada September mendatang, akan terjadi persaingan ketat antara pasangan Joko Widodo-Basuki T Purnaka dengan pasangan Fauzi Bowo-Nachrowi Ramli.<br />\r\n<br />\r\n&ldquo;Kami telah mengadakan survey internal, dan hasilnya, akan terjadi persaingan ketat antara Pak Jokowi dan Pak Fauzi Bowo. Tidak seperti hasil sebelumnya yang memang jauh jarak perolehannya,&rdquo; ujarnya ditemui di acara open house yang diadakan Gubernur Fauzi Bowo, di rumah dinasnya Jalan Taman Suropati No. 7, Jakarta Pusat, Minggu (19/08/2012).<br />\r\n<br />\r\nMeski demikian, Effendi urung menyebutkan nilai dari survey yang dilakukan oleh pihaknya, mengingat masih ada margin eror yang besar dari 450 responden yang dilakukan survey. &ldquo;Siapa yang lebih unggul, belum bisa saya kasih tahu sekarang, karena survey kami agak besar margin errornya,&rdquo; jelasnya.<br />\r\n<br />\r\nMenyinggung maraknya penggunaan isu SARA yang terjadi selama bulan ramadhan kemarin, Effendi angkat bicara. Menurutnya, penggunaan isu SARA yang dilakukan oleh pihak-pihak tertentu sudah menimbulkan dampak yang besar, baik di kalangan masyarakat bawah maupun untuk calon pasangan. &ldquo;Itu jelas ada dampaknya. Bahkan pengaruhnya cukup besar untuk pilkada putaran kedua nanti,&rdquo; tandasnya.</p>\r\n', 'Joko Widodo (kiri), Fauzi Bowo (kanan)', 'Minggu', '2018-04-22', '07:41:04', 'efendi_gazali.jpg', 186879, 'metropolitan', 'Y'),
(624, 41, 'admin', 'Tuntut THR, Ratusan Pekerja Transjakarta Mogok', '', '', 'tuntut-thr-ratusan-pekerja-transjakarta-mogok', 'N', 'N', 'N', '<p>Jakarta - Ratusan pekerja bus koridor I (Blok M-Kota) dan X (Cililitan-Tanjung Priok) mogok bekerja. pramudi, teknisi, dan petugas keamanan menuntut kenaikan upah dan pembayaran Tunjangan Hari Raya (THR). Mereka di depan Pool Pinang Ranti, Jalan Raya Pondok Gede, Pinang Ranti, Makassar, Jakarta Timur, sambil berorasi membentangkan spanduk bertemakan agar PT Jakarta Expres Trans (JET) membayar THR.<br />\r\n<br />\r\nMenurut&nbsp; pramudi Bus TransJakarta Koridor I, Maya, pihaknya terpaksa melakukan mogok operasi karena pihak perusahaan tidak membayarkan kewajibannya memberikan THR.<br />\r\n<br />\r\n&quot;Sementara, anak-anak sudah menunggu di rumah ingin jalan-jalan ke mal untuk beli baju Lebaran,&quot; ujarnya kepada wartawan, Senin (13/08/2012).<br />\r\n<br />\r\nSedangkan Abdul Chakim berharap, selain memberikan THR perusahaan PT JET juga menaikan upah. Pasalnya, untuk Pramudi yang di bawah manajeman PT JET upahnya bervariasi mulai dari Rp2,4 juta-Rp2,8 juta. Sedangkan pramudi yang berada di bawah manajemen gajinya mencapai Rp5,3 juta.<br />\r\n<br />\r\n&quot;THR kami segera terbayar dan gaji kami dinaikkan sejajar dengan pramudi dari koridor lainnya,&quot; imbuhnya.<br />\r\n<br />\r\nHingga bubar aksi berjalan berdamai, pihak perusahaan berjanji akan membayarka THR dan menaikan upah para pekerja bus Transjakarta.</p>\r\n', '', 'Minggu', '2018-04-22', '07:42:01', 'bus-transjakarta.jpg', 186879, 'metropolitan', 'Y'),
(645, 47, 'admin', 'Korban dan Pelaku Pemerkosaan parah menderita kelainan', 'Seleksi Calon Hakim Agung', '', 'korban-dan-pelaku-pemerkosaan-parah-menderita-kelainan', 'N', 'N', 'Y', '<p>Calon hakim agung Muhammad Daming Sanusi menyatakan, hukuman mati tidak layak diberlakukan bagi pelaku pemerkosaan. Penjelasannya soal ini mengundang tawa sejumlah anggota Komisi III saat berlangsung fit and proper test hakim agung di Komisi III DPR pada Senin (14/1/2013) ini.</p>\r\n\r\n<p>&quot;Bagaimana menurut Anda, apabila kasus perkosaan ini dibuat menjadi hukuman mati?&quot; tanya anggota Komisi III dari Fraksi PAN, Andi Azhar, ketika itu kepada Daming.</p>\r\n\r\n<p>Daming menjawab, &quot;Yang diperkosa dengan yang memerkosa ini sama-sama menikmati. Jadi, harus pikir-pikir terhadap hukuman mati.&quot;</p>\r\n\r\n<p>Jawaban Daming ini pun langsung mengundang tawa, tetapi tidak sedikit yang mencibir pernyataannya. Dijumpai seusai menjalani fit and proper test, Daming berdalih bahwa pernyataannya itu hanya untuk mencairkan suasana.</p>\r\n\r\n<p>&quot;Kita tadi terlalu tegang, jadi supaya tidak terlalu tegang,&quot; imbuhnya.</p>\r\n\r\n<p>Menurut Daming, hukuman mati harus dipertimbangkan baik-baik. Ia beralasan, dirinya belum memberikan jawaban tegas apakah ia mendukung atau tidak penerapan hukuman mati bagi pelaku pemerkosaan. &quot;Tentu kita harus pertimbangkan baik-baik kasus tertentu, seperti narkoba, korupsi, saya setuju. Tapi untuk kasus pemerkosan, harus dipertimbangkan dulu. Tadi saya belum memberikan jawaban yang tegas,&quot; kata Daming.</p>\r\n\r\n<p>Menanggapi pernyataan itu, anggota Komisi III lain dari Fraksi Partai Demokrat, Himmatul Aliya Setiawati, menilai candaan Daming sangat tidak pantas.</p>\r\n\r\n<p>&quot;Saya kira candaannya tidak pas. Saya setuju ada hukuman mati ya,&quot; ucap Aliya.</p>\r\n\r\n<p>Meski menganggap tak pantas, ia menilai jawaban Daming sudah memenuhi kriteria yang diharapkan dari seorang hakim agung. &quot;Dari Fraksi Gerindra menyatakan tidak akan memilih, tapi kalau saya sih soal memilih kita lihat nilai-nilai keseluruhannya,&quot; tutur Aliya. (Sumber: kompas.com</p>\r\n', '', 'Minggu', '2018-06-03', '15:37:13', 'perkosaan.jpg', 186879, 'hukum', 'Y'),
(603, 19, 'admin', 'Pentingnya olahraga untuk menjaga kesehatan tubuh kita', '', '', 'pentingnya-olahraga-untuk-menjaga-kesehatan-tubuh-kita', 'Y', 'Y', 'N', '<span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Tahu tidak kalau berolahraga setiap hari ini penting loh. Meskipun padatnya kesibukan, olahraga/aktivitas fisik ringan tetap harus dilakukan untuk menjaga kesehatan agar tubuh fit dan kebugar.</span><br style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">yuk sama-sama simak infografis diatas mengenai pentingnya olahraga untuk kesehatan tubuh.</span><br style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"caret-color: rgb(38, 38, 38); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Sehat Selalu</span>', '', 'Sabtu', '2012-11-17', '03:27:34', 'SEHAT.jpg', 0, 'nasional,terkini,uptd,kesehatan,opd', 'Y'),
(696, 22, 'admin', 'Selamat Hari Pahlawan', '', '', 'selamat-hari-pahlawan', 'N', 'N', 'Y', '<p><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Mari bersama kita meneladani dan mengimplementasikan nilai-nilai luhur pahlawan dalam kehidupan sehari-hari.</span><br style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Selamat Hari Pahlawan, Pahlawanku, Teladanku!</span><br style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"></p>', '', 'Kamis', '2020-12-17', '20:13:42', '312648108_1536639233424620_2690750988769835026_n.jpg', 0, 'nasional', 'Y'),
(605, 39, 'admin', 'Update Laporan Covid 19 Per 21 November 2022', '', '', 'update-laporan-covid-19-per-21-november-2022', 'Y', 'N', 'N', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">KOTA BEKASI -&nbsp; Selasa, 22 November 2022</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Laporan perkembangan Covid 19 Kota Bekasi, Dinas Kesehatan Kota Bekasi mengeluarkan update pertanggal 21 November 2022. Kota Bekasi masuk dalam PPKM Level 1.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Total Kasus Terkonfirmasi baru pada laporan data Dinas Kesehatan Kota Bekasi pada tanggal 21 November 2022, dilaporkan sebagai berikut:</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Total Kasus Kumulatif (187.276&nbsp; Kasus)</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Total Kasus Konfirmasi Baru (192 Kasus)</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Total Kasus Aktif (1.801 Kasus)</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Total Kasus Sembuh (184.288Kasus)</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Total Sembuh Hari Ini (145 Kasus)</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Total Kasus Kematian (1187 Kasus), terdata laporan kematian akibat Covid 19 pada tanggal 1 Januari - 21 November 2022 sebanyak 47 Jiwa.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Keterisian Bed Occupancy Rate (BOR) Tempat Tidur Rumah Sakit Di Kota Bekasi tertanggal 19 November 2022 dilaporkan BOR Tempat Tidur (TT) isolasi (17,00 %) sedangkan BOR TT ICU (4,81 %). Positif Rate PCR 15,43% dan Positif Rate Antigen 10,34%.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Untuk capaian Vaksinasi di Kota Bekasi dilaporkan per tanggal 21 November 2022, sebagai berikut:</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">1. Berdasarkan Fasilitas Kesehatan dengan data sebagai berikut :</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Total Dosis Pertama Berjumlah 1,916.786 (95.08%), Lanjut Usia 138,796 (88.89%), dan Anak - Anak 223,166 (94.04%).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Total Dosis 2 dengan capaian total 1,722,423 (85.44%), Lanjut Usia 113,794 (72.88%), dan Anak - Anak 184,378 (77,69%).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Total Dosis 3 dengan capaian total 956,432 (54,03%), Lanjut Usia 95,564 (61.20%), dan Anak - Anak 2 (0%).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">2. Berdasarkan *e-KTP Kota Bekasi dengan data laporan sebagai berikut :</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Dosis 1 dengan capaian 1,999,442 (99.18%), Lansia 167,594 (107.33%), dan Anak - Anak 202,285 (85.24%).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Dosis 2 dengan capaian 1,748,161 (86.71%),&nbsp; Lansia 138,727 (88.84%), dan Anak - Anak 167,438 (70.56%).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">• Dosis 3 dengan capaian 925,240 (52.24%), Lansia 93,868 (60.11%), dan Anak - Anak 2 (0%).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Ketersediaan (Stock) Vaksin Covid 19 di Kota Bekasi Per 14 November 2022 dengan jumlah satuan dosis total 7,122 Dosis. Dengan kriteria jenis dosis antara lain :</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">1. Sinovac (0 Dosis)</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">2. Pfizer (7.122 Dosis)</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Ketersediaan stok Swab PCR pertanggal 3 Agustus 2022 berjumlah 3,842 pcs.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Ketersediaan stok Rapid Antigen pertanggal 3 Agustus 2022 berjumlah 58.292 pcs.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Sumber : Data Dinas Kesehatan Kota Bekasi.</span><br></p>\r\n', 'Brittni Colleps (foto:abc)', 'Minggu', '2018-04-22', '07:24:45', 'aa728674f45433e6d2c7d06758e4ccd9.jpg', 0, 'nasional,terkini,uptd,kesehatan,opd', 'Y'),
(607, 47, 'admin', 'Moskow Larang Parade Selama 100 Tahun', '', '', 'moskow-larang-parade-selama-100-tahun', 'Y', 'Y', 'N', '<p>Pengadilan di Moskow mengukuhkan keputusan untuk melarang parade homoseksual untuk seratus tahun ke depan.<br />\r\n<br />\r\nLangkah ini dilakukan menyusul upaya pegiat hak homoseksual Rusia, Nikolay Alexeyev untuk membatalkan keputusan pemerintah kota melarang parade.<br />\r\n<br />\r\nIa meminta hak melakukan parade selama 100 tahun ke depan.<br />\r\n<br />\r\nAlexeyev juga menentang larangan kota St Petersburgh untuk menyebarkan &quot;propaganda homoseksual.&quot;</p>\r\n\r\n<p>Mahkamah hak asasi Eropa telah meminta pemerintah Rusia untuk membayar kerugian kepada Alexeyev.</p>\r\n\r\n<p>Alexeyev mengatakan Jumat (17/08) ia akan kembali ke Mahkamah Eropa untuk meminta agar menetapkan bahwa larangan itu tidak adil.</p>\r\n\r\n<p>Pemerintah kota Moskow menyatakan parade gay akan menimbulkan risiko gangguan ketertiban umum.</p>\r\n\r\n<p>Pemkot juga mengatakan sebagian besar warga Moskow menentang kegiatan itu.</p>\r\n\r\n<p>Bulan September lalu, Dewan Eropa -pengawasan HAM di Eropa- akan meneliti tanggapan Rusia atas keputusan Mahkamah Eropa sebelumnya tentang hak gay, menurut media Rusia.</p>\r\n\r\n<p>Bulan Oktober 2010, Mahkamah Eropa mengatakan Rusia melakukan diskriminasi terhadap Alexeyev karena orientasi seksualnya.</p>\r\n\r\n<p>Mahkamah saat itu menangani larangan Moskow atas parade gay antara tahun 2006-2008.</p>\r\n', 'Nikolay Alexeye. ', 'Minggu', '2018-04-22', '07:20:38', 'moscow.jpg', 186880, 'internasional', 'Y'),
(630, 36, 'admin', 'Bos Yahoo Bajak 2 Karyawan Google tahun 2018', '', '', 'bos-yahoo-bajak-2-karyawan-google-tahun-2018', 'N', 'N', 'N', '<p>Marissa Mayer, sang CEO Yahoo kembali memperkuat &#39;pasukannya&#39;. Pernah bernaung di bawah bendera Google, Mayer pun membajak dua karyawan dari kantor terdahulunya tersebut.<br />\r\n<br />\r\nWanita yang diangkat menjadi CEO perusahaan internet pada bulan Juli lalu ini telah mempekerjakan mantan<em> Product Marketing Manager</em> Google yang bernama Andrew Schulte. Ia kini menjadi kepala staff di tubuh Yahoo.<br />\r\n<br />\r\nSchulte bergabung dengan Google pada tahun 2007. Ia sempat menangani kampanye marketing Google+. Penegasan kepindahan dirinya ia tuliskan di akun Twitter maupun profil LinkedInnya.<br />\r\n<br />\r\nSebelum Schulte, Mayer sudah membajak Anne Espiritu di mana duluanya bekerja sebagai<em> consumer technology PR </em>di Google, demikian dikutip dari <em>Cnet</em>, Senin (20/8/2012).<br />\r\n<br />\r\nMayer memang tengah sibuk menata struktur manajemen Yahoo. Perusahaan ini kabarnya juga tengah berburu <em>Chief Operating Officer </em>(COO) dengan pengalaman di bidang manajemen finansial dan restrukturisasi perusahaan.</p>\r\n', '', 'Minggu', '2018-04-22', '11:05:22', 'Marissa_Mayer.jpg', 186879, 'teknologi', 'Y'),
(631, 19, 'admin', 'Plt Ketua TP PKK Buka Pembinaan Kader Posyandu', '', '', 'plt-ketua-tp-pkk-buka-pembinaan-kader-posyandu', 'N', 'N', 'N', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Pelaksana tugas(Plt) Ketua TP PKK Wiwiek Hargono Tri Adhianto buka</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Pembinaan Kader Posyandu se Kecamatan Bekasi Selatan. Kegiatan pembinaan tersebut mengusung tema “Optimalisasi Peran Kader Posyandu Dalam Mendukung Keluarga Sehat Dan Mandiri”</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dalam sambutannya Plt Ketua TP PKK Wiwiek Hargono Tri Adhianto mengatakan, Pos Pelayanan Terpadu (Posyandu) kini menjadi bagian yang tak terpisahkan bagi masyarakat, terutama bagi keluarga yang memiliki balita dan ingin pertumbuhan balitanya semakin sehat. Oleh sebab itu, mutu pelayanan Posyandu harus semakin ditingkatkan.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Wiwiek turut mengapresiasi serta menyambut baik program pembinaan kader Posyandu yang telah diselenggarakan oleh Kecamatan Bekasi Selatan.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">“Sangat mengapresiasi dan menyambut baik terselenggaranya workshop ini, kegiatan ini dapat membuka wawasan serta dapat menanamkan nilai-nilai positif guna mewujudkan keharmonisan keluarga dan kemandirian keluarga,” jelas Wiwiek</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dalam sambutannya Wiwiek turut menyampaikan 4 berdaya perempuan yang secara konsisten terus digaungkan yakni perempuan Berdaya Ideologi, Berdaya Ekonomi, Berdaya Spiritual, Berdaya Psikologi.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Wiwiek juga mengajak ibu-ibu untuk membina rumah tangga dengan baik sehingga kelak dapat menciptakan generasi penerus yang berkualitas.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Membina generasi kita dengan baik sehingga kelak menjadi generasi penerus yang berkualitas. Peran kader posyandu yang merupakan pahlawan dalam mewujudkan generasi bangsa yang sehat, kader posyandu-lah ujung tombak pembentukan generasi bangsa,\"jelas Wiwiek Hargono Tri Adhianto</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Diakhir sambutan Wiwiek sangat berharap kepada para kader posyandu untuk terus gigih dalam membantu masyarakat serta melakukan berbagai edukasi ke lingkungan.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">“Kader-kader hebat ini, pastinya bisa menguasai materi yang akan disampaikan ke masyarakat, secara berkelanjutan melakukan edukasi dan mencerdaskan masyarakat, tentunya kader Posyandu tidak dapat diabaikan sebagai relawan yang memantau langsung kesehatan dan pertumbuhan anak serta kesehatan ibunya di setiap lingkungan, sehingga dari merekalah ibu-ibu rumah tangga memahami pentingnya ASI, asupan gizi, pentingnya memonitor berat badan dan tinggi badan dan lain-lain,”kata Wiwiek Hargono Tri Adhianto</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tampak hadir Camat Bekasi Selatan Karya Sukmajaya, Ketua TP PKK Bekasi Selatan Sarnih Karya Sukmajaya, Kasie Pemberdayaan Masyarakat Kecamatan Bekasi Selatan Didik Eko Pramono, Para Lurah beserta Ketua TP PKK se Kecamatan Bekasi Selatan, Ketua Posyandu dan para kader se Kecamatan Bekasi Selatan. (EZ/HUMAS)</span><br></p>\r\n', '', 'Minggu', '2018-04-22', '11:04:06', 'plt6.jpg', 0, 'nasional,terkini,uptd,opd', 'Y'),
(632, 36, 'admin', 'Kemungkinan Kodak Batal Jual Paten', '', '', 'kemungkinan-kodak-batal-jual-paten', 'N', 'N', 'N', '<p>New York - Kodak berencana menjual sebagian dari paten-patennya guna melindungi perusahaannya dari kebangkrutan. Namun belakangan, sang pionir di dunia fotografi ini menimbang ulang rencana tersebut.<br />\r\n<br />\r\nDilaporkan bahwa Kodak bisa jadi hanya menjual sebagian paten digital imaging yang hendak dilepas, atau malah tidak menjualnya satupun, demikian seperti dikutip detikINET dari AllThingsD, Senin (20/8/2012).<br />\r\n<br />\r\nKabar ini menyusul pemberitaan sebelumnya yang mengatakan bahwa Kodak telah menunda pengumuman hasil penjualan patennya. &quot;Kodak belum mencapai kepastian atau persetujuan untuk menjual portofolio paten digital imagingnya, &quot;ujar Kodak dalam sebuah pernyataan.<br />\r\n<br />\r\nSuara resmi tersebut menyugestikan bahwa lelang paten yang sudah berjalan tidak berjalan sesuai harapan perusahaan yang berbasis di Rochester, New York, Amerika Serikat ini.<br />\r\n<br />\r\nSebuah sumber yang mengetahui hal itu mengatakan bahwa tawaran yang datang untuk portofolio ini hanya berada di bawah angka USD 2 miliar.<br />\r\n<br />\r\nSebelumnya, Wall Street Journal pernah melaporkan bahwa tawaran awal datang dari dua konsorsium, di mana dipimpin oleh perusahaan raksasa, Google dan Apple.<br />\r\n<br />\r\nSeperti diketahui, Kodak berjuang keras menyelematkan &#39;nyawa&#39; perusahaan. Selain menjual sebagian dari 1.100 patennya, Kodak juga telah keluar dari bisnis kamera dan beralih ke digital printing serta penciptaan aplikasi-aplikasi baru di bidang tersebut.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:57:24', 'kodak.jpg', 186879, 'teknologi', 'Y'),
(635, 47, 'admin', 'Foto Bugil Pangeran Harry Beredar di dunia international', '', '', 'foto-bugil-pangeran-harry-beredar-di-dunia-international', 'N', 'N', 'N', '<p>Las Vegas - Pangeran Harry dari Inggris kembali membuat sensasi. Kali ini TMZ, sebuah situs hiburan Amerika Serikat, merilis foto-foto bugil adik Pangeran William itu, Selasa (21/8/2012).<br />\r\n<br />\r\nMenurut TMZ, foto itu diambil ketika putra kedua Pangeran Charles itu berpesta dengan teman-temannya di kamar hotelnya di Las Vegas, Jumat (18/8/2012).<br />\r\n<br />\r\nMengutip sumbernya, TMZ melaporkan, Harry dan teman-temannya turun ke bar hotel dan bertemu sejumlah perempuan, yang kemudian diundangnya ke kamar suite-nya di hotel itu.<br />\r\n<br />\r\nSuasana pun menjadi liar karena anak-anak muda itu mengadakan permainan biliar. Dalam aturan permainan itu, yang kalah harus melepas pakaian, sampai akhirnya semua peserta bugil.<br />\r\n<br />\r\nBeberapa orang yang hadir di pesta itu memotret kehebohan pesta tersebut. Dalam salah satu foto, tampak Harry dalam keadaan telanjang bulat dengan kedua tangan menutupi alat vitalnya. Sementara itu, foto lainnya menunjukkan Harry memeluk seorang perempuan yang juga terlihat bugil.<br />\r\n<br />\r\nKepada TMZ, Keluarga Kerajaan Inggris mengatakan, &quot;Kami tidak berkomentar tentang foto-foto itu saat ini.&quot;</p>\r\n', '', 'Minggu', '2018-04-22', '08:14:38', 'meghan-markle-dan-pangeran-harry.jpg', 186879, 'internasional', 'Y'),
(642, 39, 'admin', 'PLT. WALI KOTA MELAKUKAN PEMBINAAN DAN RAMAH TAMAH DENGAN PETUGAS KEBERSIHAN LINGKUNGAN HIDUP', '', '', 'plt-wali-kota-melakukan-pembinaan-dan-ramah-tamah-dengan-petugas-kebersihan-lingkungan-hidup', 'Y', 'N', 'N', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Sebanyak seribu tujuh ratus petugas kebersihan dari Dinas Lingkungkan Hidup terdiri dari 18 Uptd dikumpulkan untuk dilakukan pembinaan dalam rangka memberikan apresiasi dan motivasi yang dilakukan di Gedung Graha Bintang Kelurahan Cimuning, Rabu (02/11).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tampak hadir PLT. Wali Kota Bekasi Tri Adhianto, Kepala Dinas Lingkungan Hidup Yudianto, Sekcam Mustikajaya, Kabid LH, Kepala Uptd LH se-Kota Bekasi, dan segenap petugas kebersihan Lingkungan Hidup.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Yudianto selaku Kepala Dinas Lingkungan Hidup menyampaikan sebagai Kepala Dinas yang baru, menyatakan siap mendedikasikan diri untuk kemajuan Kota Bekasi, Khususnya Dinas Lingkungan Hidup, dan berharap Kepala UPTD dan segenap petugas LH untuk dapat menerima kehadirannya dan siap untuk bersinergi.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Saya sebagai Kepala Dinas LH yang baru, berharap bisa diterima, mari sama-sama bersinergi, saya menyatakan siap mendedikasikan diri saya untuk kemajuan Kota Bekasi khususnya Kemajuan dan kesejahteraan Dinas Lingkungan Hidup,\" pungkas Yudianto Kadis LH Kota Bekasi.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tri Adhianto selaku PLT. Wali Kota Bekasi juga berkesempatan memberikan sambutan kepada peserta yang hadir, awal sambutan dimulai dengan memberikan apresiasi Dua Unit Sepeda diberikan kepada Pak Saimi dan Pak Tarwoto yang sudah mengabdikan diri selama 30 tahun pada Pemerintahan.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Sebelumnya saya mau apresiasi kepada pak saimi dan pak tarwoto selaku petugas kebersihan dari Uptd yang sudah mendedikasikan diri untuk Kota Bekasi selama 30 tahun, sudah&nbsp; bekerja untuk Bekasi sejak Kota Bekasi masih menjadi kabupaten,\" Pungkas Tri Adhianto,</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dalam sambutan Tri juga menyampaikan, para petugas LH juga berhak untuk meningkatkan kualitas taraf kehidupan, yaitu dengan melanjutkan pendidikan meski hanya dengan sekolah paket, selain wawasan bertambah, dengan melanjutkan pendidikan kualitas SDM pun akan meningkat.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Saya berharap usai pembinaan dari sini, kita punya mind set baru, semangat baru, motivasi untuk jadi lebih baik, Bekerja menjadi lebih rajin dari sebelumnya, dan untuk rekan-rekan yang belum melanjutkan sekolah, silahkan berkoordinasi dengan kepala uptd untuk bisa melanjutkan sekolah, selain wawasan kita bertambah, mutu kualitas kita pun meningkat, dan ini untuk hidup yang lebih baik,\" Pungkas Tri Adhianto.</span><br></p>\r\n', '', 'Minggu', '2018-04-22', '07:17:57', 'plt.jpg', 0, 'terkini,uptd', 'Y'),
(643, 42, 'admin', 'Fatima Nabil, Presenter TV Berjilbab Pertama di Mesir', '', '', 'fatima-nabil-presenter-tv-berjilbab-pertama-di-mesir', 'N', 'N', 'N', '<p>Kairo - Fatima Nabil mencatat sejarah. Ia menjadi presenter pertama yang berjilbab yang muncul di televisi milik pemerintah Mesir. Dalam balutan jilbab berwarna krem, dan jas hitam Fatima membacakan buletin berita siang, Minggu 2 September 2012.&nbsp;</p>\r\n\r\n<p>&quot;Akhirnya revolusi juga terjadi di televisi milik pemerintah,&quot; kata Nabil. Ia berharap kemunculannya ini diikuti tak hanya presenter berita tapi juga presenter cuaca dan lainnya.</p>\r\n\r\n<p>&quot;Saat ini, standar bukan tergantung pada jilbab, yang sebenarnya merupakan pilihan pribadi setiap perempuan. Tapi lebih pada profesionalitas dan intelektual,&quot; ujarnya.</p>\r\n\r\n<p>Sejak televisi pemerintah ini berdiri tahun 1960, dibawah rejim Presiden Hosni Mubarok, perempuan yang mengenakan jilbab dilarang menjadi presenter. Aturan ini sempat ditentang sejumlah aktivis hak asasi dan kelompok liberal, namun kandas.</p>\r\n\r\n<p>Pemerintah baru yang dipimpin Presiden Mohammed Mursi, mencabut aturan ini. Menteri Informasi Baru Saleh Abdel-Makshoud mengatakan sudah banyak perempuan berjilbab yang muncul sebagai presenter di channel-channel televisi Arab dan internasional. Jadi perubahan ini tak menjadi masalah apalagi saat ini hampir 70% perempuan Mesir mengenakan jilbab.</p>\r\n\r\n<p>Petinggi stasiun televisi tersebut mengatakan munculnya Nabila bisa membangkitkan semangat perempuan lain yang ingin tetap mempertahankan jilbab mereka tanpa harus takut kehilangan pekerjaan. (Sumber: Tempo.co)</p>\r\n', 'Fatima Nabil', 'Minggu', '2018-04-22', '11:10:10', 'fatima_nabil.jpg', 186879, 'internasional', 'Y'),
(652, 54, 'admin', 'SELAMAT HARI BUMI', '', '', 'selamat-hari-bumi', 'Y', 'N', 'N', '<h1 style=\"text-align: left; font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; color: rgb(0, 0, 0);\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">\"Bumi adalah satu-satunya dunia, sejauh ini, yang diketahui memiliki kehidupan. Tidak ada tempat lain, setidaknya sampai beberapa waktu ke depan, yang bisa dijadikan tempat tinggal. Ada yang bisa kita kunjungi, tetapi belum ada yang bisa kita tinggali. Suka atau tidak, untuk saat ini, Bumi adalah satu-satunya tempat kita hidup\" (Carl Sagan).</span></h1>\r\n', '', 'Jumat', '2013-01-25', '00:58:26', '2493887170.jpg', 0, 'terkini', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(653, 41, 'admin', 'Ketika kata Ciyus Terucap dari Mulut Jokowi', '', '', 'ketika-kata-ciyus-terucap-dari-mulut-jokowi', 'N', 'Y', 'N', '<p>Kata <em>ciyus</em> atau serius sering terdengar diucapkan anak-anak zaman sekarang yang sering dijuluki anak baru gede (ABG). Nah, ketika bahasa gaul itu diucapkan oleh Joko Widodo, para pewarta yang bertugas meliput kegiatan Gubernur DKI Jakarta itu tak bisa menahan tawa karena nadanya yang sedikit medok.</p>\r\n\r\n<p>Terhitung sudah dua kali Jokowi melontarkan kata itu kepada wartawan. Pertama, saat Jumat (18/1/2013) malam lalu, ketika Jokowi meninjau perbaikan Tanggul Kanal Banjir Barat (KBB) di Latuharhary, Jakarta Pusat. Seharian raut muka Jokowi begitu serius dan tegang karena pengerjaan tanggul yang masih belum selesai, ditambah hujan deras yang terus mengguyur Ibu Kota. Pendek kata, Jokowi tampak sangat suntuk dan senyum khasnya pun tak terpancar dari dirinya.</p>\r\n\r\n<p>Saat itu, Jokowi menghampiri wartawan yang sudah menunggunya di luar rel kereta api yang terputus. Lantas para wartawan berniat mencairkan suasana dengan melontarkan pertanyaan-pertanyaan konyol kepada Jokowi, seperti &quot;Apabila tanggul selesai, ditandai oleh pemotongan pita di Sency (Senayan City)?&quot;. Mendengar pertanyaan itu, senyum yang hilang dari Jokowi akhirnya muncul kembali.</p>\r\n\r\n<p>Seraya mengernyitkan dahinya, Jokowi bertanya, &quot;Apa itu Sency?&quot; Wartawan pun langsung menjelaskan kalau Sency itu adalah kependekan dari Senayan City. Mengetahui hal tersebut, Jokowi pun tertawa dan mengatakan kalau berbicara hendaknya jangan disingkat-singkat. &quot;Oh, <em>kirain </em>saya sensitif itu maksudnya. <em>Mbok</em>, jangan disingkat-singkat, <em>tho</em>,&quot; kata Jokowi.</p>\r\n\r\n<p>Pembicaraan itu pula yang membuat Jokowi melontarkan kata <em>ciyus</em> dan <em>miapah</em> kepada wartawan. &quot;Kalau <em>ciyus miapah </em>itu apa? Ha-ha-ha,&quot; kata Jokowi yang membuat suasana lokasi tersebut yang awalnya tegang menjadi ramai.</p>\r\n\r\n<p>Kata <em>ciyus </em>kembali diucapkan Jokowi, Selasa (22/1/2013) kemarin, saat berbincang dengan wartawan di Balaikota DKI. Bahasa gaul itu keluar kembali setelah ia ditanya terkait kinerjanya 100 hari.</p>\r\n\r\n<p>Saat itu, Jokowi ditanya masalah Jakarta apa yang membuat Jokowi pusing. Jokowi pun menjawab tak ada persoalan yang membuatnya pusing karena ia telah menghadapi masalah itu sejak ia memimpin Solo selama delapan tahun. Namun, ada satu masa Jokowi mengaku tidak memiliki semangat. &quot;Yaitu kalau pas B sama pas T. Apa itu? Pokoknya pas B sama pas T. <em>Ciyuss</em>,&quot; canda Jokowi yang mengundang tawa para wartawan. (sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:36:47', 'jokowi_ciyus.jpg', 186879, 'metropolitan', 'Y'),
(655, 19, 'admin', 'Plt. Wali Kota Bekasi Lantik Direktur PD Migas Kota Bekasi, Apung Widadi SE', '', '', 'plt-wali-kota-bekasi-lantik-direktur-pd-migas-kota-bekasi-apung-widadi-se', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Pelaksana Tugas (Plt.) Wali Kota Bekasi, Tri Adhianto pada apel melantik Direktur Perusahaan Daerah (PD) Minyak dan Gas Bumi untuk masa periode 2022 - 2027 pada hari ini. Apung Widadi, SE secara resmi menjabat sebagai direktur PD Migas Kota Bekasi dengan Keputusan Wali Kota Bekasi bernomor surat pengangkatan yakni 539/Kep.459-Ek/XI/2022.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Pengambilan sumpah dilakukan pada saat apel pagi yang disaksikan langsung oleh para peserta apel dan para pejabat Pemerintah Kota Bekasi serta jajaran dari PD Migas Kota Bekasi.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dengan membubuhi tandatangan dan melantik Direktur, Plt. Wali Kota Bekasi berharap kemajuan dari PD Migas dengan tujuan sebagai pengelolaan potensi gas alam yang berada di wilayah Kota Bekasi pada daerah hulu, harapan pun PD Migas ini dapat dikelola dengan baik dan dapat menjadi potensi dalam perkembangannya.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Selamat kepada direktur PD Migas yang baru saja dilantik, dengan ide ide inovatif dalam mengembangkan potensi potensi dari proses gas alam di Kota Bekasi, hal ini menjadi tugas utama setelah dilantik dan berharap mampu mengamanahkan dalam proses berjalannya PD Migas, sekali lagi selamat untuk Bapak Apung Widadi, sukses.\" Kata Tri Adhianto.</span><br></p>\r\n', '', 'Sabtu', '2018-04-21', '23:55:12', 'plt5.jpg', 0, 'nasional,terkini,uptd,opd', 'Y'),
(656, 34, 'admin', 'Gebyar HUT RI ke-77 WAYANG KULIT', '', '', 'gebyar-hut-ri-ke77-wayang-kulit', 'Y', 'Y', 'Y', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-weight: bolder; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">Saksikan Gebyar HUT RI ke-77 WAYANG KULIT yang diselenggarakan oleh Pemerintah Kota Bekasi dengan Lakon Wahyu Cakraningrat, Ki Aufa Handaru sebagai Dalang Remaja.</span><br style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"><span style=\"font-weight: bolder; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">Wayang Kulit akan diselenggarakan pada Sabtu, 20 Agustus 2022 bertempat di Halaman Kantor Wali Kota Bekasi pada pukul 20.00 WIB hingga selesai.</span><br></p>', 'Tentara Israel Bersimbah Darah', 'Jumat', '2018-04-20', '09:51:42', '299991940_1096378517977650_4896503760711005828_n.jpg', 1, 'terkini,uptd,seni--budaya', 'Y'),
(658, 47, 'admin', 'Inggris Bela Serangan Roket Hamas ke israel', '', '', 'inggris-bela-serangan-roket-hamas-ke-israel', 'N', 'Y', 'Y', '<p>LONDON - Seorang anggota Parlemen Inggris membela serangan roket yang dilesakkan oleh Hamas ke arah Israel. Namun pembelaannya itu diganjar dengan sanksi indisipliner terhadapnya.</p>\r\n\r\n<p>Anggota Parlemen Inggris dari Partai Liberal Demokrat, David Ward, lewat akun Twitter miliknya menulis pernyataan yang membela serangan roket dari Hamas.</p>\r\n\r\n<p>&quot;The big question is - if I lived in #Gaza would I fire a rocket? - probably yes. &#39;Pertanyaan besar saat ini, apabila saya tinggal di #Gaza apakah saya akan menembakkan roket? mungkin saja iya&#39;,&quot; tulis Ward dalam akun pribadinya, seperti dikutip The Guardian, Rabu (23/7/2014).</p>\r\n\r\n<p>Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.</p>\r\n\r\n<p>Sementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.</p>\r\n\r\n<p>&quot;Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,&quot; ucap pihak Konservatif.</p>\r\n\r\n<p>Ini bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.</p>\r\n', '', 'Minggu', '2018-04-22', '11:15:29', 'hamas_inggris.jpg', 186879, 'yahudi,israel,palestina,internasional,hukum', 'Y'),
(660, 39, 'admin', 'Cabor Sepak Bola Raih Mendali Emas', '', '', 'cabor-sepak-bola-raih-mendali-emas', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tim Kota Bekasi meraih medali emas dari cabang olahraga sepak bola putra Porprov Jabar 2022 di Stadion Galuh Ciamis, pada Rabu 16 November 2022.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Medali diserahkan langsung oleh Ketua PSSI Asosiasi Provinsi Jawa Barat Tony Apriantono didampingi Ketua Panitia Penyelenggara Daerah Cabor Sepak Bola Putra Porprov Jabar 2022 Amir Kuswaya serta Ketua PSSI Asosiasi Kota Bekasi.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Kota Bekasi meraih medali emas cabang olahraga paling bergengsi melalui&nbsp;pertandingan final yang dramatis&nbsp;dengan mengalahkan Kabupaten Purwakarta skor 6-5 (1-1, 0-0) melalui adu penalti.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tentunya kabar ini diterima dengan full senyum gembira oleh seluruh lapisan masyarakat di Bumi Patriot. Dengan diraihnya emas oleh tim Kota Bekasi, ucapan selamat dan rasa bangga turut disampaikan oleh Pelaksana tugas (Plt) Wali Kota Tri Adhianto.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">“Selamat atas raihan prestasi pada Cabor Sepak Bola, ini menjadi catatan yang membanggakan bagi masyarakat. Mengharumkan nama Kota Bekasi di ajang bergengsi,” ucap Plt Wali Kota Bekasi Tri Adhianto</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tri Adhianto berharap supaya kesuksesan dan kerja keras Tim Sepak Bola Kota Bekasi tersebut bisa menginspirasi para atlet muda pada cabor lain untuk menorehkan prestasi gemilang.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">“Menjadi semangat dan motivasi bagi atlet muda kita di cabor lainnya, semoga saat pulang ke bumi patriot membawa hasil yang terbaik, menjadi kebanggaan bagi masyarakat,”tutup Tri Adhianto. (EZ/HUMAS)</span><br></p>\r\n', '', 'Minggu', '2018-04-22', '11:13:58', 'cabor.jpg', 0, 'nasional,terkini,uptd,opd,olahraga', 'Y'),
(661, 39, 'admin', 'PEMERINTAH KABUPATEN AGAM TUKAR PIKIRAN PENYUSUNAN LKPD 2022 DI KOTA BEKASI', '', '', 'pemerintah-kabupaten-agam-tukar-pikiran-penyusunan-lkpd-2022-di-kota-bekasi', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Pemerintah Kabupaten Agam Provinsi Sumatera Barat mengunjungi Pemerintah Kota Bekasi dalam rangka kunjungan kerja terkait penyusunan Laporan Keuangan Pemerintah Daerah (LKPD) tahun anggaran 2022, di Press room humas, Rabu (23/11). </span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Pemimpin rombongan sekaligus Asisten Administrasi Umum Pemkab. Agam, Andrinaldi menjelaskan pada sambutannya maksud dan tujuan untuk meningkatkan wawasan dan pengetahuan tentang pengelolaan keuangan daerah. </span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\" Kedatangan kami ingin mengetahui bagaimana dengan penyusunan Laporan Keuangan Pemerintah Daerah (LKPD) yang ada di Kota Bekasi seperti diketahui kendala disetiap opd cukup banyak dan membuat penyusunan laporan tidak tepat waktu \" </span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Bergantian memberikan sambutan, Kepala Badan Pengelolaan Keuangan dan Aset Daerah (BPKAD) Kota Bekasi, Sudarsono, didampingi jajarannya,  perwakilan Bappelitbangda dan Inspektorat. </span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Sudarsono menjelaskan meraih opini Wajar Tanpa Pengecualian (WTP) oleh Badan Pemeriksa Keuangan (BPK) dilakukan melalui instruksi Wali Kota dan juga diperlukan komitmen penuh dari Aparatur.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Pemerintah Kota Bekasi menggunakan Instruksi Wali Kota Bekasi Nomor : 900/260/BPKAD.AKUNTANSI tentang tata cara penyusunan Laporan keuangan Pemerintah Kota Bekasi tahun Anggaran 2022 tertanggal 17 Maret 2022.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"> \" Berkaitan dengan tujuan, Pemerintah Kota Bekasi memiliki target untuk menyelesaikan laporan paling lambat 25 Januari 2023, dan merupakan tanggung jawab dari seluruh stake holder yang ada \"</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Sudarsono pun berharap dengan adanya studi banding ini menjadi acuan dalam meningkatkan penyusunan LKPD dan meraih opini WTP. </span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"> </span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Pada acara yang sama, Kabid Akuntansi BPKAD, Hesti Widiastuti menjelaskan bahwa untuk percepatan penyusunan LKPD,  Kota Bekasi menggunakan aplikasi simda serta beberapa aplikasi yang dibangun sendiri yang terintegrasi, kemudian menyusun LKPD setiap triwulan. Penyusunan LKPD merupakan kerja tim dari seluruh penyusunan laporan keuangan SKPD dan BPKAD sehingga diperlukan komitmen pimpinan beserta jajarannya untuk percepatan penyusunan.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Acara dilanjutkan dengan dialog interaktif, foto bersama, dan tukar menukar cinderamata antara Pemerintah Kabupaten Agam dan Pemerintah Kota Bekasi. </span><br></p>\r\n', '', 'Minggu', '2018-04-22', '11:13:08', 'TYTYTY.jpg', 1, 'nasional,terkini,uptd,nasional,opd', 'Y'),
(662, 39, 'admin', 'Sapa Warga', '', '', 'sapa-warga', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Hai masyarakat Kota Bekasi mari bergabung di sapa warga Masyarakat Terkoneksi, melalui Zoom Meeting atau kanal Youtube Pemkot Bekasi.</span><br style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Pada hari ini: Rabu, 2 November 2022</span><br style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Pukul 20.00 wib s/d selesai</span><br style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Tema: \"???????????????????????????????????????????????? ???????????????????????????????????? ???????? ???????????????????????? ???????????????????????? ???????????????????????????? (????????????????)\"</span><br style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Ditunggu keikutsertaannya yaa Abang, Mpok.</span><br></p>\r\n', 'Iran Dorong Palestina Terus Lawan Israel', 'Minggu', '2018-04-22', '11:12:16', '313459375_194389496329134_9032152186169145324_n.jpg', 0, '', 'Y'),
(666, 19, 'admin', 'PLT. WALI KOTA BEKASI MENJADI NARASUMBER EDUKASI WAWASAN KEBANGSAAN DI SMA 15 DAN SMK AL BAHRI', '', '', 'plt-wali-kota-bekasi-menjadi-narasumber-edukasi-wawasan-kebangsaan-di-sma-15-dan-smk-al-bahri', 'N', 'Y', 'N', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">KOTA BEKASI - Selasa, 22 November 2022</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dalam rangka turut andil mencerdaskan kehidupan bangsa dan menanamkan wawasan kebangsaan, Tri Adhianto Plt. Wali Kota Bekasi memberikan edukasi wawasan kebangsaan di dua sekolah, SMAN 15 dan SMK Al Bahri, Selasa (22/11/2022).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tampak hadir mendampingi, Camat Bantargebang, Sekcam Bantargebang, Lurah Sumur Batu, Lurah Cikiwul, Lurah Ciketing Udik Kepala Sekolah, Guru dan peserta didik SMAN 15 dan SMK Al Bahri.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Kehadiran Plt. Wali Kota Bekasi disambut hangat oleh guru-guru dan peserta didik, ditandai dengan banyaknya guru dan peserta didik yang hendak menyapa dan ingin berfoto bersama PLT. Wali Kota Bekasi Tri Adhianto.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Kepala Sekolah SMA Negeri 15 dalam sambutannya menyampaikan terima kasih atas kehadiran PLT. Wali Kota Bekasi ke SMAN 15. \"Kita cukup berbangga Bapak PLT Wali Kota datang ke sekolah kita untuk menyapa kita semua, izin menyampaikan Pak, SMA Negeri 15 Kota Bekasi yang letaknya di ujung dari Kota Bekasi kami memiliki 1288 siswa Pak yang terdiri 35 rombel kelas 10 ada 12 rombel kelas 11 ada 12 rombel dan kelas 12 ada 11 rombel, prestasi kami pernah meraih juara Adiwiyata Kota Bekasi juara sekolah sehat tingkat provinsi,\" Ungkap Ermayani Kepala Sekolah SMAN 15.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Usai Memberikan sambutan, kegiatan dilanjutkan dengan pemberian edukasi terkait wawasan kebangsaan, Tri menyampaikan pentingnya pengetahuan sejarah sejak dini, salah satu cara menghormati bangsa, menghormati para pejuang dengan mengetahui sejarah Indonesia di merdekakan.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Salah satu ciri seseorang yang menghormati bangsa Indonesia, menghormati perjuangan para pejuang memerdekakan bangsa Indonesia yaitu dengan mengetahui rekam jejak sejarah perjuangan para pahlawan, betapa mahalnya menebus kemerdekaan Indonesia dengan tumpah darah para pejuang di tanah air Indonesia yang kita cintai ini,\" Ungkap Tri Adhianto.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Selain memberikan edukasi sejarah Indonesia, Tri Adhianto juga memberikan quis kepada peserta didik tentang pengetahuan wawasan kebangsaan, teks proklamasi, Sumpah Pemuda dan lagu Wajib Nasional, Tri sangat berbangga kepada peserta didik yang berani tampil dan bisa menjawab tantangan dari PLT. Wali Kota Bekasi.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tri menyampaikan generasi emas 2045 ditentukan dari perkembangan generasi dini, kini indonesia sudah masuk ke 20 Negara Besar, tidak menutup kemungkinan di 2045 generasi penerus dapat mewujudkan Indonesia menjadi Negara terbesar ke 5 di Dunia.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Negara kita kini sudah masuk ke 20 Negara Besar, tidak menutup kemungkinan generasi emas 2045 ditentukan dari regenerasi dini, kalianlah sebagai penentu, apakah Indonesia mampu mewujudkan menjadi Negara yang besar, dan masuk ke 5 Negara Besar di Dunia,\" Ungkap Tri Adhianto.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Usai memberikan sambutan, kegiatan ditutup dengan melakukan foto bersama PLT. Wali Kota Bekasi dengan para murid dan guru-guru.</span><br></p>\r\n', '', 'Sabtu', '2018-04-21', '23:53:46', 'plt4.jpg', 0, 'nasional,terkini,uptd,opd', 'Y'),
(667, 19, 'admin', 'CIANJUR BERDUKA, PLT. WALI KOTA BEKASI KIRIM PERSONIL KESEHATAN DAN TAGANA', '', '', 'cianjur-berduka-plt-wali-kota-bekasi-kirim-personil-kesehatan-dan-tagana', 'N', 'Y', 'N', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">KOTA BEKASI - Selasa, 22 November 2022</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Kabupaten Cianjur berduka, gempa yang terjadi kemarin pada hari Senin (22/11) Pukul 13:21 telah terjadi gempa berkekuatan 5.6 SR, yang telah merenggut korban jiwa sebanyak 162 orang meninggal dunia, Sebanyak 326 orang luka-luka. Ada 13.784 orang mengungsi akibat bencana alam ini. ( sumber BPBD Cianjur )</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Atas kejadian tersebut, Tri Adhianto PLT. Wali Kota Bekasi mengirimkan 12 personil kesehatan yang terdiri dari Dokter, farmasi dan perawat dan 14 personil tagana yang terdiri dari Personil dapur umum dan rescue.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Hari ini kita sudah secara resmi mengirimkan personil kesehatan dan personil tagana, untuk dapat membantu meringankan beban saudara kita yang berada di Kabupaten Cianjur,\" </span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Adapun perbekalan yang disiapkan oleh Nakes adalah 3 unit Ambulance, Obat-obatan dan tandu. sedangkan Personil Tagana membawa Beras 25kg, Indomie 20 dus, Aqua 11 dus, Sarden maya 50 kaleng, Minyak goreng 12 Liter, Gula 10kg, Seragam sekolah sd 20 paket, Baju koko 20 , Kain sarung 15, Mukena 15, Sepatu sekolah 20 pasang dan Tas sekolah 20 pcs.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Tri menyampaikan bantuan ini merupakan tahap awal, apabila dibutuhkan lebih banyak lagi logistik, Pemerintah Kota Bekasi akan menyiapkan bantuan tahap berikutnya.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Jadi perbantuan yang kita berikan saat ini merupakan bantuan tahap awal, jika situasi disana belum kondusif, hal tersebut memungkinkan bagi kita untuk memberikan bantuan tahap dua dan tiga,\" pungkas Tri Adhianto.</span><br></p>\r\n', '', 'Sabtu', '2018-04-21', '23:49:09', 'plt3.jpg', 0, 'nasional,terkini,uptd,nasional,opd', 'Y'),
(671, 23, 'admin', 'PLT.WALI KOTA HADIRI PROGRAM SEMESTA BERENCANA UNTUK WILAYAH KECAMATAN BANTARGEBANG', '', '', 'pltwali-kota-hadiri-program-semesta-berencana-untuk-wilayah-kecamatan-bantargebang', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">KOTA BEKASI - Selasa, 22 November 2022</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Program kegiatan Sehari Mencari Solusi di Kecamatan Bersinergitas dan Terencana (Semesta Berencana) kini berada di Kecamatan Bantargebang, Plt. Wali Kota Bekasi, Tri Adhianto hadir dalam kegiatan sharing tersebut bersama beberapa Kepala Perangkat Daerah&nbsp; dan warga masyarakat Kecamatan Bantargebang.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Para undangan yang hadir terdiri dari tokoh masyarakat, tokoh agama, Karang Taruna, LPM dan BKM serta pengurus RT dan RW di wilayah Kecamatan Bantargebang.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Cecep Miftah Farid selaku Camat Bantargebang menyatakan bahwa keamanan dan kenyamanan di 4 kelurahan se Kecamatan Bantargebang berjalan secara kondusif, karena selalu terintergras dengan 3 pilar wilayah.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Permasalahan Banjir di RT 04 RW 06 Kelurahan Bantargebang dikarenakan saluran air yang terlalu kecil yang mengakibatkan genangan air hujan tidak mengalir semestinya. Plt. Wali Kota menegaskan bahwa permasalahan banjir adalah adalah menjadi titik utama, solusinya adalah setiap Ketua RT atau RW melaporkan kepada Lurah dan Camat untuk dikoordinasikan kepada Dinas BMSDA Kota Bekasi.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">“Pembangunan kelanjutan dan pemberdayaan masyarakat, pemerintah mengakomodir, melihat dan menjadi kebutuhan masyarakat. Jadi pemerintah itu lebih banyak mendengar dalam komunikasi masukan-masukan atau ide pembangunan akan terlihat lebih terasa”. Ujar Tri Adhianto.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Salah satu dari unsur&nbsp; kepemudaan, perwakilan Karang Taruna Kecamatan Bantargebang menyebutkan permasalahan mengenai Sekretariat Karang Taruna yang belum dimiliki. Plt. Wali Kota Bekasi menjelaskan untuk segera koordinasikan kepada Dinas Sosial Kota Bekasi agar membuat laporan dan diserap dalam anggaran kedepannya.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dalam sambutannya juga, Plt. Wali Kota Bekasi menjelaskan mengenai permasalahan Covid 19 yang kini cukup tinggi. Lurah dan Camat agar kembali mensosialisasikan, memperketat dan menegakkan pemakaian masker kembali.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Program Semesta Berencana ini, diharapkan dapat memberikan solusi atas berbagai permasalahan yang ada di masyarakat dan dapat menyerap aspirasi untuk&nbsp; Musyarawah Rencana Pembangunan yang setiap tahunnya dilaksanakan.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">(Ndoet/Int.Wil)</span><br></p>\r\n', '', 'Minggu', '2018-04-22', '00:08:00', '437cfe1807f0ef23f6d8ed6536fe7e26.jpg', 0, 'terkini,uptd,opd', 'Y'),
(685, 54, 'admin', 'PLT. WALI KOTA BEKASI TRI ADHIANTO MANFAATKAN AKHIR PEKAN BERBAGI KECERIAAN', '', '', 'plt-wali-kota-bekasi-tri-adhianto-manfaatkan-akhir-pekan-berbagi-keceriaan', 'N', 'N', 'N', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Plt. Wali Kota Bekasi Tri Adhianto dengan didampingi Ketua PKK Kota Bekasi Wiwiek Hargono manfaatkan akhir pekan dengan melakukan senam bersama warga masyarakat Bekasi Utara diarea lapangan Kecamatan Bekasi Utara, Sabtu (19/11).</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Sebanyak kurang lebih lima ratus orang yang hadir mengikuti senam tersebut, tidak hanya itu, kegiatan senam tersebut juga membawa kegembiraan dikarenakan ada door prize yang telah disiapkan.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Warga masyarakat tampak terlihat antusias, bersorak riang gembira, karena kegiatan senam masal tetsebut hampir vakum selama 2 tahun akibat pandemi covid-19.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Hal tersebut juga dituturkan oleh Tri Adhianto, dampak dari pandemi covid-19 mengakibatkan keterhambatan mobilitas masyarakat, salah satunya tidak diperbolehkannya melakukan senam masal.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Selama dua tahun lebih, pandemi covid menghambat pergerakan mobilitas masyarakat, peraturan protokol kesehatan mengharuskan kita untuk tidak boleh melakukan kegiatan berkerumun, salah satunya senam masal seperti ini,\" pungkas Tri Adhianto.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Usai melakukan senam, Tri Adhianto bersama Wiwiek Hargono berbagi kebahagiaan dengan membuka kupon undian, dan membagikan sepeda sebagai hadiah utamanya.</span><br></p>\r\n', '', 'Selasa', '2018-04-24', '01:30:53', 'plt8.jpg', 0, 'nasional,terkini,uptd,nasional,opd,olahraga,hiburan', 'Y'),
(689, 22, 'admin', 'PRAY FOR CIANJUR', '', '', 'pray-for-cianjur', 'N', 'N', 'N', '<p><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Segenap jajaran Dinas Lingkungan Hidup Kota Bekasi turut berduka cita kepada saudara-saudara kami yang tertimpa musibah gempa bumi di Cianjur - Jawa Barat.</span><br style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Semoga musibah yang menimpa saudara kami di Cianjur segera pulih dan kembali normal serta bagi keluarga yang mengalami ini selalu diberikan kesabaran dan semoga Allah SWT menggantinya dengan yang lebih baik. Aamin Ya rabbal alamin.</span><br></p>\r\n', '', 'Senin', '2019-07-15', '10:17:45', '316260320_1461097557744457_4681140707760113104_n.jpg', 0, 'nasional,terkini,uptd,wisata,nasional', 'Y'),
(695, 53, 'admin', 'GIAT BERSIH SAMPAH SUNGAI DAN PEMBUATAN TAMAN', '', '', 'giat-bersih-sampah-sungai-dan-pembuatan-taman', 'Y', 'Y', 'Y', '<div class=\"container\" align=\"center\">\r\n<h1><div style=\"text-align: center;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px; text-align: left;\">Dinas Lingkungan Hidup Kota Bekasi melalui Bidang Pengendalian Pencemaran Kerusakan Lingkungan Hidup dan Penegakan Hukum (PPKLHPH) melaksanakan aksi \"GIAT BERSIH SAMPAH SUNGAI DAN PEMBUATAN TAMAN\" sempadan kali bekasi.</span></div><div style=\"text-align: left;\"><font color=\"#777777\" face=\"Roboto, sans-serif\"><span style=\"font-size: 15px;\"><br></span></font></div><span style=\"text-align: left; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"><div style=\"text-align: left;\">pada aksi ini turut dihadiri oleh ketua RT 001 dan RW 007 perumahan Delta Pekayon dan jajaran&nbsp;<a class=\"notranslate\" tabindex=\"0\" href=\"https://www.instagram.com/uptd_kebersihan_bekasiselatan/\" style=\"color: rgb(237, 20, 91); background-color: rgb(255, 255, 255); transition: color 400ms ease 0s, background-color 400ms ease 0s;\">@uptd_kebersihan_bekasiselatan</a>&nbsp;para Pasukan Katak Orange serta pegawai Ipal Bersama.</div></span><div style=\"text-align: left;\"><font color=\"#777777\" face=\"Roboto, sans-serif\"><span style=\"font-size: 15px;\"><br></span></font></div><span style=\"text-align: left; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"><div style=\"text-align: left;\">Kegiatan tersebut dilaksanakan di perumahan Delta Pekayon Kecamatan Bekasi Selatan, lokasi tersebut merupakan posko rumah perahu bagi tim pasukan katak orange Dinas Lingkungan Hidup Kota Bekasi.</div></span><div style=\"text-align: left;\"><font color=\"#777777\" face=\"Roboto, sans-serif\"><span style=\"font-size: 15px;\"><br></span></font></div><span style=\"text-align: left; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"><div style=\"text-align: left;\">Giat aksi ini atas kerjasama&nbsp;<a class=\"notranslate\" tabindex=\"0\" href=\"https://www.instagram.com/waste4change/\" style=\"color: rgb(237, 20, 91); background-color: rgb(255, 255, 255); transition: color 400ms ease 0s, background-color 400ms ease 0s;\">@waste4change</a>&nbsp;dengan Pemerintah Kota Bekasi melalui Dinas Lingkungan Hidup Kota Bekasi, giat tersebut merupakan salah satu program pembersihan sampah sungai Bekasi berbasis teknologi perahu pembersih sampah sungai atau SeeHamster.</div></span><div style=\"text-align: left;\"><font color=\"#777777\" face=\"Roboto, sans-serif\"><span style=\"font-size: 15px;\"><br></span></font></div><span style=\"text-align: left; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"><div style=\"text-align: left;\">Tidak hanya itu diakhir kegiatan Kepala Bidang PPKLHPH, Helfiana Sudirman pada kegiatan aksi bersih sampah ini memberikan secara simbolis berupa pohon hias kepada ketua RT 001 RW 007 dan Ketua Pasukan Katak Orange, yang bertujuan dan memberikan keindahan pada sempadan kali bekasi, dan pada hasil giat K3 ini sampah terkumpul sebanyak 365 Kilo gram.</div></span></h1>\r\n</div>', 'Jasa pemrograman web', 'Kamis', '2020-12-17', '18:46:38', '282550609_115061527728566_8158077957258252064_n_(1).jpg', 0, 'terkini,uptd,wisata,teknologi', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(691, 54, 'admin', 'Plt. Wali Kota Tanggapi Persoalan Banjir Lewat Program Semesta Berencana Di Kecamatan Rawalumbu', '', '', 'plt-wali-kota-tanggapi-persoalan-banjir-lewat-program-semesta-berencana-di-kecamatan-rawalumbu', 'N', 'N', 'N', '<p><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Program Sehari Mencari Solusi di Kecamatan Rawalumbu Bersinergi dan Terencana (SEMESTA BERENCANA) dihadiri perwakilan Warga pengurus RT, RW, LPM, Karang Taruna, MUB Kecamatan Rawalumbu dan tokoh masyarakat Kecamatan Rawalumbu. Pelaksana Tugas (Plt.) Wali Kota Bekasi Tri Adhianto langsung merespon permasalahan permasalahan di wilayah Kecamatan Rawalumbu.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Didampingi, Kepala Dinas Tata Ruang, Junaedi, Kepala Dinas Lingkungan Hidup, Yudianto, Kepala Dinas Tenaga Kerja, Ika Yarti Indah dan perwakilan dari DBMSDA dan DPMPTSP untuk mencatat apa saja keluhan keluhan yang menjadi persoalan warga agar solusi menjadi hasil akhirnya.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Sebelum dimulai, Plt. Wali Kota Bekasi memberikan beberapa penyerahan untuk warga Kecamatan Rawalumbu, antara lain ;</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">1. Penyerahan piagam penghargaan kampung tangguh jaya untuk RW 11 Kelurahan Sepanjang Jaya</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">2. Penyerahan piala penghargaan lomba K3 Kecamatan Rawalumbu</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">3. Penghargaan piagam penghargaan pembayaran PBB tercepat </span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">4. Penyerahan peserta BPJS Ketenagakerjaan</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">5. Penyerahan kompor listrik dari PLN.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Mengawali diskusi, Pelaksana Tugas (Plt.) Camat Rawalumbu, Lia Erliani menjelaskan mengenai bergeraknya tiap Kelurahan melalui sinergitas 3 pilar mengenai keamanan dan kenyamanan di wilayah dibilang kondusif. Beberapa warga mengeluhkan mengenai banjir yang masih melanda di beberapa titik banjir di Kecamatan Rawalumbu.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">\"Kami telah membuat forum group diskusi bersama BMSDA juga bersama para Ketua RT dan RW yang berada di wilayah Kecamatan Rawalumbu, sudah menyerahkan hasil identifikasi masalah dan solusi dan secara terintergritas agar memaksimalkan solusinya.\" Kata Lia Erliani.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Salah satu warga, Suharto yakni dari RW 28 Kelurahan Bojong Rawalumbu mengeluhkan bahwa sepanjang kali dari jembatan 0 hingga jembatan 9 selalu meluap membuat perumahan disekitarnya tergenang, adanya pengerukan pada tahun lalu mendapatkan hasil yang baik berkurangnya efek mengurangi banjir tersebut, akan tetapi saat ini lumpur ada lagi dan membuat banjir kembali.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Plt. Wali Kota menyebutkan kepada Uptd DBMSDA Kecamatan Rawalumbu untuk melakukan kembali pengerukan sisi sungai, dan menjadikan solusi sehingga lumpur yang ada di dalam sungai tidak meluap kembali.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Berikutnya, salah satu kader Posyandu dari Kelurahan Bojong Menteng mengaspirasikan mengenai dana insentif untuk para kader posyandu agar segera diaktifkan kembali, melalui program Semesta Berencana ini agar dijadikan solusi untuk keluarnya insentif tersebut.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Plt. Wali Kota Bekasi  memberikan masukan kepada Dinas BMSDA Kota Bekasi agar terjun kelapangan langsung karena dari Kecamatan Rawalumbu sudah di data mengenai titik banjir dan segera dipantau untuk titik banjirnya, selain itu, Plt. Wali Kota Bekasi mengenai keluhan sampah untuk Dinas Lingkungan hidup agar menyiapkan armada baik dari personel nya maupun Baktor yang siap angkut.</span><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><br style=\"outline: none; color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(81, 102, 138); font-family: Poppins; font-size: 15px; text-align: justify;\">Dalam hal ini, diharapkan solusi untuk permasalahan warga mendapat titik terang, dan diharapkan warga puas dengan kinerja yang menjadi pelayan masyarakat demi mencapai visi Kota Bekasi dan membuat Bekasi menjadi Keren.</span><br></p>\r\n', '', 'Senin', '2019-07-15', '10:24:03', 'YHHH.jpg', 0, 'nasional,terkini,uptd,nasional,opd', 'Y'),
(692, 2, 'admin', 'Selamat kepada Tim Sepak Bola Putra Kota Bekasi, telah meraih medali Emas pada ajang Porprov Jabar X', '', '', 'selamat-kepada-tim-sepak-bola-putra-kota-bekasi-telah-meraih-medali-emas-pada-ajang-porprov-jabar-x', 'N', 'N', 'N', '<p><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Selamat kepada Tim Sepak Bola Putra Kota Bekasi, telah meraih medali Emas pada ajang Porprov Jabar XIV 2022.</span><br></p>\r\n', '', 'Senin', '2019-07-15', '10:25:22', '315852523_669542378122790_25558643345298342_n.jpg', 1, 'olahraga', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(32, 'RENSTRA DINAS LINGKUNGAN HIDUP KOTA BEKASI', '', '2022-11-22', 0),
(33, 'RENJA DINAS LINGKUNGAN HIDUP KOTA BEKASI', 'RENJA_(1).pdf', '2022-11-22', 0),
(34, 'IKU DINAS LINGKUNGAN HIDUP KOTA BEKASI', 'IKU_(1).pdf', '2022-11-22', 0),
(35, 'LAKIP DINAS LINGKUNGAN HIDUP KOTA BEKASI', '', '2022-11-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(238, 30, 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', ''),
(237, 30, 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', ''),
(240, 31, 'admin', 'Doa Bersamaaa', 'doa-bersamaaa', '<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.cbcvb</p>\r\n', ''),
(239, 30, 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', ''),
(236, 30, 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', ''),
(235, 30, 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', ''),
(234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', ''),
(232, 29, 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', 'sdasdasd', ''),
(233, 30, 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', ''),
(231, 29, 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', ''),
(230, 29, 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', ''),
(229, 29, 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', ''),
(228, 29, 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', ''),
(227, 29, 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', ''),
(225, 29, 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', ''),
(226, 29, 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', ''),
(224, 28, 'admin', 'Favorit', 'favorit', 'Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n', ''),
(223, 28, 'admin', 'Suasana Pasar Asemka', 'suasana-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n', ''),
(222, 28, 'admin', 'Petasan', 'petasan', 'Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n', ''),
(221, 28, 'admin', 'Merah Marun', 'merah-marun', 'Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n', ''),
(220, 28, 'admin', 'Menata Cincin', 'menata-cincin', 'Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n', ''),
(219, 28, 'admin', 'Suvenir', 'suvenir', 'Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n', ''),
(218, 28, 'admin', 'Seorang Wanita Pedagang', 'seorang-wanita-pedagang', 'Seorang wanita sedang menunggu kios aksesorisnya.\r\n', ''),
(217, 28, 'admin', 'Suasana Pasar', 'suasana-pasar', 'Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n', ''),
(216, 28, 'admin', 'Pedagang', 'pedagang', 'Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n', ''),
(254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', '');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(46, 'Tentang Kami ', 'tentang-kami-', '<p>Melalui Dinas Lingkungan Hidup Kota Bekasi berupaya untuk menciptakan lingkungan yang aman, bersih, sehat nyaman dan modern untuk mewujudkan Bekasi Maju, Sejahtera dan Ihsan.<br></p>', '2014-04-07', '20140331-gedung-baru-pemkot-bekasi.jpg', 'admin', 90, '13:10:57', 'Senin'),
(52, 'visi & misi', 'visi--misi', '', '2022-11-22', 'Visi_Dan_Misi_LH.jpg', 'admin', 5, '16:52:03', 'Selasa'),
(53, 'Struktur Organisasi', 'struktur-organisasi', '', '2022-11-22', 'Struktur_11zon.jpg', 'admin', 3, '16:52:23', 'Selasa'),
(48, 'Alamat Perusahaan', 'alamat-perusahaan', '<p>Tunggul.com merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Tunggul.com diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n', '2014-04-07', '', 'admin', 26, '13:32:28', 'Senin'),
(54, 'ppid', 'ppid', '<p><a href=\"http://ppid.bekasikota.go.id/front/dokumen?category=1&amp;area=pemda&amp;search=&amp;type=&amp;opr=2456\" target=\"_blank\">http://ppid.bekasikota.go.id/front/dokumen?category=1&amp;area=pemda&amp;search=&amp;type=&amp;opr=2456</a><br></p>', '2022-11-23', '', 'admin', 6, '20:46:06', 'Rabu');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'DINAS LINGKUNGAN HIDUP KOTA BEKASI', '', '', 'https://web.facebook.com/DinasLingkunganHidupKotaBekasi?_rdc=1&_rdr, \r\nhttps://twitter.com/dlh_kotabekasi, \r\nhttps://www.instagram.com/dlh_kotabekasi/, \r\nhttps://www.youtube.com/c/mycodingxd', '', '', 'Melalui Dinas Lingkungan Hidup Kota Bekasi berupaya untuk menciptakan lingkungan yang aman, bersih, sehat nyaman dan modern untuk mewujudkan Bekasi Maju, Sejahtera dan Ihsan.', 'kota bekasi,dinaslh,dinas lingkungan hidup,nyaman,bersih,seputar berita', 'favicon2.ico', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.2076185265464!2d106.99153091545234!3d-6.23634196280809!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698c3cba79b51f%3A0x16951cc2b56b1894!2sDinas%20Lingkungan%20Hidup%20Kota%20Bekasi!5e0!3m2!1sen!2sid!4v1669104030290!5m2!1sen!2sid\" ');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklanatas`
--

INSERT INTO `iklanatas` (`id_iklanatas`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`) VALUES
(40, 'Iklan Satu', 'admin', '', '', '12qw2.jpg', '2022-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `posisi` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL,
  `gambar_utama` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`, `gambar_utama`) VALUES
(19, 'Kesehatan', 'admin', 'kesehatan', 'Y', 2, ''),
(2, 'Olahraga', '', 'olahraga', 'Y', 4, ''),
(21, 'Ekonomi', '', 'ekonomi', 'Y', 7, ''),
(22, 'Nasional', 'admin', 'nasional', 'N', 9, ''),
(23, 'Hiburan', '', 'hiburan', 'Y', 3, ''),
(31, 'Kesehatan ', '', 'kesehatan-', 'Y', 5, ''),
(34, 'Seni & Budaya', '', 'seni--budaya', 'N', 0, ''),
(37, 'Sekitar Kita', '', 'sekitar-kita', 'N', 0, ''),
(39, 'News', 'admin', 'news', 'Y', 1, 'XgATaL.jpg'),
(40, 'Kuliner', 'admin', 'kuliner', 'Y', 8, ''),
(44, 'Wisata', 'admin', 'wisata', 'N', 11, ''),
(46, 'Daerah', 'admin', 'daerah', 'N', 0, ''),
(53, 'UPTD', 'admin', 'uptd', 'N', 0, ''),
(54, 'TERKINI', 'admin', 'terkini', 'N', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'dlh123_(1).png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(255) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(113, 0, 'Tentang Kami', 'http://localhost:8080/project/halaman/detail/tentang-kami-', 'Ya', 'Top', 1),
(13, 149, 'Terkini', 'kategori/detail/terkini', 'Ya', 'Bottom', 8),
(12, 149, 'Seni & Budaya', 'kategori/detail/seni--budaya', 'Ya', 'Bottom', 10),
(116, 0, 'Hubungi Kami', 'hubungi', 'Ya', 'Top', 2),
(119, 149, 'Index Berita', 'berita/indeks_berita', 'Ya', 'Bottom', 14),
(148, 149, 'UPTD', 'kategori/detail/uptd', 'Ya', 'Bottom', 9),
(149, 0, 'Berita', '#', 'Ya', 'Bottom', 7),
(185, 0, 'Forum', 'konsultasi', 'Ya', 'Bottom', 22),
(186, 0, 'Login', 'login', 'Ya', 'Bottom', 24),
(187, 0, 'Agenda', 'agenda', 'Ya', 'Bottom', 21),
(181, 0, 'Download', 'download', 'Ya', 'Bottom', 18),
(182, 0, 'Video', 'playlist', 'Ya', 'Bottom', 20),
(183, 0, 'Gallery', 'albums', 'Ya', 'Bottom', 19),
(184, 0, 'Register', 'kontributor', 'Ya', 'Bottom', 23),
(168, 149, 'Nasional', 'kategori/detail/nasional', 'Ya', 'Bottom', 13),
(169, 149, 'Hiburan', 'kategori/detail/olahraga', 'Ya', 'Bottom', 12),
(170, 0, 'Profil', '#', 'Ya', 'Bottom', 3),
(171, 170, 'Visi & Misi', 'halaman/detail/visi--misi', 'Ya', 'Bottom', 4),
(172, 170, 'Struktur Organisasi', 'halaman/detail/struktur-organisasi', 'Ya', 'Bottom', 5),
(173, 170, 'Tupoksi', '#', 'Ya', 'Bottom', 6),
(188, 0, 'PPID', '', 'Ya', 'Bottom', 15),
(189, 188, 'Informasi Berkala', '', 'Ya', 'Bottom', 16),
(190, 188, 'Informasi Serta Meta', '', 'Ya', 'Bottom', 17),
(191, 149, 'Infografis', '', 'Ya', 'Bottom', 11);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">Melalui Dinas Lingkungan Hidup Kota Bekasi berupaya untuk menciptakan lingkungan yang aman, bersih, sehat nyaman dan modern untuk mewujudkan Bekasi Maju, Sejahtera dan Ihsan.</p><p style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"></p><p class=\"ion-ios-telephone\" style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">  Phone: <span class=\"bold\">1500-444</span></p><p class=\"ion-ios-email\" style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">  Email: <span class=\"bold\"><span id=\"cloakb1f003cd9a1b9e323e7e5519d9d7101d\"><a href=\"mailto:opd.dlh@bekasikota.go.id\" style=\"color: rgb(237, 20, 91); transition: color 400ms ease 0s, background-color 400ms ease 0s;\">opd.dlh@bekasikota.go.id</a></span></span></p><p style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\"></p><p class=\"ion-ios-location\" style=\"line-height: 1.6; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 15px;\">  Alamat Kami<br>Jl. Jendral Ahmad Yani No. 1 Gd Perkantoran Lt 4, Bekasi</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`) VALUES
(1, 'Kiri - Iklan Sidebar', 'admin', '', '', 'IUI.jpg', '2022-11-22'),
(2, 'Kanan - Iklan Sidebar', 'admin', '', '', 'IUI1.jpg', '2022-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(56, 'Playlist Video 1', 'admin', 'playlist-video-1', '', 'Y'),
(57, 'Playlist Video 2', 'admin', 'playlist-video-2', '', 'Y'),
(61, 'kegiatan uptd dlh', 'admin', 'kegiatan-uptd-dlh', '', 'Y'),
(60, 'DLH', 'admin', 'dlh', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(33, 'Willy Fernando - Vicky Armita', 'Jawaban', 'admin', 9, 'Y'),
(35, 'Laura Himah i Nisaa - Safaruddin', 'Jawaban', 'admin', 5, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2015-04-11', '', 'Y'),
(2, 'WHO merilis, 30 persen anak di dunia kecanduan komputer dan menonton televisi.', '2015-03-16', '', 'Y'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lama.', '2015-04-17', '', 'Y'),
(4, 'Menurut United Stated Representatives, 25% obat beredar di adalah palsu.', '2015-04-17', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-04-19', 1, '1524111568'),
('::1', '2018-04-21', 1, '1524249582'),
('::1', '2018-04-24', 19, '1524509093'),
('::1', '2018-05-04', 13, '1525441129'),
('::1', '2018-05-05', 36, '1525494921'),
('::1', '2018-05-06', 5, '1525614861'),
('::1', '2018-05-11', 15, '1525998298'),
('::1', '2018-05-18', 4, '1526611139'),
('::1', '2018-05-19', 6, '1526701697'),
('::1', '2018-05-20', 13, '1526833607'),
('::1', '2018-05-22', 13, '1526947912'),
('::1', '2018-05-23', 16, '1527056425'),
('::1', '2018-05-31', 1, '1527743948'),
('::1', '2018-06-01', 2, '1527815549'),
('::1', '2018-06-03', 191, '1528045141'),
('::1', '2018-06-04', 100, '1528127678'),
('::1', '2019-05-18', 28, '1558141438'),
('::1', '2019-06-30', 2, '1561872220'),
('::1', '2019-07-01', 1, '1561950236'),
('::1', '2019-07-02', 1, '1562028708'),
('::1', '2019-07-08', 1, '1562544054'),
('::1', '2019-07-13', 1, '1562978601'),
('::1', '2019-07-14', 243, '1563094093'),
('::1', '2019-07-15', 213, '1563173043'),
('::1', '2019-07-16', 3, '1563231376'),
('::1', '2019-07-17', 9, '1563323606'),
('::1', '2019-07-18', 4, '1563407947'),
('::1', '2019-08-27', 2, '1566889548'),
('::1', '2019-11-14', 100, '1573723243'),
('::1', '2019-11-15', 1, '1573815541'),
('::1', '2019-11-16', 92, '1573912524'),
('::1', '2019-11-17', 14, '1573997167'),
('::1', '2019-11-18', 380, '1574068697'),
('::1', '2019-11-19', 12, '1574148729'),
('::1', '2019-11-20', 5, '1574240913'),
('::1', '2019-11-21', 1, '1574291940'),
('::1', '2019-11-24', 3, '1574552073'),
('::1', '2020-02-09', 3, '1581212463'),
('::1', '2020-10-03', 24, '1601737373'),
('::1', '2020-10-04', 26, '1601782874'),
('::1', '2020-12-17', 17, '1608185895');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(22, 'Hiburan', '', 'hiburan', 19),
(28, 'Kesehatan', 'admin', 'kesehatan', 12),
(26, 'Nasional', '', 'nasional', 42),
(25, 'OPD', 'admin', 'opd', 16),
(24, 'Olahraga', '', 'olahraga', 11),
(34, 'Wisata', '', 'wisata', 4),
(36, 'Hukum', '', 'hukum', 16),
(55, 'Nasional', 'admin', 'nasional', 0),
(49, 'Seni & Budaya', 'admin', 'seni--budaya', 6),
(50, 'UPTD', 'admin', 'uptd', 3),
(51, 'Terkini', 'admin', 'terkini', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(34, 'Wisata', 'admin', 'wisata', 2),
(35, 'Seni & Budaya', 'admin', 'seni--budaya', 0),
(36, 'UPTD', 'admin', 'uptd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(15, 6, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(23, 20, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23'),
(37, 0, 'JL2@GMAIL.COM', 'IIJIJIJ', '', '2022-11-23', '20:19:55'),
(36, 0, 'GHGHG', 'GHGHG', '', '2022-11-23', '20:17:50'),
(34, 0, 'MARSEL', 'JJDJSJDJAJD', 'TOLONG SAMPAH DIANGKAT \r\nDI JALAN ', '2022-11-23', '20:03:36'),
(35, 34, 'admin', 'fahrihamzahasari@gmail.com', 'TERIMA KASIH SARAN NYA\r\n', '2022-11-23', '20:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(26, 'Blackexpo Butterfly', 'admin', 'TME', 'blackexpo-butterfly', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', 'd7d2f602e155ba700ed76c48d9a48009b9383e8d17435bfb0fe8ad7c664d4002f16cc7a65c6fb066963714a794f96441ef7f9b9c1b1456acfb9225cbad474fb0', 'admin', 'fahrihamzahasari@gmail.com', '089649021897', 'dasa1.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('MARSEL', 'd544c430350180876740444d92b15b9b96cb413a544bd5e6aff48a554f9bd39c5d5771e50757542b1989e308d15ab669c57b2c95a9777a2dd79eeb4850a5e345', 'MARSEL', 'MARSEL2GMAIL.COM', '929392392', 'dasa2.png', 'kontributor', 'N', '083c630ebb238f21702f14f68e6d9dfd-20221123200516');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18),
(15, 'f76ad5ee772ac196cbc09824e24859ee', 18),
(16, 'q173s8hs1jl04st35169ccl8o7', 70),
(17, 'q173s8hs1jl04st35169ccl8o7', 66),
(18, 'q173s8hs1jl04st35169ccl8o7', 65),
(19, 'q173s8hs1jl04st35169ccl8o7', 64),
(20, 'q173s8hs1jl04st35169ccl8o7', 63),
(21, 'q173s8hs1jl04st35169ccl8o7', 62),
(22, 'q173s8hs1jl04st35169ccl8o7', 61),
(23, 'q173s8hs1jl04st35169ccl8o7', 59),
(24, 'q173s8hs1jl04st35169ccl8o7', 57),
(25, 'q173s8hs1jl04st35169ccl8o7', 46),
(26, 'q173s8hs1jl04st35169ccl8o7', 45),
(27, 'q173s8hs1jl04st35169ccl8o7', 44),
(28, 'q173s8hs1jl04st35169ccl8o7', 43),
(29, 'q173s8hs1jl04st35169ccl8o7', 41),
(30, 'q173s8hs1jl04st35169ccl8o7', 35),
(31, 'q173s8hs1jl04st35169ccl8o7', 34),
(32, 'q173s8hs1jl04st35169ccl8o7', 33),
(33, 'q173s8hs1jl04st35169ccl8o7', 31),
(34, 'q173s8hs1jl04st35169ccl8o7', 18),
(35, 'q173s8hs1jl04st35169ccl8o7', 10),
(36, 'q173s8hs1jl04st35169ccl8o7', 2),
(37, 'dca549085bc9f80efd9461bcf0884a1a-20221122141018', 18),
(38, '083c630ebb238f21702f14f68e6d9dfd-20221123200516', 18);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT '1',
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(175, 60, 'admin', 'ADAPTASI MITIGASI PROKLIM KOTA BEKASI', 'adaptasi-mitigasi-proklim-kota-bekasi', '', '', '', 'https://youtu.be/TqQkn7sqaZw', 0, 'Selasa', '2022-11-22', '15:32:15', ''),
(176, 60, 'admin', 'PROKLIM DLH KOTA BEKASI', 'proklim-dlh-kota-bekasi', '', '', '', 'https://youtu.be/zmXONb8nD3E', 0, 'Selasa', '2022-11-22', '15:32:54', 'uptd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
