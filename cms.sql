-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2024 at 10:43 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `balasan_saran`
--

CREATE TABLE `balasan_saran` (
  `id` int NOT NULL,
  `id_saran` int DEFAULT NULL,
  `balasan` text,
  `tanggal_balasan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `caraousel`
--

CREATE TABLE `caraousel` (
  `id_caraosel` int NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `caraousel`
--

INSERT INTO `caraousel` (`id_caraosel`, `judul`, `foto`) VALUES
(7, 'Barenblis', '20241014121955.jpg'),
(8, 'Barenblis', '20241014122023.jpg'),
(9, 'Barenblis', '20241014122229.jpg'),
(10, 'Barenblis', '20241014122246.jpg'),
(11, 'Barenblis', '20241014122322.jpg'),
(12, 'barenbliss', '20241125070452.jpg'),
(14, 'barenbliss', '20241125070538.jpg'),
(15, 'barenbliss', '20241125070613.jpg'),
(16, 'barenbliss', '20241125070625.jpg'),
(17, 'barenbliss', '20241125070640.jpg'),
(18, 'barenbliss', '20241125070715.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int NOT NULL,
  `judul` varchar(60) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `judul`, `foto`, `tanggal`, `username`, `id_kategori`) VALUES
(5, 'Barenblis', '20241125065857.jpg', '2024-11-25', '', '7'),
(6, 'b&b', '20241125065934.jpg', '2024-11-25', '', '9'),
(7, 'bb', '20241125065953.jpg', '2024-11-25', '', '9'),
(8, 'barennblis', '20241125070016.jpg', '2024-11-25', '', '9'),
(9, 'barenbllis', '20241125070045.jpg', '2024-11-25', '', '9'),
(10, 'brnblis', '20241125070925.jpg', '2024-11-25', '', '9'),
(12, 'baren', '20241125071025.jpg', '2024-11-25', '', '9'),
(13, 'bliss', '20241125071049.jpg', '2024-11-25', '', '9');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(7, 'face'),
(8, 'lip'),
(9, 'eye'),
(10, 'makeup remover&tools');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int NOT NULL,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `tiktok` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_wa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `tiktok`, `email`, `alamat`, `no_wa`) VALUES
(1, '베어앤블리스 || BARENNBLISS ', 'Tren Terbaru K-Beauty\r\n\r\nClean Beauty Berbasis Lab dengan Performa Tinggi\r\n\r\nDidirikan oleh Jina Kim, barenbliss mengembangkan filosofi B+N+B dan mendefinisikan ulang formula perawatan kulit fungsional. Menggabungkan bahan-bahan canggih dan elemen-elemen menyenangkan dalam produk kami.\r\n\r\nKami bertujuan untuk meningkatkan pengalaman setiap orang saat menggunakan produk kami. Kami juga berkomitmen untuk menghindari ribuan bahan berbahaya dan memecahkan batasan standar kecantikan guna memberikan inovasi Kecantikan yang menyenangkan bagi semua orang.', 'https://instagram.com/barenbliss/', 'https://tiktok.com/@barenbliss_id', 'najlasorayam@gmail.com', 'Jalan Pluit Selatan Raya Nomor 2, RT.4/RW.10, Pluit, Kecamatan Penjaringan, Kota Jakarta Utara, Daerah Khusus Ibukota Jakarta 14450', '6289698048703');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) NOT NULL,
  `isi` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`, `isi`) VALUES
(13, 'Bloomatte Perfect Zoom Cover Cushion', '\r\nCushion berdaya tutup tinggi namun ringan, diperkaya dengan Miracle Bloom™ Essence dan Double Lock Tech untuk hasil akhir matte sehat hingga 16 jam. Memudahkan touch-up kapan saja dengan tampilan kulit flawless.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" dengan hasil akhir berdaya tutup tinggi namun tetap ringan.  \r\n\r\nEsensi Alami:  \r\n- 0% Alkohol  \r\n- Bebas Kekejaman (Cruelty-Free)  \r\n- Ramah Vegan  \r\n- Teruji Dermatologis  \r\n- Non-komedogenik  \r\n\r\nTerinspirasi dari Alam:  \r\nDikembangkan dengan kebaikan alami Miracle Bloom™ Essence, minyak rapeseed, teknologi Double Lock, dan perlindungan UV untuk hasil akhir matte yang sehat dan merata di kulit.  \r\n\r\nMomen Kebahagiaan:  \r\nDaya tutup tinggi tanpa terasa berat di kulit, menciptakan tampilan makeup sempurna yang terasa ringan sepanjang hari.', '20241015035728.jpg', 'Bloomatte-Perfect-Zoom-Cover-Cushion', '7', '2024-10-15', 'admin1', NULL),
(14, 'Moist Mochi Paste Powder Blush', '\r\nBlush on berbentuk bubuk multi-fungsi yang dibungkus dalam tekstur mirip mochi dengan formula lembap, ringan, mudah dibaurkan, tahan air, dan bertahan hingga 12 jam. Melebur sempurna ke kulit untuk efek glowing yang sehat.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" dengan Moist Mochi Paste Powder Blush yang multi-fungsi.  \r\n\r\nEsensi Alami:  \r\n- 0% Alkohol  \r\n- Bebas Kekejaman (Cruelty-Free)  \r\n- Ramah Vegan  \r\n\r\nTerinspirasi dari Alam:  \r\nDiperkaya bahan alami seperti 8 jenis Asam Hyaluronat, Vitamin E, Minyak Bunga Mawar, Ekstrak Bunga Sakura, dan Minyak Biji Jojoba untuk melembapkan dan menutrisi kulit.  \r\n\r\nMomen Kebahagiaan:  \r\nRasakan warna merona alami yang menyatu dengan wajah dan memberi semangat pada harimu.  ', '20241015041219.jpg', 'Moist-Mochi-Paste-Powder-Blush', '7', '2024-10-15', 'admin1', NULL),
(15, 'Start-Over Concealer  ', '  \r\nConcealer dengan formula yang bisa dibangun sesuai kebutuhan, memberikan hasil akhir matte yang mulus untuk menutupi ketidaksempurnaan secara menyeluruh dan memperbaiki tampilan kulit dengan sempurna.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" dengan alat sempurna untuk menyembunyikan kekurangan dan tampil lebih percaya diri.  \r\n\r\nEsensi Alami:  \r\n- Partikel Total Cover, Teknologi Shock-proof, Miracle Bloom™, Purslane, dan Air Laut Magma Jeju membantu menenangkan dan mengurangi kemerahan pada kulit.  \r\n\r\nTanpa Zat Berbahaya:  \r\n- Bebas Kekejaman (Cruelty-Free)  \r\n- Bebas Talc, Paraben, Alkohol, BHA/BHT, dan Gluten  \r\n\r\nMomen Kebahagiaan:  \r\nSembunyikan semua ketidaksempurnaan dengan concealer matte yang mulus, dan bersiaplah menjalani hari yang sempurna.  \r\n\r\nInspirasi Kami:  \r\nTerinspirasi dari kemandirian. Tidak ada kata terlambat untuk memulai kembali. Lakukan dengan caramu sendiri, seperti menyempurnakan kulit Miracle Bloom™ milikmu. Tidak ada yang bisa menilai dirimu.  ', '20241015041502.jpg', 'Start-Over-Concealer--', '7', '2024-10-15', 'admin1', NULL),
(16, 'Soul-Matte Loose Powder  ', '\r\nBedak tabur dengan aroma sakura yang lembut dan sensasi dingin, dirancang untuk menutupi pori-pori dan memberikan tampilan bebas kilap.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" bersama bedak pengontrol sebum ini.  \r\n\r\nEsensi Alami:  \r\n- Mengandung Clay Manicouagan dari Kanada dan Menthol untuk mengontrol pori-pori dan sebum.  \r\n\r\nTerinspirasi dari Alam:  \r\nDiperkaya dengan Miracle Bloom™ Essence, Clay Manicouagan dari Kanada, Zinc PCA, dan Seamless Lock Tech untuk menyamarkan pori-pori dan mengurangi produksi minyak berlebih.  \r\n\r\nMomen Kebahagiaan:  \r\nHembusan aroma sakura yang menyegarkan membawa kamu dalam pusaran kesempurnaan matte sepanjang hari.  \r\n\r\nInspirasi Kami:  \r\nTerinspirasi dari hubungan kita, bedak tabur yang kami hadirkan harus seterang, seindah, dan sebersih persahabatan kita.  ', '20241015041720.jpg', 'Soul-Matte-Loose-Powder--', '7', '2024-10-15', 'admin1', NULL),
(17, 'Bloomatte Hi-Cover Foundation Balm  ', '\r\nFoundation balm berdaya tutup tinggi yang memberikan hasil akhir matte blurry tahan lama. Diformulasikan dengan tekstur ringan dan bebas kilap yang mudah menyatu di kulit.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" melalui Hi-Cover Foundation Balm yang tahan lama.  \r\n\r\nEsensi Alami:  \r\n- 0% Alkohol  \r\n- Bebas Kekejaman (Cruelty-Free)  \r\n- Ramah Vegan  \r\n- Teruji Dermatologis  \r\n- Teruji Non-komedogenik  \r\n\r\nTerinspirasi dari Alam:  \r\nDiperkaya dengan Miracle Bloom™ Essence, Minyak Rapeseed, Teknologi Double Lock, kontrol minyak hingga 16 jam, dan SPF 50+ PA+++ untuk tampilan matte blurry yang tahan lama.  \r\n\r\nMomen Kebahagiaan:  \r\nSeperti menikmati dessert creamy di taman bunga, sungguh momen yang membahagiakan.  \r\n\r\nInspirasi Kami:  \r\nTerinspirasi dari ketekunan. Dalam masa sulit, ketekunan dibutuhkan untuk tetap kuat dan siap menghadapi masa depan bersama Miracle Bloom™.  ', '20241015041912.jpg', 'Bloomatte-Hi-Cover-Foundation-Balm--', '7', '2024-10-15', 'admin1', NULL),
(18, 'Bloomatte 6-in-1 Foundation Stick  ', '\r\nFoundation stick multifungsi dengan dua ujung, dirancang untuk kemudahan pemakaian. Memberikan coverage ringan yang bisa dibangun sesuai kebutuhan, memastikan rutinitas makeup praktis dan bebas repot. Non-komedogenik.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" dengan foundation stick 6-in-1 yang dilengkapi 40% Active Hydrators.  \r\n\r\nEsensi Alami:  \r\n- 0% Alkohol  \r\n- Bebas Kekejaman (Cruelty-Free)  \r\n- Ramah Vegan  \r\n- Teruji Dermatologis  \r\n- Teruji Non-komedogenik  \r\n\r\nTerinspirasi dari Alam:  \r\nDilengkapi dengan Double Lock Technology (SUPER FIT x MMF* POWER LOCK TECH), esens terkonsentrasi 40%, dan formula ramah jerawat untuk hasil akhir matte yang halus dan tahan lama.  \r\n\r\nMomen Kebahagiaan:  \r\nRaih tampilan kulit natural yang indah dengan foundation stick serbaguna dan praktis untuk dibawa ke mana saja!  ', '20241015042036.jpg', 'Bloomatte-6-in-1-Foundation-Stick--', '7', '2024-10-15', 'admin1', NULL),
(19, 'Bloomatte Stay Confident 2-in-1 Foundation  ', '\r\nFoundation 2-in-1 dengan tekstur ringan dan daya tahan hingga 16 jam, dilengkapi balm concealer berdaya tutup tinggi. Memberikan hasil akhir matte natural yang mulus dan diperkaya dengan bahan-bahan yang baik untuk kulit, cocok untuk semua jenis kulit. Non-komedogenik.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" dengan foundation 2-in-1 berdaya tutup tinggi ini.  \r\n\r\nEsensi Alami:  \r\n- 0% Alkohol  \r\n- Bebas Kekejaman (Cruelty-Free)  \r\n- Ramah Vegan  \r\n- Teruji Dermatologis  \r\n- Teruji Non-komedogenik  \r\n\r\nTerinspirasi dari Alam:  \r\nDiperkaya dengan Miracle Bloom™ Essence dan DOUBLE LOCK TECH untuk memberikan nutrisi menyeluruh dan tampilan flawless berdaya tutup tinggi yang tahan sepanjang hari.  \r\n\r\nMomen Kebahagiaan:  \r\nTekstur ringan dan airy dengan foundation full coverage yang dilengkapi balm concealer. Tutupi kemerahan dan noda, seakan kulitku memang terlahir sempurna!  \r\n\r\nInspirasi Kami:  \r\nTerinspirasi dari ketekunan. Dalam masa sulit, ketekunan dibutuhkan untuk tetap kuat dan siap menghadapi masa depan bersama Miracle Bloom™.  ', '20241015042143.jpg', 'Bloomatte-Stay-Confident-2-in-1-Foundation--', '7', '2024-10-15', 'admin1', NULL),
(20, 'Fine to Refine Compact Powder  ', '\r\nBedak padat ultra-ringan dengan daya tahan lama dan SPF 25 PA++ yang menyerap minyak dan mengurangi kilap, memberikan hasil akhir matte seperti airbrushed.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" bersama bedak padat airbrush yang luar biasa ini.  \r\n\r\nEsensi Alami:  \r\n- Organic Miracle Powder, Ultra Shield Technology, tekstur airbrushed, Miracle Bloom™, dan SPF 25 PA++ untuk kulit yang lembap, ternutrisi, dan terlindungi.  \r\n\r\nTanpa Zat Berbahaya:  \r\n- Bebas Kekejaman (Cruelty-Free)  \r\n- Bebas Talc, Paraben, Alkohol, BHA/BHT, dan Gluten  \r\n\r\nMomen Kebahagiaan:  \r\nDapatkan makeup bebas kilap dan terlindungi dari sinar UV, hingga semua orang mengira kulitmu memang terlahir sempurna!  \r\n\r\nInspirasi Kami:  \r\nTerinspirasi dari ketekunan. Dalam masa sulit, ketekunan dibutuhkan untuk tetap kuat dan siap menghadapi masa depan bersama Miracle Bloom™.  ', '20241015042300.jpg', 'Fine-to-Refine-Compact-Powder--', '7', '2024-10-15', 'admin1', NULL),
(21, 'True Beauty Inside Cushion  ', 'Cushion berdaya tutup tinggi yang diperkaya dengan Miracle Bloom™ untuk tampilan matte flawless hingga 24 jam, membuat touch-up di mana saja semakin mudah.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" dengan cushion starter kecantikan sejati ini.  \r\n\r\nEsensi Alami:  \r\n- 0% Alkohol  \r\n- Bebas Kekejaman (Cruelty-Free)  \r\n- Ramah Vegan  \r\n- Teruji Dermatologis  \r\n\r\nTerinspirasi dari Alam:  \r\nDiperkaya dengan Miracle Bloom™ Essence, 3D Lasting Powder, dan SPF 45 PA+++ untuk melindungi kulit dari kerusakan radikal bebas, sambil menjaga kesehatan dan kesempurnaan kulit.  \r\n\r\nMomen Kebahagiaan:  \r\nKejutan! Begitulah saat kami menemukan cushion beraroma floral dengan hasil akhir matte flawless.  \r\n\r\nInspirasi Kami:  \r\nTerinspirasi dari kepercayaan diri. Kecantikan sejati datang dari hati yang penuh percaya diri. Jangan pernah meremehkan tampilan makeup-mu bersama Miracle Bloom™.  ', '20241015042419.jpg', 'True-Beauty-Inside-Cushion--', '7', '2024-10-15', 'admin1', NULL),
(22, 'Gold Makes Gorgeous Lip Balm', 'Lip balm mewah yang berubah warna, diperkaya dengan serpihan emas untuk menghidrasi, melindungi, dan menutrisi bibir Anda.  \r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRangkul filosofi kecantikan \"B+N+B\" dengan Lip Balm Serpihan Emas yang eksotis ini.  \r\n\r\nEsensi Alami:  \r\n- 0% Alkohol  \r\n- Bebas Kekejaman (Cruelty-Free)  \r\n- Ramah Vegan  \r\n\r\nTerinspirasi dari Alam:  \r\nDiperkaya dengan bahan-bahan alami seperti Serpihan Emas Mewah, Minyak Bunga Mawar, Minyak Bunga Sakura, Tri-Peptide, dan Vitamin E yang memberikan nutrisi dan hidrasi untuk menjaga bibir Anda tetap sehat.  \r\n\r\nMomen Kebahagiaan:  \r\nNikmati hidrasi mewah untuk bibir yang bercahaya dan sehat.  \r\n\r\nBahan Khusus:  \r\n1. **Serpihan Emas Mewah**  \r\n   Memiliki sifat antioksidan untuk melindungi bibir Anda.  \r\n\r\n2. **Minyak Bunga Mawar & Minyak Bunga Sakura**  \r\n   Menghidrasi dan menutrisi bibir, menjaga kesehatan bibir Anda.  \r\n\r\n3. **Tri-Peptide**  \r\n   Membantu menjaga bibir tetap kenyal dan sehat.  \r\n\r\n4. **Vitamin E**  \r\n   Menyediakan sifat antioksidan untuk melindungi bibir Anda.  \r\n\r\n', '20241015042924.jpg', 'Gold-Makes-Gorgeous-Lip-Balm', '8', '2024-10-15', 'admin1', NULL),
(25, 'Silver Makes Stunning Lip Balm  ', '\r\nLip balm menarik yang dapat berubah warna, diperkaya dengan bintik-bintik perak untuk melembapkan, melindungi, dan menutrisi bibir Anda.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan “B+N+B” dengan Stunning Silver Flecks Lip Balm:\r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan bahan-bahan alami seperti bintik-bintik perak, minyak bunga mawar, minyak bunga sakura, Tripeptida, dan Vitamin E, yang memberikan nutrisi serta hidrasi agar bibir selalu sehat.  \r\n- Bliss Moments: Manjakan bibir Anda sambil menikmati hidrasi sehat yang glamor.\r\n\r\nBahan Spesial:\r\n\r\n1. Bintik-bintik Perak Menarik  \r\n   Membantu melembapkan dan melindungi bibir.\r\n\r\n2. Minyak Bunga Mawar & Minyak Bunga Sakura  \r\n   Melembapkan dan menutrisi bibir agar tetap sehat.\r\n\r\n3. Tri-Peptida  \r\n   Membantu menjaga bibir tetap berisi dan sehat.\r\n\r\n4. Vitamin E  \r\n   Menyediakan antioksidan untuk melindungi bibir.\r\n', '20241016120017.jpg', 'Silver-Makes-Stunning-Lip-Balm--', '8', '2024-10-16', 'admin1', NULL),
(26, 'Plum Makes Plumping Lip Gloss  ', '\r\nLip gloss dengan efek plumping dan kelembapan tahan lama hingga 24 jam, membuat bibir Anda terlihat berkilau, penuh, dan ternutrisi dengan indah.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dengan Plum Makes Plumping Lip Gloss untuk bibir sehat dan penuh:\r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan bahan alami seperti 5x Miracle Moisture Repair, Asam Hialuronat, Tocopherol (Vitamin E), dan Ekstrak Plum untuk memberikan nutrisi yang kaya pada bibir.  \r\n- Bliss Moments: Tingkatkan pesona bibir Anda dengan kelembapan 24 jam dan kesempurnaan plumping dari lip gloss kami.\r\n\r\nBahan Spesial:\r\n\r\n1. Ekstrak Plum  \r\n   Kaya akan antioksidan seperti Vitamin C dan Vitamin E, yang memberikan perlindungan antioksidan agar bibir tetap sehat.\r\n\r\n2. E-Hyaluron  \r\n   Kombinasi Vitamin E sebagai antioksidan dan Asam Hialuronat dengan berbagai ukuran molekul untuk efek pelembap tiga dimensi, yang langsung menghidrasi, mengunci kelembapan, dan memberikan perawatan dari dalam untuk bibir halus. \r\n\r\n3. 5X Miracle Moisture Repair  \r\n   Mengandung minyak biji Limnanthes Alba (Meadowfoam), minyak biji Helianthus Annuus (Bunga Matahari), Butyrospermum Parkii (Shea) Butter, minyak biji Rubus Idaeus (Raspberry), dan Squalane untuk melembapkan bibir secara mendalam. \r\n\r\n4. Teknologi Plumping  \r\n   Memberikan tampilan bibir yang sehat, berisi, dan berkilau sepanjang hari.', '20241016120233.jpg', 'Plum-Makes-Plumping-Lip-Gloss--', '8', '2024-10-16', 'admin1', NULL),
(27, 'No Gravity Transferproof Matte Lipstick  ', '\r\nLipstik matte transferproof dengan daya tahan hingga 16 jam dan diperkaya serum untuk menjaga keindahan bibir dari dalam ke luar, dari pagi hingga malam.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dengan No Gravity Transferproof Matte Lipstick:\r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan bahan alami seperti Minyak Calendula, Minyak Biji Bunga Matahari, Shea Butter, Minyak Biji Jojoba, Sodium Hyaluronate, Squalane, dan Teknologi Transferproof untuk menutrisi bibir dari dalam dan membuatnya tetap indah di luar.  \r\n- Bliss Moments: Kunci warna pada bibir sepanjang hari dan malam dengan lipstik matte transferproof ini.\r\n\r\nBahan Spesial:  \r\n\r\n1. Minyak Calendula  \r\n   Menenangkan dan melindungi bibir agar tetap sehat.  \r\n\r\n2. Minyak Biji Bunga Matahari  \r\n   Melembapkan dan memberikan nutrisi alami pada bibir.  \r\n\r\n3. Shea Butter  \r\n   Melembutkan dan menjaga kelembapan bibir.  \r\n\r\n4. Minyak Biji Jojoba  \r\n   Membantu mempertahankan kelembapan dan memberikan perlindungan alami.  \r\n\r\n5. Sodium Hyaluronate  \r\n   Menghidrasi bibir secara mendalam dan menjaga kelembapannya.  \r\n\r\n6. Squalane  \r\n   Menutrisi dan membantu menjaga tekstur bibir tetap halus.  \r\n\r\n7. Teknologi Transferproof  \r\n   Memastikan warna tidak mudah pudar atau berpindah, menjaga penampilan bibir tetap segar sepanjang hari.  ', '20241016120504.jpg', 'No-Gravity-Transferproof-Matte-Lipstick--', '8', '2024-10-16', 'admin1', NULL),
(28, 'Apple Makes Adorable Mouses Tint  ', 'Mousse tint ajaib yang diperkaya dengan Teknologi Watery Film dan 8X Kebaikan Alami untuk menjaga bibir tetap halus dan lembap secara memikat.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan “B+N+B” dengan apple-mood staining mousse lip tint:\r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan 8X Kebaikan Alami dan Teknologi Watery Film untuk memberikan kelembutan dan kelembapan pada bibir Anda.  \r\n- Bliss Moments: Saat kenyamanan bertemu kesegaran, tint mousse ringan ini memberikan keindahan tanpa usaha!\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh [kepercayaan diri]. Kecantikan sejati datang dari seorang gadis dengan hati yang percaya diri. Jangan pernah meremehkan tampilan makeup Anda dengan Miracle Bloom™.', '20241016120641.jpg', 'Apple-Makes-Adorable-Mouses-Tint--', '8', '2024-10-16', 'admin1', NULL),
(29, 'Lily Makes Luminous Glow Tint  ', '\r\nGlow tint dengan efek melembapkan 8x dan stain bercahaya selama 12 jam, memberikan hasil akhir bibir yang berkilau dan juicy.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan “B+N+B” dengan Lily luminous glow tint untuk tampilan bibir juicy yang sempurna:\r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan bahan alami seperti Ekstrak Lilium Candidum (Bulb), E-Hyaluron, 5x Miracle Moisture Repair, dan Glow Fit Technology untuk memberikan nutrisi kaya pada bibir.  \r\n- Bliss Moments: Dapatkan glowing tint hanya dalam sekali oles, membuat bibir bercahaya dan juicy terlihat begitu effortless.', '20241016120807.jpg', 'Lily-Makes-Luminous-Glow-Tint--', '8', '2024-10-16', 'admin1', NULL),
(30, 'Ceramoist Glow Lip Serum  ', '\r\nSerum bibir 3-in-1 yang diperkaya dengan Vitamin E, 3 jenis Minyak Berharga, dan Ceramide untuk kelembapan tahan lama serta membantu mengurangi kekusaman bibir.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dengan lip serum serbaguna dan menyenangkan ini:\r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan Minyak Biji Anggur, Minyak Biji Jojoba, Minyak Biji Macadamia, Vitamin E, dan Ceramide untuk menutrisi, melembapkan, dan secara bertahap mencerahkan bibir gelap.  \r\n- Bliss Moments: Nikmati kilauan dengan aroma peach dan hasil akhir yang ringan di bibir, terasa sangat lembap dan tampak manis!\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh [kepercayaan diri]. Kecantikan sejati datang dari seorang gadis dengan hati yang percaya diri. Jangan pernah meremehkan tampilan makeup Anda dengan Miracle Bloom™.\r\n\r\nApa Itu:  \r\nSerum bibir 3-in-1 yang diperkaya dengan Vitamin E, 3 jenis Minyak Berharga, dan Ceramide untuk kelembapan tahan lama serta membantu mengurangi kekusaman bibir.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dengan lip serum serbaguna dan menyenangkan ini:\r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan Minyak Biji Anggur, Minyak Biji Jojoba, Minyak Biji Macadamia, Vitamin E, dan Ceramide untuk menutrisi, melembapkan, dan secara bertahap mencerahkan bibir gelap.  \r\n- Bliss Moments: Nikmati kilauan dengan aroma peach dan hasil akhir yang ringan di bibir, terasa sangat lembap dan tampak manis!\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh [kepercayaan diri]. Kecantikan sejati datang dari seorang gadis dengan hati yang percaya diri. Jangan pernah meremehkan tampilan makeup Anda dengan Miracle Bloom™.', '20241016120944.jpg', 'Ceramoist-Glow-Lip-Serum--', '8', '2024-10-16', 'admin1', NULL),
(31, 'Full Bloom Transferproof Matte Tint  ', '\r\nTint creamy-matte ringan yang mudah diaplikasikan untuk warna bibir tahan lama, nyaman, dan tidak transfer.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dengan tint transferproof yang nyaman ini:\r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan bahan alami seperti Triple Flower Essence, E-Hyaluron MoistureInfused, dan Color Booster Technology untuk menjaga bibir tetap indah dengan kenyamanan maksimal.  \r\n- Bliss Moments: Tak ada yang lebih menyenangkan selain memetik bunga di taman sambil memakai matte tint ringan dengan aroma bunga delima yang segar dan tahan sepanjang hari.\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh [kepercayaan diri]. Kecantikan sejati datang dari seorang gadis dengan hati yang percaya diri. Jangan pernah meremehkan tampilan makeup Anda dengan Miracle Bloom™.', '20241016121110.jpg', 'Full-Bloom-Transferproof-Matte-Tint--', '8', '2024-10-16', 'admin1', NULL),
(32, 'Cherry Makes Cheerful Lip Velvet  ', '\r\nWarna bibir mousse velvety dengan aroma ceri yang ceria, mengandung Minyak Organik Macadamia, Vitamin E, dan Asam Hialuronat untuk bibir yang penuh dan lembap.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dari warna bibir velvety ceria ini:\r\n\r\n- Bare Essentials: Minyak Organik Macadamia dari Australia, Vitamin E, dan Asam Hialuronat untuk bibir yang penuh dan lembap.  \r\n- No Harm: Bebas dari Kekejaman, Bebas Paraben, Bebas Alkohol, Bebas Minyak Mineral, Bebas Phthalates, Bebas Talc, Bebas BHA/BHT, Bebas Gluten.  \r\n- Bliss Moments: Velvety adalah keharusan, dan kekuatan ceri yang lezat menantimu!\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh momen cerah, saat menikmati kue red cherry velvet bersama teman-teman terbaikku, sangat ceria dan berkesan.', '20241016121231.jpg', 'Cherry-Makes-Cheerful-Lip-Velvet--', '8', '2024-10-16', 'admin1', NULL),
(33, 'Peach Makes Perfect Lip Tint  ', '\r\nLip tint beraroma peach manis yang memberikan tampilan bibir berwarna stain dan berkilau dengan 6 Kebaikan Alami serta warna lembut dan berkilau dari gel susu.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dari lip tint peach yang sempurna ini:\r\n\r\n- Bare Essentials: Mengandung 6 bahan Kebaikan Alami untuk menjaga bibir Anda tetap terawat.  \r\n- No Harm: Bebas dari Kekejaman, Bebas Paraben, Bebas Alkohol, Bebas Minyak Mineral, Bebas Phthalates, Bebas Talc, Bebas BHA/BHT, Bebas Gluten.  \r\n- Bliss Moments: Cukup satu oles untuk mendapatkan tint glossy peach, olesan berikutnya untuk bibir yang penuh dan manis.\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh liburanku ke Pulau Jeju, menikmati segelas air berkilau peach di bawah sinar matahari, dan aku masih merasakan aroma peach di bibirku.', '20241016121335.jpg', 'Peach-Makes-Perfect-Lip-Tint--', '8', '2024-10-16', 'admin1', NULL),
(34, 'Dream Chaser Quad Eyeshadow Palette  ', '\r\nPalet eyeshadow yang ramah pemula dengan nuansa matte, shimmer, dan glitter yang mudah dibaurkan pada kelopak mata, menciptakan tampilan mata yang alami dan terpigmentasi.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dari tampilan mata yang memikat dan bermimpi. \r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan bahan alami seperti Minyak Macadamia, Mentega Shea, dan Vitamin E untuk menjaga kelopak mata tetap lembap dan terawat.  \r\n- Bliss Moments: Warna-warna yang menawan yang menginspirasi kreativitas untuk tampilan mata yang menakjubkan.\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh tampilan memukau bintang pop di konser magis yang memikat perhatian.', '20241016122050.jpg', 'Dream-Chaser-Quad-Eyeshadow-Palette--', '9', '2024-10-16', 'admin1', NULL),
(35, 'Roll to High Mascara  ', 'Maskara pemanjang yang diperkaya dengan formula yang menutrisi bulu mata dan ekstensi serat, memberikan tampilan bulu mata yang lebih terangkat, lebih panjang, dan terlihat alami melengkung.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dari maskara Roll to High untuk tampilan bulu mata terangkat instan.\r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan.  \r\n- Nature Inspired: Diperkaya dengan bahan alami seperti Minyak Zaitun, Vitamin E, Minyak Jojoba, dan Peptida untuk bulu mata yang ternutrisi dan diperkuat.  \r\n- Bliss Moments: Dilengkapi dengan kuas maskara melengkung dan berbristle mikro 360 derajat yang memungkinkan pegangan tepat pada setiap bulu mata dari akar hingga ujung, memberikan tampilan bulu mata panjang dan terangkat dalam satu kali penggulungan!\r\n\r\nBahan Khusus:  \r\n\r\n1. 4X Polipeptida  \r\n   Mengandung Blue Copper Peptide, Tripeptide, Tetrapeptide, dan Pentapeptide yang membantu menjaga bulu mata dari kehilangan dan kerusakan.\r\n\r\n2. Minyak Penutrisi Bulu Mata  \r\n   Vitamin E, Minyak Zaitun, dan Minyak Jojoba membantu menjaga fungsi folikel bulu mata yang sehat.\r\n\r\n3. Ekstensi Serat  \r\n   Diformulasikan dengan serat untuk memberikan ekstensi halus pada bulu mata Anda, menghasilkan tampilan yang lebih panjang dan melengkung tanpa gumpalan.\r\n\r\n4. Vitamin E  \r\n   Mencegah kerusakan dan mengkondisikan bulu mata Anda, memberikan tampilan yang lebih bervolume.\r\n\r\n5. Lilin Carnauba  \r\n   Lilin carnauba membantu mengangkat dan menahan bulu mata lebih kuat dan lebih lama.', '20241016122313.jpg', 'Roll-to-High-Mascara--', '9', '2024-10-16', 'admin1', NULL),
(36, 'Lady Pink Mascara  ', '\r\n\r\nThe big enough \"Eye\"roller!  \r\n \r\nSebuah maskara dengan Minyak Jojoba yang menutrisi rambut dan kuas bristle besar yang menjangkau dari akar hingga ujung untuk bulu mata yang lebih penuh dan tebal.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dari big enough \"Eye\"roller!\r\n\r\n- Bare Essentials: Capixyl™ dan Minyak Jojoba untuk bulu mata yang ternutrisi dan diperkuat.  \r\n- No Harm: Bebas Kekejaman, Bebas Paraben, Bebas Alkohol, Bebas Minyak Mineral, Bebas Phthalates, Bebas Formaldehid, Bebas BHA/BHT, Bebas Gluten.  \r\n- Bliss Moments: Bulu mata gadis bisa terlihat seksi, volumetrik, dan menawan, buktikan!\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh seorang wanita muda yang siap untuk babak baru dalam hidupnya. Kamera, Rolling, Action!', '20241016122453.jpg', 'Lady-Pink-Mascara--', '9', '2024-10-16', 'admin1', NULL),
(37, 'Locklook Matte Setting Spray  ', '\r\nSebuah semprotan pengatur matte tanpa bobot yang mengunci makeup hingga 16 jam dengan efek tahan air, tahan keringat, dan tidak transfer, serta memberikan kontrol minyak yang baik untuk menjaga tampilan matte yang sempurna.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dari kesempurnaan kecantikan matte yang flawless.  \r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan, Teruji Dermatologi.  \r\n- Nature Inspired: Diperkaya dengan bahan alami RealCalm dan Miracle Bloom™ Essence, Teknologi Stay-On Lock, serta Efek Kontrol Minyak 2X untuk menjaga makeup tahan air, tahan keringat, dan tidak transfer, serta membantu mengontrol minyak berlebih pada kulit untuk tampilan matte yang tahan lama.  \r\n- Bliss Moments: Nosel ultra-halus yang lembut dengan aroma bunga persik, membuat Anda jatuh cinta dengan tampilan matte!\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh [confident]. Kecantikan sejati berasal dari seorang gadis yang memiliki hati yang percaya diri. Jangan pernah meremehkan tampilan makeup Anda dengan Miracle Bloom™.', '20241016122608.jpg', 'Locklook-Matte-Setting-Spray--', '10', '2024-10-16', 'admin1', NULL),
(38, 'Locklook Dewy Setting Spray  ', '\r\nSebuah semprotan pengatur dewy tanpa bobot yang mengunci makeup hingga 16 jam dengan efek tahan air, tahan keringat, dan tidak transfer, serta memberikan kelembapan yang baik untuk mempertahankan tampilan dewy yang bercahaya.\r\n\r\nFilosofi Kecantikan B+N+B:  \r\nRaih filosofi kecantikan \"B+N+B\" dari kabut rahasia dewy yang bercahaya.  \r\n\r\n- Bare Essentials: 0% Alkohol, Bebas Kekejaman, Ramah Vegan, Teruji Dermatologi.  \r\n- Nature Inspired: Diperkaya dengan bahan alami Real Calm, Miracle Bloom™ Essence, Teknologi Stay-On Lock, dan 4X Bahan Hidrasi yang menjaga makeup tahan air, tahan keringat, dan tidak transfer, serta menjaga kelembapan kulit untuk tampilan dewy yang tahan lama.  \r\n- Bliss Moments: Nosel kabut super-halus bersama dengan kebahagiaan aroma bunga persik segar. Kelembapan yang baik, suasana hati yang baik!\r\n\r\nInspirasi Kami:  \r\nTerinspirasi oleh [confident]. Kecantikan sejati berasal dari seorang gadis yang memiliki hati yang percaya diri. Jangan pernah meremehkan tampilan makeup Anda dengan Miracle Bloom™.', '20241016122735.jpg', 'Locklook-Dewy-Setting-Spray--', '10', '2024-10-16', 'admin1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id_saran` int NOT NULL,
  `isi_saran` text NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id_saran`, `isi_saran`, `tanggal`, `nama`, `email`) VALUES
(5, 'produk kurang banyak', '2024-12-16', 'marsha najla soraya', 'najlasorayam@gmail.com'),
(9, 'warna nyaa jangan monoton ya !', '2024-12-16', 'marklee', 'mark@gmail.com'),
(10, 'produk kurang banyak', '2024-12-17', 'marsha', 'marsha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(70) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(50) NOT NULL,
  `recent_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`, `recent_login`) VALUES
(11, 'admin1', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'Admin', NULL),
(12, 'admin2', 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'Admin', NULL),
(13, 'user1', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'Kontributor', NULL),
(14, 'user2', 'user2', '7e58d63b60197ceb55a1c487989a3720', 'Kontributor', NULL),
(18, 'marsha', 'marsha', '1d1754a54519ceb89e95b4ee11efac51', 'Kontributor', NULL),
(20, 'najlasoraya', 'mnajla', '93279e3308bdbbeed946fc965017f67a', 'admin', NULL),
(23, 'fiyona', 'pio', '93279e3308bdbbeed946fc965017f67a', 'Admin', NULL),
(25, 'indah', 'ayu', 'e10adc3949ba59abbe56e057f20f883e', 'Kontributor', NULL),
(26, 'sukmawati', 'ayu', 'e10adc3949ba59abbe56e057f20f883e', 'Kontributor', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balasan_saran`
--
ALTER TABLE `balasan_saran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_saran` (`id_saran`);

--
-- Indexes for table `caraousel`
--
ALTER TABLE `caraousel`
  ADD PRIMARY KEY (`id_caraosel`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balasan_saran`
--
ALTER TABLE `balasan_saran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `caraousel`
--
ALTER TABLE `caraousel`
  MODIFY `id_caraosel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `balasan_saran`
--
ALTER TABLE `balasan_saran`
  ADD CONSTRAINT `balasan_saran_ibfk_1` FOREIGN KEY (`id_saran`) REFERENCES `saran` (`id_saran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
