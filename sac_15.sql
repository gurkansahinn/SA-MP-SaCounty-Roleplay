-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 30 Ağu 2019, 22:01:56
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sac`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aktorler`
--

CREATE TABLE `aktorler` (
  `aktor_id` int(11) NOT NULL,
  `aktor_posx` float NOT NULL,
  `aktor_posy` float NOT NULL,
  `aktor_posz` float NOT NULL,
  `aktor_angle` float NOT NULL,
  `aktor_skin` int(11) NOT NULL,
  `aktor_virtualworld` int(11) NOT NULL,
  `aktor_interior` int(11) NOT NULL,
  `aktor_isim` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araclar`
--

CREATE TABLE `araclar` (
  `arac_id` int(11) NOT NULL,
  `arac_model` int(11) NOT NULL,
  `arac_posx` float NOT NULL,
  `arac_posy` float NOT NULL,
  `arac_posz` float NOT NULL,
  `arac_angle` float NOT NULL,
  `arac_plaka` varchar(32) NOT NULL DEFAULT 'Yok',
  `arac_motor` int(11) NOT NULL,
  `arac_far` int(11) NOT NULL,
  `arac_kilit` int(11) NOT NULL,
  `arac_kaput` int(11) NOT NULL,
  `arac_bagaj` int(11) NOT NULL,
  `arac_tip` int(11) NOT NULL,
  `arac_birlik` int(11) NOT NULL,
  `arac_fiyat` int(11) NOT NULL,
  `arac_renk1` int(11) NOT NULL,
  `arac_renk2` int(11) NOT NULL,
  `arac_benzin` int(11) NOT NULL,
  `arac_km` float NOT NULL,
  `arac_vergi` int(11) NOT NULL,
  `arac_anahtar` int(11) NOT NULL DEFAULT '0',
  `arac_guncelfiyat` int(11) NOT NULL,
  `arac_sahip` varchar(24) NOT NULL DEFAULT 'Yok',
  `arac_nitro` int(11) NOT NULL DEFAULT '0',
  `arac_hidrolik` int(11) NOT NULL DEFAULT '0',
  `arac_stereo` int(11) NOT NULL DEFAULT '0',
  `arac_lamba` int(11) NOT NULL DEFAULT '0',
  `arac_paintjob` int(11) NOT NULL DEFAULT '3',
  `arac_tekerlek` int(11) NOT NULL DEFAULT '0',
  `arac_egzoz` int(11) NOT NULL DEFAULT '0',
  `arac_yazi` int(11) NOT NULL DEFAULT '0',
  `arac_etek` int(11) NOT NULL DEFAULT '0',
  `arac_ontampon` int(11) NOT NULL DEFAULT '0',
  `arac_arkatampon` int(11) NOT NULL DEFAULT '0',
  `arac_spoiler` int(11) NOT NULL DEFAULT '0',
  `arac_solhavadelikleri` int(11) NOT NULL DEFAULT '0',
  `arac_saghavadelikleri` int(11) NOT NULL DEFAULT '0',
  `arac_kiralayan` varchar(24) NOT NULL,
  `arac_kira_kalan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `atmler`
--

CREATE TABLE `atmler` (
  `sqlid` int(11) NOT NULL,
  `atm_x` float NOT NULL,
  `atm_y` float NOT NULL,
  `atm_z` float NOT NULL,
  `atm_rx` float NOT NULL,
  `atm_ry` float NOT NULL,
  `atm_rz` float NOT NULL,
  `atm_vw` int(11) NOT NULL,
  `atm_int` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banlar`
--

CREATE TABLE `banlar` (
  `banid` int(11) NOT NULL,
  `isim` varchar(24) NOT NULL,
  `yasaklayan` varchar(24) NOT NULL,
  `sebep` varchar(128) NOT NULL,
  `ipadresi` varchar(17) NOT NULL,
  `tarih` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `birlikler`
--

CREATE TABLE `birlikler` (
  `birlik_id` int(11) NOT NULL,
  `birlik_isim` varchar(48) NOT NULL,
  `birlik_posx` float NOT NULL DEFAULT '0',
  `birlik_posy` float NOT NULL DEFAULT '0',
  `birlik_posz` float NOT NULL DEFAULT '0',
  `birlik_r1` varchar(24) NOT NULL DEFAULT 'R1',
  `birlik_r2` varchar(24) NOT NULL DEFAULT 'R2',
  `birlik_r3` varchar(24) NOT NULL DEFAULT 'R3',
  `birlik_r4` varchar(24) NOT NULL DEFAULT 'R4',
  `birlik_r5` varchar(24) NOT NULL DEFAULT 'R5',
  `birlik_r6` varchar(24) NOT NULL DEFAULT 'R6',
  `birlik_r7` varchar(24) NOT NULL DEFAULT 'R7',
  `birlik_r8` varchar(24) NOT NULL DEFAULT 'R8',
  `birlik_r9` varchar(24) NOT NULL DEFAULT 'R9',
  `birlik_r10` varchar(24) NOT NULL DEFAULT 'R10',
  `birlik_r11` varchar(24) NOT NULL DEFAULT 'R11',
  `birlik_r12` varchar(24) NOT NULL DEFAULT 'R12',
  `birlik_r13` varchar(24) NOT NULL DEFAULT 'R13',
  `birlik_r14` varchar(24) NOT NULL DEFAULT 'R14',
  `birlik_r15` varchar(24) NOT NULL DEFAULT 'R15',
  `birlik_sohbet` int(11) NOT NULL DEFAULT '1',
  `birlik_tip` int(11) NOT NULL,
  `birlik_silah_onay` int(11) NOT NULL,
  `birlik_drug_onay` int(11) NOT NULL,
  `birlik_vw` int(11) NOT NULL DEFAULT '0',
  `birlik_int` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `btnler`
--

CREATE TABLE `btnler` (
  `btn_id` int(11) NOT NULL,
  `btn_posx` float NOT NULL,
  `btn_posy` float NOT NULL,
  `btn_posz` float NOT NULL,
  `btn_tip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cezalar`
--

CREATE TABLE `cezalar` (
  `ceza_id` int(11) NOT NULL,
  `cezaSQL` varchar(24) NOT NULL,
  `cezaMemur` varchar(24) NOT NULL,
  `cezaUcret` int(11) NOT NULL,
  `cezaTarih` varchar(36) NOT NULL,
  `cezaSebep` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `envanter`
--

CREATE TABLE `envanter` (
  `env_sqlid` int(11) NOT NULL,
  `env_esya` varchar(24) NOT NULL,
  `env_miktar` int(11) NOT NULL,
  `env_kontrol` int(11) NOT NULL,
  `env_sahip` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `evler`
--

CREATE TABLE `evler` (
  `ev_id` int(11) NOT NULL,
  `ev_sahip` varchar(24) NOT NULL DEFAULT 'Yok',
  `ev_myetki` varchar(24) NOT NULL DEFAULT 'Yok',
  `ev_posx` float NOT NULL,
  `ev_posy` float NOT NULL,
  `ev_posz` float NOT NULL,
  `ev_fiyat` int(11) NOT NULL,
  `ev_guncelfiyat` int(11) NOT NULL DEFAULT '0',
  `ev_vergi` int(11) NOT NULL DEFAULT '0',
  `ev_vw` int(11) NOT NULL,
  `ev_int` int(11) NOT NULL,
  `ev_ic_posx` float NOT NULL,
  `ev_ic_posy` float NOT NULL,
  `ev_ic_posz` float NOT NULL,
  `ev_ic_vw` int(11) NOT NULL,
  `ev_ic_int` int(11) NOT NULL,
  `ev_kilit` int(11) NOT NULL DEFAULT '1',
  `ev_isik` int(11) NOT NULL DEFAULT '1',
  `ev_kasa` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fabrikalar`
--

CREATE TABLE `fabrikalar` (
  `fabrika_id` int(11) NOT NULL,
  `fabrika_posx` float NOT NULL,
  `fabrika_posy` float NOT NULL,
  `fabrika_posz` float NOT NULL,
  `fabrika_satiyor` int(11) NOT NULL,
  `fabrika_satiyor_fiyat` int(11) NOT NULL,
  `fabrika_aliyor` int(11) NOT NULL,
  `fabrika_aliyor_fiyat` int(11) NOT NULL,
  `fabrika_stok` int(11) NOT NULL,
  `fabrika_durum` int(11) NOT NULL,
  `fabrika_isim` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeriler`
--

CREATE TABLE `galeriler` (
  `galeri_id` int(11) NOT NULL,
  `galeri_posx` float NOT NULL,
  `galeri_posy` float NOT NULL,
  `galeri_posz` float NOT NULL,
  `galeri_spawnx` float NOT NULL,
  `galeri_spawny` float NOT NULL,
  `galeri_spawnz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gateler`
--

CREATE TABLE `gateler` (
  `id` int(11) NOT NULL,
  `obje` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `vw` int(11) NOT NULL,
  `hiz` float NOT NULL,
  `uzaklik` float NOT NULL,
  `acikpos` varchar(256) NOT NULL,
  `kapalipos` varchar(256) NOT NULL,
  `sifre` varchar(256) NOT NULL,
  `birlik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `harita`
--

CREATE TABLE `harita` (
  `id` int(11) NOT NULL,
  `Ad` varchar(32) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `inekler`
--

CREATE TABLE `inekler` (
  `sqlid` int(11) NOT NULL,
  `inek_x` float NOT NULL,
  `inek_y` float NOT NULL,
  `inek_z` float NOT NULL,
  `inek_rx` float NOT NULL,
  `inek_ry` float NOT NULL,
  `inek_rz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `isyerleri`
--

CREATE TABLE `isyerleri` (
  `i_id` int(11) NOT NULL,
  `i_sahip` varchar(24) NOT NULL DEFAULT 'Yok',
  `i_yazi` varchar(64) NOT NULL DEFAULT 'Yok',
  `i_posx` float NOT NULL,
  `i_posy` float NOT NULL,
  `i_posz` float NOT NULL,
  `i_fiyat` int(11) NOT NULL,
  `i_guncelfiyat` int(11) NOT NULL DEFAULT '0',
  `i_vergi` int(11) NOT NULL DEFAULT '0',
  `i_kasa` int(11) NOT NULL DEFAULT '0',
  `i_ucret` int(11) NOT NULL DEFAULT '0',
  `i_tip` int(11) NOT NULL,
  `i_vw` int(11) NOT NULL,
  `i_int` int(11) NOT NULL,
  `i_ic_posx` float NOT NULL,
  `i_ic_posy` float NOT NULL,
  `i_ic_posz` float NOT NULL,
  `i_ic_vw` int(11) NOT NULL,
  `i_ic_int` int(11) NOT NULL,
  `i_kilit` int(11) NOT NULL DEFAULT '1',
  `i_calisan` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kapilar`
--

CREATE TABLE `kapilar` (
  `kapi_id` int(11) NOT NULL,
  `kapi_isim` varchar(90) NOT NULL DEFAULT 'Yok',
  `kapi_pickup` int(11) NOT NULL DEFAULT '1239',
  `iceri_posx` float NOT NULL,
  `iceri_posy` float NOT NULL,
  `iceri_posz` float NOT NULL,
  `iceri_vw` int(11) NOT NULL,
  `iceri_int` int(11) NOT NULL,
  `iceri_angle` float NOT NULL,
  `disari_posx` float NOT NULL,
  `disari_posy` float NOT NULL,
  `disari_posz` float NOT NULL,
  `disari_vw` int(11) NOT NULL,
  `disari_int` int(11) NOT NULL,
  `disari_angle` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `karakterler`
--

CREATE TABLE `karakterler` (
  `id` int(11) NOT NULL,
  `isim` varchar(24) NOT NULL,
  `sifre` varchar(129) NOT NULL,
  `x` float NOT NULL DEFAULT '1276.89',
  `y` float NOT NULL DEFAULT '171.32',
  `z` float NOT NULL DEFAULT '20.0406',
  `angle` float NOT NULL DEFAULT '61',
  `interior` int(11) NOT NULL DEFAULT '0',
  `virtualworld` int(11) NOT NULL DEFAULT '0',
  `skin` int(11) NOT NULL,
  `geciciskin` int(11) NOT NULL,
  `cinsiyet` int(11) NOT NULL,
  `ten` int(11) NOT NULL,
  `yas` int(11) NOT NULL,
  `kimlikno` int(11) NOT NULL,
  `telno` int(11) NOT NULL DEFAULT '0',
  `ucakmodu` int(11) NOT NULL DEFAULT '0',
  `dogumyeri` varchar(32) NOT NULL DEFAULT 'Amerika',
  `kayit` varchar(36) NOT NULL,
  `songiris` varchar(36) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `ikincidil` int(11) NOT NULL DEFAULT '0',
  `evde` int(11) NOT NULL DEFAULT '0',
  `isyerinde` int(11) NOT NULL DEFAULT '0',
  `icalisan` int(11) NOT NULL DEFAULT '0',
  `aktif` int(11) NOT NULL DEFAULT '0',
  `birlik` int(11) NOT NULL DEFAULT '0',
  `rutbe` int(11) NOT NULL DEFAULT '0',
  `pmdurum` int(11) NOT NULL DEFAULT '1',
  `yarali` int(11) NOT NULL DEFAULT '0',
  `kelepceli` int(11) NOT NULL,
  `isbasi` int(11) NOT NULL,
  `ystil` int(11) NOT NULL DEFAULT '0',
  `kstil` int(11) NOT NULL DEFAULT '0',
  `telsizslot` int(11) NOT NULL DEFAULT '0',
  `kiyafet1` int(11) NOT NULL DEFAULT '0',
  `kiyafet2` int(11) NOT NULL DEFAULT '0',
  `kiyafet3` int(11) NOT NULL DEFAULT '0',
  `kiyafet4` int(11) NOT NULL DEFAULT '0',
  `kiyafet5` int(11) NOT NULL DEFAULT '0',
  `aksesuar1` int(11) NOT NULL DEFAULT '0',
  `bolge1` int(11) NOT NULL DEFAULT '0',
  `aksesuar1_posx` float NOT NULL DEFAULT '0',
  `aksesuar1_posy` float NOT NULL DEFAULT '0',
  `aksesuar1_posz` float NOT NULL DEFAULT '0',
  `aksesuar1_posrx` float NOT NULL DEFAULT '0',
  `aksesuar1_posry` float NOT NULL DEFAULT '0',
  `aksesuar1_posrz` float NOT NULL DEFAULT '0',
  `aksesuar1_possx` float NOT NULL DEFAULT '0',
  `aksesuar1_possy` float NOT NULL DEFAULT '0',
  `aksesuar1_possz` float NOT NULL DEFAULT '0',
  `aksesuar2` int(11) NOT NULL DEFAULT '0',
  `bolge2` int(11) NOT NULL DEFAULT '0',
  `aksesuar2_posx` float NOT NULL DEFAULT '0',
  `aksesuar2_posy` float NOT NULL DEFAULT '0',
  `aksesuar2_posz` float NOT NULL DEFAULT '0',
  `aksesuar2_posrx` float NOT NULL DEFAULT '0',
  `aksesuar2_posry` float NOT NULL DEFAULT '0',
  `aksesuar2_posrz` float NOT NULL DEFAULT '0',
  `aksesuar2_possx` float NOT NULL DEFAULT '0',
  `aksesuar2_possy` float NOT NULL DEFAULT '0',
  `aksesuar2_possz` float NOT NULL DEFAULT '0',
  `aksesuar3` int(11) NOT NULL DEFAULT '0',
  `bolge3` int(11) NOT NULL DEFAULT '0',
  `aksesuar3_posx` float NOT NULL DEFAULT '0',
  `aksesuar3_posy` float NOT NULL DEFAULT '0',
  `aksesuar3_posz` float NOT NULL DEFAULT '0',
  `aksesuar3_posrx` float NOT NULL DEFAULT '0',
  `aksesuar3_posry` float NOT NULL DEFAULT '0',
  `aksesuar3_posrz` float NOT NULL DEFAULT '0',
  `aksesuar3_possx` float NOT NULL DEFAULT '0',
  `aksesuar3_possy` float NOT NULL DEFAULT '0',
  `aksesuar3_possz` float NOT NULL DEFAULT '0',
  `aksesuar4` int(11) NOT NULL DEFAULT '0',
  `bolge4` int(11) NOT NULL DEFAULT '0',
  `aksesuar4_posx` float NOT NULL DEFAULT '0',
  `aksesuar4_posy` float NOT NULL DEFAULT '0',
  `aksesuar4_posz` float NOT NULL DEFAULT '0',
  `aksesuar4_posrx` float NOT NULL DEFAULT '0',
  `aksesuar4_posry` float NOT NULL DEFAULT '0',
  `aksesuar4_posrz` float NOT NULL DEFAULT '0',
  `aksesuar4_possx` float NOT NULL DEFAULT '0',
  `aksesuar4_possy` float NOT NULL DEFAULT '0',
  `aksesuar4_possz` float NOT NULL DEFAULT '0',
  `aksesuar5` int(11) NOT NULL DEFAULT '0',
  `bolge5` int(11) NOT NULL DEFAULT '0',
  `aksesuar5_posx` float NOT NULL DEFAULT '0',
  `aksesuar5_posy` float NOT NULL DEFAULT '0',
  `aksesuar5_posz` float NOT NULL DEFAULT '0',
  `aksesuar5_posrx` float NOT NULL DEFAULT '0',
  `aksesuar5_posry` float NOT NULL DEFAULT '0',
  `aksesuar5_posrz` float NOT NULL DEFAULT '0',
  `aksesuar5_possx` float NOT NULL DEFAULT '0',
  `aksesuar5_possy` float NOT NULL DEFAULT '0',
  `aksesuar5_possz` float NOT NULL DEFAULT '0',
  `admin` int(11) NOT NULL DEFAULT '0',
  `tester` int(11) NOT NULL DEFAULT '0',
  `forum` varchar(24) NOT NULL DEFAULT 'Yok',
  `ozellik` varchar(65) NOT NULL DEFAULT 'Yok',
  `ajail` int(11) NOT NULL DEFAULT '0',
  `ajailkalan` int(11) NOT NULL DEFAULT '0',
  `para` int(11) NOT NULL DEFAULT '200',
  `bankapara` int(11) NOT NULL DEFAULT '500',
  `mevduat` int(11) NOT NULL DEFAULT '0',
  `mevduatkalan` int(11) NOT NULL,
  `hesapno` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `exp` int(11) NOT NULL DEFAULT '0',
  `oynadigidakika` int(11) NOT NULL DEFAULT '0',
  `oynadigisaat` int(11) NOT NULL DEFAULT '0',
  `polisjail` int(11) NOT NULL,
  `polisjailkalan` int(11) NOT NULL,
  `meslek` int(11) NOT NULL DEFAULT '0',
  `misbasi` int(11) NOT NULL DEFAULT '0',
  `materyal` int(11) NOT NULL DEFAULT '0',
  `ehliyet` int(11) NOT NULL DEFAULT '0',
  `maske` int(11) NOT NULL DEFAULT '0',
  `mtakili` int(11) NOT NULL DEFAULT '0',
  `can` float NOT NULL DEFAULT '100',
  `zirh` float NOT NULL DEFAULT '0',
  `silahlisansi` int(11) NOT NULL DEFAULT '0',
  `avcilik` int(11) NOT NULL,
  `skalan` int(11) NOT NULL DEFAULT '0',
  `ssilah` int(11) NOT NULL DEFAULT '0',
  `yanitladigisoru` int(11) NOT NULL,
  `yanitladigirapor` int(11) NOT NULL,
  `ilkgiris` int(11) NOT NULL,
  `silah0` int(11) NOT NULL DEFAULT '0',
  `mermi0` int(11) NOT NULL DEFAULT '0',
  `silah1` int(11) NOT NULL DEFAULT '0',
  `mermi1` int(11) NOT NULL DEFAULT '0',
  `silah2` int(11) NOT NULL DEFAULT '0',
  `mermi2` int(11) NOT NULL DEFAULT '0',
  `silah3` int(11) NOT NULL DEFAULT '0',
  `mermi3` int(11) NOT NULL DEFAULT '0',
  `silah4` int(11) NOT NULL DEFAULT '0',
  `mermi4` int(11) NOT NULL DEFAULT '0',
  `silah5` int(11) NOT NULL DEFAULT '0',
  `mermi5` int(11) NOT NULL DEFAULT '0',
  `silah6` int(11) NOT NULL DEFAULT '0',
  `mermi6` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `marijuana`
--

CREATE TABLE `marijuana` (
  `marijuana_id` int(11) NOT NULL,
  `marijuana_posx` float NOT NULL,
  `marijuana_posy` float NOT NULL,
  `marijuana_posz` float NOT NULL,
  `marijuana_kalandakika` int(11) NOT NULL,
  `marijuana_tip` int(11) NOT NULL,
  `marijuana_interior` int(11) NOT NULL,
  `marijuana_virtualworld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mnoktalari`
--

CREATE TABLE `mnoktalari` (
  `modifiye_id` int(11) NOT NULL,
  `modifiye_posx` float NOT NULL,
  `modifiye_posy` float NOT NULL,
  `modifiye_posz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mobilyalar`
--

CREATE TABLE `mobilyalar` (
  `sqlid` int(11) NOT NULL,
  `mobilya_x` float NOT NULL,
  `mobilya_y` float NOT NULL,
  `mobilya_z` float NOT NULL,
  `mobilya_rx` float NOT NULL,
  `mobilya_ry` float NOT NULL,
  `mobilya_rz` float NOT NULL,
  `mobilya_vw` int(11) NOT NULL,
  `mobilya_int` int(11) NOT NULL,
  `mobilya_ev` int(11) NOT NULL,
  `mobilya_fiyat` int(11) NOT NULL,
  `mobilya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pompalar`
--

CREATE TABLE `pompalar` (
  `pompa_id` int(11) NOT NULL,
  `pompa_posx` float NOT NULL,
  `pompa_posy` float NOT NULL,
  `pompa_posz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `suckayitlari`
--

CREATE TABLE `suckayitlari` (
  `suc_id` int(11) NOT NULL,
  `isim` varchar(24) NOT NULL,
  `suc` varchar(128) NOT NULL,
  `tarih` varchar(36) NOT NULL,
  `ekleyen` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `textureler`
--

CREATE TABLE `textureler` (
  `sqlid` int(11) NOT NULL,
  `texture_materyal` int(11) NOT NULL,
  `texture_txd` varchar(64) NOT NULL,
  `texture_isim` varchar(64) NOT NULL,
  `texture_index` int(11) NOT NULL,
  `texture_mobilya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tutuklanmalar`
--

CREATE TABLE `tutuklanmalar` (
  `tutuklanma_id` int(11) NOT NULL,
  `isim` varchar(24) NOT NULL,
  `suc` varchar(128) NOT NULL,
  `tarih` varchar(36) NOT NULL,
  `ekleyen` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `aktorler`
--
ALTER TABLE `aktorler`
  ADD UNIQUE KEY `aktor_id` (`aktor_id`);

--
-- Tablo için indeksler `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`arac_id`);

--
-- Tablo için indeksler `atmler`
--
ALTER TABLE `atmler`
  ADD PRIMARY KEY (`sqlid`);

--
-- Tablo için indeksler `banlar`
--
ALTER TABLE `banlar`
  ADD PRIMARY KEY (`banid`);

--
-- Tablo için indeksler `birlikler`
--
ALTER TABLE `birlikler`
  ADD PRIMARY KEY (`birlik_id`);

--
-- Tablo için indeksler `btnler`
--
ALTER TABLE `btnler`
  ADD PRIMARY KEY (`btn_id`);

--
-- Tablo için indeksler `cezalar`
--
ALTER TABLE `cezalar`
  ADD PRIMARY KEY (`ceza_id`);

--
-- Tablo için indeksler `envanter`
--
ALTER TABLE `envanter`
  ADD PRIMARY KEY (`env_sqlid`);

--
-- Tablo için indeksler `evler`
--
ALTER TABLE `evler`
  ADD PRIMARY KEY (`ev_id`);

--
-- Tablo için indeksler `fabrikalar`
--
ALTER TABLE `fabrikalar`
  ADD PRIMARY KEY (`fabrika_id`);

--
-- Tablo için indeksler `galeriler`
--
ALTER TABLE `galeriler`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Tablo için indeksler `gateler`
--
ALTER TABLE `gateler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `harita`
--
ALTER TABLE `harita`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `inekler`
--
ALTER TABLE `inekler`
  ADD PRIMARY KEY (`sqlid`);

--
-- Tablo için indeksler `isyerleri`
--
ALTER TABLE `isyerleri`
  ADD PRIMARY KEY (`i_id`);

--
-- Tablo için indeksler `kapilar`
--
ALTER TABLE `kapilar`
  ADD PRIMARY KEY (`kapi_id`);

--
-- Tablo için indeksler `karakterler`
--
ALTER TABLE `karakterler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `marijuana`
--
ALTER TABLE `marijuana`
  ADD UNIQUE KEY `marijuana_id` (`marijuana_id`);

--
-- Tablo için indeksler `mnoktalari`
--
ALTER TABLE `mnoktalari`
  ADD PRIMARY KEY (`modifiye_id`);

--
-- Tablo için indeksler `mobilyalar`
--
ALTER TABLE `mobilyalar`
  ADD PRIMARY KEY (`sqlid`);

--
-- Tablo için indeksler `pompalar`
--
ALTER TABLE `pompalar`
  ADD PRIMARY KEY (`pompa_id`);

--
-- Tablo için indeksler `suckayitlari`
--
ALTER TABLE `suckayitlari`
  ADD PRIMARY KEY (`suc_id`);

--
-- Tablo için indeksler `textureler`
--
ALTER TABLE `textureler`
  ADD PRIMARY KEY (`sqlid`);

--
-- Tablo için indeksler `tutuklanmalar`
--
ALTER TABLE `tutuklanmalar`
  ADD PRIMARY KEY (`tutuklanma_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `araclar`
--
ALTER TABLE `araclar`
  MODIFY `arac_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `atmler`
--
ALTER TABLE `atmler`
  MODIFY `sqlid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `banlar`
--
ALTER TABLE `banlar`
  MODIFY `banid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `birlikler`
--
ALTER TABLE `birlikler`
  MODIFY `birlik_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `btnler`
--
ALTER TABLE `btnler`
  MODIFY `btn_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `cezalar`
--
ALTER TABLE `cezalar`
  MODIFY `ceza_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `evler`
--
ALTER TABLE `evler`
  MODIFY `ev_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `fabrikalar`
--
ALTER TABLE `fabrikalar`
  MODIFY `fabrika_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `galeriler`
--
ALTER TABLE `galeriler`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `harita`
--
ALTER TABLE `harita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `inekler`
--
ALTER TABLE `inekler`
  MODIFY `sqlid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `isyerleri`
--
ALTER TABLE `isyerleri`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `kapilar`
--
ALTER TABLE `kapilar`
  MODIFY `kapi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `karakterler`
--
ALTER TABLE `karakterler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `mnoktalari`
--
ALTER TABLE `mnoktalari`
  MODIFY `modifiye_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `mobilyalar`
--
ALTER TABLE `mobilyalar`
  MODIFY `sqlid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `pompalar`
--
ALTER TABLE `pompalar`
  MODIFY `pompa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `suckayitlari`
--
ALTER TABLE `suckayitlari`
  MODIFY `suc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `textureler`
--
ALTER TABLE `textureler`
  MODIFY `sqlid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `tutuklanmalar`
--
ALTER TABLE `tutuklanmalar`
  MODIFY `tutuklanma_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
