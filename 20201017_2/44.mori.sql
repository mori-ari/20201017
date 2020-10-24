-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 
-- サーバのバージョン： 5.7.24
-- PHP のバージョン: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `dev_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `book_list`
--

CREATE TABLE `book_list` (
  `id` int(12) NOT NULL,
  `bookname` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `book_list`
--

INSERT INTO `book_list` (`id`, `bookname`, `img_url`, `book_url`, `review`, `indate`) VALUES
(1, '鬼滅の刃', 'https://images-na.ssl-images-amazon.com/images/I/512K1dmkIML._SX316_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E9%AC%BC%E6%BB%85%E3%81%AE%E5%88%83-1-%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%97%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E5%90%BE%E5%B3%A0-%E5%91%BC%E4%B8%96%E6%99%B4/dp/4088807235/ref=zg_bs_books_1/358-9335990-2331731?_encoding=UTF8&psc=1&refRID=PEFDS9K0FPPSB80AE2D8', '見て', '2020-10-20 02:21:13'),
(8, '白石麻衣 乃木坂46卒業記念メモリアルマガジン', 'https://images-na.ssl-images-amazon.com/images/I/41xgAA5dSnL._SX372_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E7%99%BD%E7%9F%B3%E9%BA%BB%E8%A1%A3-%E4%B9%83%E6%9C%A8%E5%9D%8246%E5%8D%92%E6%A5%AD%E8%A8%98%E5%BF%B5%E3%83%A1%E3%83%A2%E3%83%AA%E3%82%A2%E3%83%AB%E3%83%9E%E3%82%AC%E3%82%B8%E3%83%B3-%E8%AC%9B%E8%AB%87%E7%A4%BE/dp/4065201896/ref=zg_bs_books_1?_encoding=UTF8&psc=1&refRID=71Q1TTSR0JTS43YRYQT8', 'かわいい', '2020-10-21 14:16:28'),
(9, '火曜ドラマ おカネの切れ目が恋のはじまり シナリオブック', 'https://images-na.ssl-images-amazon.com/images/I/41DF-vTqlML._SX338_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E7%81%AB%E6%9B%9C%E3%83%89%E3%83%A9%E3%83%9E-%E3%81%8A%E3%82%AB%E3%83%8D%E3%81%AE%E5%88%87%E3%82%8C%E7%9B%AE%E3%81%8C%E6%81%8B%E3%81%AE%E3%81%AF%E3%81%98%E3%81%BE%E3%82%8A-%E3%82%B7%E3%83%8A%E3%83%AA%E3%82%AA%E3%83%96%E3%83%83%E3%82%AF-%E5%A4%A7%E5%B3%B6-%E9%87%8C%E7%BE%8E/dp/4041109086/ref=zg_bs_books_2?_encoding=UTF8&psc=1&refRID=TW94BQ6XD6ME8GSNXDKG', '楽しい', '2020-10-21 14:26:05'),
(10, 'anan SPECIAL チャンスと強運をもたらす月星座パワーブック2021', 'https://images-na.ssl-images-amazon.com/images/I/61-iZJrVpvL._SX388_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/anan-SPECIAL-%E3%83%81%E3%83%A3%E3%83%B3%E3%82%B9%E3%81%A8%E5%BC%B7%E9%81%8B%E3%82%92%E3%82%82%E3%81%9F%E3%82%89%E3%81%99%E6%9C%88%E6%98%9F%E5%BA%A7%E3%83%91%E3%83%AF%E3%83%BC%E3%83%96%E3%83%83%E3%82%AF2021-%E3%83%9E%E3%82%AC%E3%82%B8%E3%83%B3%E3%83%8F%E3%82%A6%E3%82%B9%E3%83%A0%E3%83%83%E3%82%AF-ananSPECIAL/dp/4838754558/ref=zg_bs_books_8?_encoding=UTF8&psc=1&refRID=71Q1TTSR0JTS43YRYQT8', '面白い', '2020-10-21 14:31:36'),
(11, '【ビジネス書大賞2020 大賞受賞作】FACTFULNESS(ファクトフルネス) 10の思い込みを乗り越え、データを基に世界を正しく見る習慣', 'https://images-na.ssl-images-amazon.com/images/I/51aGVOJY6EL._SX350_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/FACTFULNESS-%E3%83%95%E3%82%A1%E3%82%AF%E3%83%88%E3%83%95%E3%83%AB%E3%83%8D%E3%82%B9-10%E3%81%AE%E6%80%9D%E3%81%84%E8%BE%BC%E3%81%BF%E3%82%92%E4%B9%97%E3%82%8A%E8%B6%8A%E3%81%88%E3%80%81%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%9F%BA%E3%81%AB%E4%B8%96%E7%95%8C%E3%82%92%E6%AD%A3%E3%81%97%E3%81%8F%E8%A6%8B%E3%82%8B%E7%BF%92%E6%85%A3-%E3%83%8F%E3%83%B3%E3%82%B9%E3%83%BB%E3%83%AD%E3%82%B9%E3%83%AA%E3%83%B3%E3%82%B0/dp/4822289605/ref=zg_bs_books_39?_encoding=UTF8&psc=1&refRID=VPHMR9GVCWACR2EAENVP', '勉強になる', '2020-10-21 14:35:45'),
(12, 'モモ (岩波少年文庫(127)) ', 'https://images-na.ssl-images-amazon.com/images/I/51i9O340DcL._SX347_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E3%83%A2%E3%83%A2-%E5%B2%A9%E6%B3%A2%E5%B0%91%E5%B9%B4%E6%96%87%E5%BA%AB-127-%E3%83%9F%E3%83%92%E3%83%A3%E3%82%A8%E3%83%AB%E3%83%BB%E3%82%A8%E3%83%B3%E3%83%87/dp/4001141272/ref=zg_bs_books_40?_encoding=UTF8&psc=1&refRID=VPHMR9GVCWACR2EAENVP', '懐かしい', '2020-10-21 14:38:00'),
(13, 'ハイキュー!! ショーセツバン!! 13 (JUMP j BOOKS) ', 'https://images-na.ssl-images-amazon.com/images/I/51-Th00E5mL._SX318_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E3%83%8F%E3%82%A4%E3%82%AD%E3%83%A5%E3%83%BC-%E3%82%B7%E3%83%A7%E3%83%BC%E3%82%BB%E3%83%84%E3%83%90%E3%83%B3-13-JUMP-BOOKS/dp/4087035042/ref=zg_bs_books_46?_encoding=UTF8&psc=1&refRID=VPHMR9GVCWACR2EAENVP', '良い', '2020-10-21 14:43:25'),
(14, 'TOEIC L & R TEST 出る単特急 金のフレーズ (TOEIC TEST 特急シリーズ)', 'https://images-na.ssl-images-amazon.com/images/I/51GoOBRZRoL._SX306_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/TOEIC-TEST-%E5%87%BA%E3%82%8B%E5%8D%98%E7%89%B9%E6%80%A5-%E9%87%91%E3%81%AE%E3%83%95%E3%83%AC%E3%83%BC%E3%82%BA-%E7%89%B9%E6%80%A5%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA/dp/4023315680/ref=zg_bs_books_54?_encoding=UTF8&psc=1&refRID=DPGJR837X7TW5C9QE5YM', '勉強中', '2020-10-21 14:44:19'),
(15, 'Amazon.co.jp 限定】スープジャーのプレゼント応募券つき10分で完成! たっきーママの朝ラク! スープジャー弁当 (扶桑社ムック)', 'https://images-na.ssl-images-amazon.com/images/I/516ZOECRv7L._SX353_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E3%80%90Amazon-co-jp-%E9%99%90%E5%AE%9A%E3%80%91%E3%82%B9%E3%83%BC%E3%83%97%E3%82%B8%E3%83%A3%E3%83%BC%E3%81%AE%E3%83%97%E3%83%AC%E3%82%BC%E3%83%B3%E3%83%88%E5%BF%9C%E5%8B%9F%E5%88%B8%E3%81%A4%E3%81%8D10%E5%88%86%E3%81%A7%E5%AE%8C%E6%88%90-%E3%81%9F%E3%81%A3%E3%81%8D%E3%83%BC%E3%83%9E%E3%83%9E%E3%81%AE%E6%9C%9D%E3%83%A9%E3%82%AF-%E3%82%B9%E3%83%BC%E3%83%97%E3%82%B8%E3%83%A3%E3%83%BC%E5%BC%81%E5%BD%93-%E6%89%B6%E6%A1%91%E7%A4%BE%E3%83%A0%E3%83%83%E3%82%AF/dp/4594616143/ref=zg_bs_books_29?_encoding=UTF8&psc=1&refRID=TW94BQ6XD6ME8GSNXDKG', 'おいしい', '2020-10-21 14:45:08'),
(16, 'さあ、才能(じぶん)に目覚めよう 新版 ストレングス・ファインダー2.0', 'https://images-na.ssl-images-amazon.com/images/I/51-jdU-v5fL._SX336_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E3%81%95%E3%81%82%E3%80%81%E6%89%8D%E8%83%BD-%E3%81%98%E3%81%B6%E3%82%93-%E3%81%AB%E7%9B%AE%E8%A6%9A%E3%82%81%E3%82%88%E3%81%86-%E6%96%B0%E7%89%88-%E3%82%B9%E3%83%88%E3%83%AC%E3%83%B3%E3%82%B0%E3%82%B9%E3%83%BB%E3%83%95%E3%82%A1%E3%82%A4%E3%83%B3%E3%83%80%E3%83%BC2-0/dp/4532321433/ref=zg_bs_books_26?_encoding=UTF8&psc=1&refRID=TW94BQ6XD6ME8GSNXDKG', '役に立った', '2020-10-21 14:47:56'),
(17, '鬼滅の刃', 'https://images-na.ssl-images-amazon.com/images/I/512K1dmkIML._SX316_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E9%AC%BC%E6%BB%85%E3%81%AE%E5%88%83-1-%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%97%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E5%90%BE%E5%B3%A0-%E5%91%BC%E4%B8%96%E6%99%B4/dp/4088807235/ref=zg_bs_books_1/358-9335990-2331731?_encoding=UTF8&psc=1&refRID=PEFDS9K0FPPSB80AE2D8', '売れてる', '2020-10-21 19:00:21'),
(18, '【ビジネス書大賞2020 大賞受賞作】FACTFULNESS(ファクトフルネス) 10の思い込みを乗り越え、データを基に世界を正しく見る習慣', 'https://images-na.ssl-images-amazon.com/images/I/51aGVOJY6EL._SX350_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/FACTFULNESS-%E3%83%95%E3%82%A1%E3%82%AF%E3%83%88%E3%83%95%E3%83%AB%E3%83%8D%E3%82%B9-10%E3%81%AE%E6%80%9D%E3%81%84%E8%BE%BC%E3%81%BF%E3%82%92%E4%B9%97%E3%82%8A%E8%B6%8A%E3%81%88%E3%80%81%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%9F%BA%E3%81%AB%E4%B8%96%E7%95%8C%E3%82%92%E6%AD%A3%E3%81%97%E3%81%8F%E8%A6%8B%E3%82%8B%E7%BF%92%E6%85%A3-%E3%83%8F%E3%83%B3%E3%82%B9%E3%83%BB%E3%83%AD%E3%82%B9%E3%83%AA%E3%83%B3%E3%82%B0/dp/4822289605/ref=zg_bs_books_39?_encoding=UTF8&psc=1&refRID=VPHMR9GVCWACR2EAENVP', 'ららら', '2020-10-21 23:31:50'),
(19, 'モモ (岩波少年文庫(127)) ', 'https://images-na.ssl-images-amazon.com/images/I/51i9O340DcL._SX347_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E3%83%A2%E3%83%A2-%E5%B2%A9%E6%B3%A2%E5%B0%91%E5%B9%B4%E6%96%87%E5%BA%AB-127-%E3%83%9F%E3%83%92%E3%83%A3%E3%82%A8%E3%83%AB%E3%83%BB%E3%82%A8%E3%83%B3%E3%83%87/dp/4001141272/ref=zg_bs_books_40?_encoding=UTF8&psc=1&refRID=VPHMR9GVCWACR2EAENVP', '昔読んだ', '2020-10-22 08:58:25'),
(20, '鬼滅の刃', 'https://images-na.ssl-images-amazon.com/images/I/512K1dmkIML._SX316_BO1,204,203,200_.jpg', 'https://www.amazon.co.jp/%E9%AC%BC%E6%BB%85%E3%81%AE%E5%88%83-1-%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%97%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E5%90%BE%E5%B3%A0-%E5%91%BC%E4%B8%96%E6%99%B4/dp/4088807235/ref=zg_bs_books_1/358-9335990-2331731?_encoding=UTF8&psc=1&refRID=PEFDS9K0FPPSB80AE2D8', 'ああああ', '2020-10-22 08:58:57');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
