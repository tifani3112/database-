-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 06:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` char(4) NOT NULL,
  `adminNAMA` varchar(50) NOT NULL,
  `adminEMAIL` varchar(100) NOT NULL,
  `adminPASSWORD` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminNAMA`, `adminEMAIL`, `adminPASSWORD`) VALUES
('AD01', 'Jihoon', 'ayangpaji@gmail.com', 'ayangnyaaku'),
('AD02', 'Sehun', 'kamunanyea@gmail.com', '12345678'),
('AD03', 'tifani', 'tifani@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `areaID` char(4) NOT NULL,
  `areaNama` char(35) NOT NULL,
  `areaWilayah` char(35) NOT NULL,
  `areaKeterangan` varchar(500) NOT NULL,
  `kabupatenKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`areaID`, `areaNama`, `areaWilayah`, `areaKeterangan`, `kabupatenKODE`) VALUES
('AR01', ' Desa Jakan', 'Kelurahan Parseh, Kecamatan Socah,', 'Kabupaten Bangkalan, Jawa Timur', 'KB05'),
('AR02', 'Pecatu', ' Kuta Sel., Kabupaten Badung', 'Bali', 'KB01'),
('AR03', 'Penelokan,', ' Kec. Kintamani, Kab. Ban', 'Bali', 'KB02'),
('AR04', 'Wanawisata Batu', 'Jalan Pancurantujuh', 'Jawa Tengah', 'KB03'),
('AR06', 'Patengan', 'Kec. Rancabali', 'Bandung, Jawa Barat', 'KB06');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `beritaID` char(4) NOT NULL,
  `beritaJUDUL` varchar(100) NOT NULL,
  `beritaINTI` mediumtext NOT NULL,
  `penulis` char(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tanggalTerbit` date NOT NULL,
  `destinasiID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`beritaID`, `beritaJUDUL`, `beritaINTI`, `penulis`, `penerbit`, `tanggalTerbit`, `destinasiID`) VALUES
('BR02', 'Kampung Cai Rancaupas Baru Dibuka, Tapi Sudah Banyak yang Booking untuk Berkemah', 'Menurut, supervisor \"Camping Groud, memang sudah bisa diuji cobakan, tapi kami masih persiapan dulu, mungkin besok atau lusa (uji coba dibuka), kalau memang sudah siap, ya oke,\" ujar Deddy, saat dihubungi tribun jabar, Minggu (14/6/2020).', 'Jabar.tribunnews.com', 'Jabar.tribunnews.com', '2020-06-14', 'KD04');

-- --------------------------------------------------------

--
-- Table structure for table `cafe`
--

CREATE TABLE `cafe` (
  `cafeID` char(4) NOT NULL,
  `cafeNAMA` varchar(500) NOT NULL,
  `cafeALAMAT` text NOT NULL,
  `cafeKET` text NOT NULL,
  `destinasiID` char(4) NOT NULL,
  `cafeFOTO` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cafe`
--

INSERT INTO `cafe` (`cafeID`, `cafeNAMA`, `cafeALAMAT`, `cafeKET`, `destinasiID`, `cafeFOTO`) VALUES
('CF01', 'Suka Espresso', 'Jl. Labuansait No.10 Pecatu, Kuta Sel., Kabupaten Badung, Pe', 'Kafe, Eropa, Australia, Fusion, Makanan Sehat', 'KD02', 'cafe1.jpg'),
('CF03', 'Red Chili, Purwokerto', 'Jln. Baturaden, Purwokerto 53124 Indonesia', 'Asia, Indonesia', 'KD01', '3.jpg'),
('CF04', 'Wangi Padi Resto', 'Jl. Raya Soreang, Ciwidey 40972 Indonesia', 'Kafe, Asia, Indonesia', 'KD04', 'wangi-padi-resto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `destinasiID` char(5) NOT NULL,
  `destinasiNama` varchar(35) NOT NULL,
  `destinasiAlamat` varchar(500) NOT NULL,
  `KategoriID` char(4) NOT NULL,
  `areaID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`destinasiID`, `destinasiNama`, `destinasiAlamat`, `KategoriID`, `areaID`) VALUES
('KD01', 'Kebun Raya Baturraden', 'alan Pancurantujuh-Wanawisata Baturraden, Purwokerto, Dusun III Berubahan, Kemutug Lor, Baturraden, Banyumas, Jawa Tengah', 'WT01', 'AR04'),
('KD02', 'Pantai Thomas', 'terletak di Desa Pecatu, Kecamatan Kuta Selatan, Kabupaten Badung, Bali', 'WT03', 'AR02'),
('KD04', 'Kampung Cai Ranca Upas', ' Jl. Raya Ciwidey - Patengan No. KM. 11, Patengan, Kec. Rancabali, Bandung, Jawa Barat 40973', 'WT01', 'AR06');

-- --------------------------------------------------------

--
-- Table structure for table `fotodestination`
--

CREATE TABLE `fotodestination` (
  `fotoID` char(5) NOT NULL,
  `fotoNama` char(100) NOT NULL,
  `destinasiID` char(4) NOT NULL,
  `fotoFile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fotodestination`
--

INSERT INTO `fotodestination` (`fotoID`, `fotoNama`, `destinasiID`, `fotoFile`) VALUES
('KD01', 'Pantai', 'KD01', 'histori5.jpg'),
('KD02', 'Gunung', 'AR02', 'histori7.jpg'),
('KD03', 'Hutan', 'KD01', 'histori9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotelID` char(4) NOT NULL,
  `hotelNAMA` varchar(100) NOT NULL,
  `hotelALAMAT` varchar(500) NOT NULL,
  `hotelKET` varchar(500) NOT NULL,
  `hotelFOTO` text NOT NULL,
  `areaID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotelID`, `hotelNAMA`, `hotelALAMAT`, `hotelKET`, `hotelFOTO`, `areaID`) VALUES
('HT02', 'Kampung Pa’go Resort Ciwidey', 'Jl. Raya Soreang Km 25, Ciwidey Indonesia', 'Fasilitas : Kolam Renang, Restoran, Parkir Gratis, Keamanan 24 Jam, Check-in 24 Jam', '3.jpg', 'AR06');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kabupatenKODE` char(4) NOT NULL,
  `kabupatenNAMA` char(100) NOT NULL,
  `kabupatenALAMAT` varchar(500) NOT NULL,
  `kabupatenKET` text NOT NULL,
  `kabupatenFOTOICON` varchar(500) NOT NULL,
  `kabupatenFOTOICONKET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`kabupatenKODE`, `kabupatenNAMA`, `kabupatenALAMAT`, `kabupatenKET`, `kabupatenFOTOICON`, `kabupatenFOTOICONKET`) VALUES
('KB01', 'Badung', 'Kabupaten Badung adalah sebuah kabupaten yang terletak di Provinsi Bali, Indonesia', ' Daerah ini yang juga meliputi Kuta dan Nusa Dua adalah sebuah objek wisata yang terkenal. Ibu kotanya berada di Mangupura, dahulu berada di Denpasar.', 'badung.jpg', 'Tari Kecak adalah salah satu tarian Indonesia yang berasal d'),
('KB02', 'Bangli', 'sebuah wilayah kabupaten yang terletak di provinsi Bali, Indonesia', 'Kabupaten Bangli adalah satu-satunya kabupaten di provinsi Bali yang tidak memiliki wilayah laut atau berbatasan langsung dengan laut, sehingga Bangli tidak memiliki pantai di tepi laut', 'bangli.jpg', ' Bangly Regency, Bali, Indonesia: Lake Batur with the Gungun'),
('KB03', 'Kabupaten Banyumas', 'sebuah wilayah kabupaten yang terletak di Provinsi Jawa Tengah', 'Kabupaten Banyumas merupakan bagian dari wilayah budaya Banyumasan, yang berkembang di bagian barat Jawa Tengah. Bahasa yang dituturkan adalah bahasa Banyumasan, yakni salah satu ragam tertua bahasa Jawa yang cukup berbeda dengan dialek standar bahasa Jawa (\"dialek Mataraman\").', 'bayumas.jpg', 'Pemandangan Baturraden dari jembatan.'),
('KB04', 'Bima', 'sebuah kabupaten yang terletak di pulau Sumbawa, provinsi Nusa Tenggara Barat, Indonesia', 'Kabupaten Bima merupakan salah satu Daerah Otonom di Provinsi Nusa Tenggara Barat, terletak di ujung timur dari Pulau Sumbawa bersebelahan dengan Kota Bima (pecahan dari Kota Bima). ', 'bima.jpg', 'Kantor Bupati Kabupaten Bima'),
('KB05', ' Bangkalan', 'sebuah kabupaten di Pulau Madura, Provinsi Jawa Timur, Indonesia. Ibu kotanya adalah Kecamatan Bangkalan. ', 'Kabupaten ini terletak di ujung paling barat Pulau Madura; berbatasan dengan Laut Jawa di utara, Kabupaten Sampang di timur serta Selat Madura di selatan dan barat.', 'bangkalan.jpg', 'Bukit Jaddih'),
('KB06', 'Bandung', 'sebuah wilayah kabupaten yang terletak di Provinsi Jawa Barat, Indonesia', 'Kabupaten Bandung merupakan \"induk\" dari wilayah Bandung Raya yang kemudian dimekarkan menjadi wilayah Kota Bandung, Kota Cimahi dan Kabupaten Bandung Barat. Wilayahnya didominasi oleh wilayah pegunungan yang sejuk, menjadikan tempat wisata alam di Kabupaten Bandung sangatlah beragam. Kabupaten Bandung juga menjadi tempat dari hulu sungai Citarum.', 'bandung.jpg', 'Kawah Putih, Rancabali, Kabupaten Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `KategoriID` char(4) NOT NULL,
  `KategoriNama` char(30) NOT NULL,
  `KategoriKeterangan` varchar(300) NOT NULL,
  `KategoriReferensi` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`KategoriID`, `KategoriNama`, `KategoriKeterangan`, `KategoriReferensi`) VALUES
('WT01', 'Alam', 'Wisata dengan Pemandangan Pantai dan Gunung', 'Buku'),
('WT02', 'Kota', 'Wisata dengan Pemandangan Gedung-gedung Tinggi', 'Sosial Media'),
('WT03', 'Pantai', 'Dekat Laut', 'Social Media'),
('WT04', 'Gunung', 'Dekat Jalan', 'Sosial Media'),
('WT05', 'Taman', 'Lihat kebun ku penuh dengan bunga ada yang putih dan ada yang merah', 'Kepo'),
('WT06', 'HSGHG', 'SHGHSG', 'SHGSH');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kecamatanID` char(4) NOT NULL,
  `kecamatanNAMA` varchar(500) NOT NULL,
  `kecamatanALAMAT` text NOT NULL,
  `kecamatanKET` text NOT NULL,
  `provinsiID` char(4) NOT NULL,
  `kabupatenKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kecamatanID`, `kecamatanNAMA`, `kecamatanALAMAT`, `kecamatanKET`, `provinsiID`, `kabupatenKODE`) VALUES
('K001', 'Bandung', 'Jl. Bakmi Mantul', 'Bakmi Mantul di Jl. Bakmi Mantul', 'P001', 'KB01'),
('K002', 'Jakarta', 'Jl. surabaya', 'Sekitar Bandung dekat jalan', 'P001', 'KB04'),
('KC02', 'Rancabali', 'sebuah kecamatan di Kabupaten Bandung, Provinsi Jawa Barat, Indonesia', 'Sebuah kecamatan hasil pemekaran dari Kecamatan Ciwidey, yang berbatasan langsung dengan Kabupaten Cianjur. Rancabali berjarak 48 km dari kota Bandung, atau sekitar 28 km dari ibukota Kabupaten Bandung, Soreang.', 'PR04', 'KB06');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kotaID` char(4) NOT NULL,
  `kotaNAMA` varchar(500) NOT NULL,
  `kotaALAMAT` text NOT NULL,
  `kotaKET` text NOT NULL,
  `provinsiID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kotaID`, `kotaNAMA`, `kotaALAMAT`, `kotaKET`, `provinsiID`) VALUES
('KT01', 'Bandung', 'Bandung', 'pulau jawa', 'P001'),
('KW02', 'Bandung', 'Terletak 140 km di sebelah tenggara Jakarta, Bandung merupakan kota terbesar di bagian selatan pulau Jawa', 'ibu kota Provinsi Jawa Barat yang sekaligus menjadi pusat pemerintahan dan perekonomian dari Provinsi Jawa Barat, Indonesia. Kota Bandung juga merupakan kota terbesar ketiga di Indonesia setelah Jakarta dan Surabaya.', 'PR04');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `provinsiID` char(4) NOT NULL,
  `provinsiNAMA` varchar(500) NOT NULL,
  `provinsiALAMAT` text NOT NULL,
  `provinsiKET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`provinsiID`, `provinsiNAMA`, `provinsiALAMAT`, `provinsiKET`) VALUES
('PR01', 'Bali', 'Bali, Indonesia', 'Diantara pulau Jawa dan Lombok'),
('PR02', 'Jawa Tengah', 'Jawa Tengah, Indonesia', 'sebuah wilayah provinsi di Indonesia yang terletak di bagian tengah Pulau Jawa'),
('PR04', 'Jawa Barat', 'Jawa Barat, Indonesia', 'sebuah provinsi di Indonesia, ibu kotanya berada di kota Bandung. Pada tahun 2021 penduduk provinsi Jawa Barat berjumlah 48.782.408 jiwa, dengan kepadatan 1.379 jiwa/km2.[3]Berdasarkan sensus BPS pada tahun 2010, penduduk di Jawa Barat merupakan provinsi dengan penduduk terbanyak pertama di Indonesia, penduduk aslinya merupakan suku Sunda.');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantID` char(4) NOT NULL,
  `restaurantNAMA` varchar(500) NOT NULL,
  `restaurantALAMAT` text NOT NULL,
  `restaurantKET` text NOT NULL,
  `destinasiID` char(4) NOT NULL,
  `restaurantFOTO` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurantID`, `restaurantNAMA`, `restaurantALAMAT`, `restaurantKET`, `destinasiID`, `restaurantFOTO`) VALUES
('RT01', 'Bandung', 'Jl. Bakmi Mantul', 'Sekitar Bandung', 'KD01', 'hotel2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`areaID`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`beritaID`);

--
-- Indexes for table `cafe`
--
ALTER TABLE `cafe`
  ADD PRIMARY KEY (`cafeID`);

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`destinasiID`);

--
-- Indexes for table `fotodestination`
--
ALTER TABLE `fotodestination`
  ADD PRIMARY KEY (`fotoID`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotelID`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kabupatenKODE`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KategoriID`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kecamatanID`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kotaID`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`provinsiID`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurantID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
