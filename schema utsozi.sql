-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2021 pada 12.22
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utsozi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dimensi_konsumen`
--

CREATE TABLE `dimensi_konsumen` (
  `id` int(11) NOT NULL,
  `nama_konsumen` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `order_number` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dimensi_product`
--

CREATE TABLE `dimensi_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_scale` varchar(40) NOT NULL,
  `buy_price` decimal(10,2) NOT NULL,
  `msrp` decimal(10,2) NOT NULL,
  `text_description` text NOT NULL,
  `priceEach` decimal(10,2) NOT NULL,
  `noOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dimensi_sales`
--

CREATE TABLE `dimensi_sales` (
  `id` int(11) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `alamatkantor` varchar(100) NOT NULL,
  `jumlahcustomer` int(11) NOT NULL,
  `no_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakta`
--

CREATE TABLE `fakta` (
  `id` int(11) NOT NULL,
  `ammount` int(11) NOT NULL,
  `sk_konsumen` int(11) NOT NULL,
  `sk_product` int(11) NOT NULL,
  `sk_sales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
