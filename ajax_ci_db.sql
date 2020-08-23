/*
 Navicat Premium Data Transfer

 Source Server         : lokaldb
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : ajax_ci_db

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 08/23/2020 18:54:51 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `perikanan_nelayan`
-- ----------------------------
DROP TABLE IF EXISTS `perikanan_nelayan`;
CREATE TABLE `perikanan_nelayan` (
  `nelayan_key` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `nelayan_kelompok_key` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nelayan_nik` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `nelayan_nama` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nelayan_alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nelayan_desa` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nelayan_kecamatan` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nelayan_kusuka_nomor` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nelayan_kusuka_asuransi_status` tinyint(1) DEFAULT NULL,
  `nelayan_create` datetime DEFAULT NULL,
  `nelayan_create_by` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nelayan_update` datetime DEFAULT NULL,
  `nelayan_update_by` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`nelayan_key`),
  KEY `nelayan_key` (`nelayan_key`),
  KEY `nelayan_nik` (`nelayan_nik`),
  KEY `perikanan_nelayan_rf_1` (`nelayan_desa`),
  KEY `perikanan_nelayan_rf_2` (`nelayan_kecamatan`),
  CONSTRAINT `perikanan_nelayan_ibfk_1` FOREIGN KEY (`nelayan_desa`) REFERENCES `perikanan_ref_desa` (`desa_kode`),
  CONSTRAINT `perikanan_nelayan_ibfk_2` FOREIGN KEY (`nelayan_kecamatan`) REFERENCES `perikanan_ref_kecamatan` (`kecamatan_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `perikanan_nelayan`
-- ----------------------------
BEGIN;
INSERT INTO `perikanan_nelayan` VALUES ('1567239979738242', null, '10920182901821128', 'Lukman', 'JL. Jalan', '3529020001', '3529020', null, null, '2019-08-31 15:26:19', 'las', '2019-09-09 13:26:44', 'las');
COMMIT;

-- ----------------------------
--  Table structure for `perikanan_ref_desa`
-- ----------------------------
DROP TABLE IF EXISTS `perikanan_ref_desa`;
CREATE TABLE `perikanan_ref_desa` (
  `desa_kode` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `desa_kecamatan_kode` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `desa_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`desa_kode`),
  KEY `kecamatan_kecamatan_kode_index` (`desa_kecamatan_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `perikanan_ref_desa`
-- ----------------------------
BEGIN;
INSERT INTO `perikanan_ref_desa` VALUES ('3529010001', '3529010', 'KADUARA TIMUR'), ('3529010002', '3529010', 'SENDANG'), ('3529010003', '3529010', 'ROMBASAN'), ('3529010004', '3529010', 'SENTOL LAOK'), ('3529010005', '3529010', 'LARANGAN PERENG'), ('3529010006', '3529010', 'SENTOL DAYA'), ('3529010007', '3529010', 'PAKAMBAN DAYA'), ('3529010008', '3529010', 'PAKAMBAN LAOK'), ('3529010009', '3529010', 'JADDUNG'), ('3529010010', '3529010', 'PRAGAAN LAOK'), ('3529010011', '3529010', 'PRAGAAN DAYA'), ('3529010012', '3529010', 'PRENDUAN'), ('3529010013', '3529010', 'AENGPANAS'), ('3529010014', '3529010', 'KARDULUK'), ('3529020001', '3529020', 'GULUKMANJUNG'), ('3529020002', '3529020', 'KAPEDI'), ('3529020003', '3529020', 'PAKANDANGAN BARAT'), ('3529020004', '3529020', 'PAKANDANGAN TENGAH'), ('3529020005', '3529020', 'PAKANDANGAN SANGRA'), ('3529020006', '3529020', 'AENGDAKE'), ('3529020007', '3529020', 'AENGBAJA KENEK'), ('3529020008', '3529020', 'BLUTO'), ('3529020009', '3529020', 'LOBUK'), ('3529020010', '3529020', 'BUNGBUNGAN'), ('3529020011', '3529020', 'MASARAN'), ('3529020012', '3529020', 'PALONGAN'), ('3529020013', '3529020', 'AENGBAJA RAJA'), ('3529020014', '3529020', 'KARANG CEMPAKA'), ('3529020015', '3529020', 'SERA TIMUR'), ('3529020016', '3529020', 'SERA TENGAH'), ('3529020017', '3529020', 'SERA BARAT'), ('3529020018', '3529020', 'GILANG'), ('3529020019', '3529020', 'ERRABU'), ('3529020020', '3529020', 'GING GING'), ('3529030001', '3529030', 'AENGTONGTONG'), ('3529030003', '3529030', 'SARONGGI'), ('3529030004', '3529030', 'TANAH MERAH'), ('3529030005', '3529030', 'LANGSAR'), ('3529030006', '3529030', 'PAGARBATU'), ('3529030007', '3529030', 'TANJUNG'), ('3529030008', '3529030', 'KEBUNDADAP TIMUR'), ('3529030009', '3529030', 'KEBUNDADAP BARAT'), ('3529030010', '3529030', 'SAROKA'), ('3529030011', '3529030', 'NAMBAKOR'), ('3529030012', '3529030', 'MUANGAN'), ('3529030013', '3529030', 'TALANG'), ('3529030014', '3529030', 'KAMBINGAN TIMUR'), ('3529040001', '3529040', 'GALIS'), ('3529040002', '3529040', 'GEDUGAN'), ('3529040003', '3529040', 'BRINGSANG'), ('3529040004', '3529040', 'AENGANYAR'), ('3529040005', '3529040', 'LOMBANG'), ('3529040006', '3529040', 'JATE'), ('3529040007', '3529040', 'BANBARU'), ('3529040008', '3529040', 'BANMALENG'), ('3529050001', '3529050', 'PADIKE'), ('3529050002', '3529050', 'CABBIYA'), ('3529050003', '3529050', 'ESSANG'), ('3529050004', '3529050', 'KOMBANG'), ('3529050005', '3529050', 'POTERAN'), ('3529050006', '3529050', 'PALASA'), ('3529050007', '3529050', 'GAPURANA'), ('3529050008', '3529050', 'TALANGO'), ('3529060001', '3529060', 'PINGGIRPAPAS'), ('3529060002', '3529060', 'KARANG ANYAR'), ('3529060003', '3529060', 'MARENGAN LAOK'), ('3529060004', '3529060', 'KERTASADA'), ('3529060005', '3529060', 'KALIMO\'OK'), ('3529060006', '3529060', 'KALIANGET BARAT'), ('3529060007', '3529060', 'KALIANGET TIMUR'), ('3529070005', '3529070', 'KOLOR'), ('3529070006', '3529070', 'PABIAN'), ('3529070007', '3529070', 'MARENGAN DAYA'), ('3529070008', '3529070', 'KACONGAN'), ('3529070009', '3529070', 'PABERASAN'), ('3529070010', '3529070', 'PARSANGA'), ('3529070011', '3529070', 'BANGKAL'), ('3529070012', '3529070', 'PANGARANGAN'), ('3529070013', '3529070', 'KEPANJIN'), ('3529070014', '3529070', 'PAJAGALAN'), ('3529070015', '3529070', 'BANGSELOK'), ('3529070016', '3529070', 'KARANGDUAK'), ('3529070017', '3529070', 'PANDIAN'), ('3529070018', '3529070', 'PAMOLOKAN'), ('3529070019', '3529070', 'KEBUNAN'), ('3529070020', '3529070', 'KEBUNAGUNG'), ('3529071001', '3529071', 'PATEAN'), ('3529071002', '3529071', 'BABALAN'), ('3529071003', '3529071', 'GEDUNGAN'), ('3529071005', '3529071', 'BATUAN'), ('3529071006', '3529071', 'TORBANG'), ('3529080001', '3529080', 'BILAPORA REBA'), ('3529080002', '3529080', 'MONCEK BARAT'), ('3529080003', '3529080', 'MONCEK TENGAH'), ('3529080004', '3529080', 'MONCEK TIMUR'), ('3529080005', '3529080', 'BANARESEP BARAT'), ('3529080006', '3529080', 'LEMBUNG BARAT'), ('3529080007', '3529080', 'LEMBUNG TIMUR'), ('3529080008', '3529080', 'BANARESEP TIMUR'), ('3529080009', '3529080', 'KAMBINGAN BARAT'), ('3529080010', '3529080', 'TAROGAN'), ('3529080011', '3529080', 'POREH'), ('3529080012', '3529080', 'CANGKRENG'), ('3529080013', '3529080', 'MEDELAN'), ('3529080014', '3529080', 'SENDIR'), ('3529080015', '3529080', 'DARAMESTA'), ('3529080016', '3529080', 'JAMBU'), ('3529080017', '3529080', 'ELLAK DAYA'), ('3529080018', '3529080', 'ELLAK LAOK'), ('3529080019', '3529080', 'LENTENG TIMUR'), ('3529080020', '3529080', 'LENTENG BARAT'), ('3529090001', '3529090', 'KETAWANG PAREBAAN'), ('3529090002', '3529090', 'BATAAL BARAT'), ('3529090003', '3529090', 'BATAAL TIMUR'), ('3529090004', '3529090', 'ROMBIYA BARAT'), ('3529090005', '3529090', 'ROMBIYA TIMUR'), ('3529090006', '3529090', 'TALAGA'), ('3529090007', '3529090', 'BILAPORA BARAT'), ('3529090008', '3529090', 'BILAPORA TIMUR'), ('3529090009', '3529090', 'GANDING'), ('3529090010', '3529090', 'GADU TIMUR'), ('3529090011', '3529090', 'GADU BARAT'), ('3529090012', '3529090', 'KETAWANG LARANGAN'), ('3529090013', '3529090', 'KETAWANG DALEMAN'), ('3529090014', '3529090', 'KETAWANG KARAY'), ('3529100001', '3529100', 'BAKEYONG'), ('3529100002', '3529100', 'PAYUDAN DUNDANG'), ('3529100003', '3529100', 'PORDAPOR'), ('3529100005', '3529100', 'KETAWANG LAOK'), ('3529100006', '3529100', 'PANANGGUNGAN'), ('3529100007', '3529100', 'BRAGUNG'), ('3529100008', '3529100', 'TAMBUKO'), ('3529100009', '3529100', 'PAYUDAN NANGGER'), ('3529100010', '3529100', 'PAYUDAN DALEMAN'), ('3529100011', '3529100', 'PAYUDAN KARANGSOKON'), ('3529100012', '3529100', 'BATUAMPAR'), ('3529110001', '3529110', 'MONTORNA'), ('3529110002', '3529110', 'PRANCAK'), ('3529110003', '3529110', 'CAMPAKA'), ('3529110004', '3529110', 'RAJUN'), ('3529110005', '3529110', 'LEBENG TIMUR'), ('3529110006', '3529110', 'LEBENG BARAT'), ('3529110007', '3529110', 'SODDARA'), ('3529110008', '3529110', 'PASONGSONGAN'), ('3529110009', '3529110', 'PANAONGAN'), ('3529110010', '3529110', 'PADANGDANGAN'), ('3529120001', '3529120', 'AMBUNTEN BARAT'), ('3529120002', '3529120', 'AMBUNTEN TENGAH'), ('3529120003', '3529120', 'AMBUNTEN TIMUR'), ('3529120004', '3529120', 'TAMBAAGUNG BARAT'), ('3529120005', '3529120', 'TAMBAAGUNG TENGAH'), ('3529120006', '3529120', 'TAMBAAGUNG ARES'), ('3529120007', '3529120', 'SOGIAN'), ('3529120009', '3529120', 'TAMBAAGUNG TIMUR'), ('3529120010', '3529120', 'BUKABU'), ('3529120011', '3529120', 'CAMPOR BARAT'), ('3529120012', '3529120', 'CAMPOR TIMUR'), ('3529120013', '3529120', 'BELUK ARES'), ('3529120015', '3529120', 'BELUK RAJA'), ('3529130001', '3529130', 'BASOKA'), ('3529130002', '3529130', 'MANDALA'), ('3529130003', '3529130', 'KARANGNANGKA'), ('3529130004', '3529130', 'PAKONDANG'), ('3529130005', '3529130', 'MATANAIR'), ('3529130006', '3529130', 'TAMBAKSARI'), ('3529130007', '3529130', 'BANA SARE'), ('3529130008', '3529130', 'BUNBARAT'), ('3529130009', '3529130', 'KALEBENGAN'), ('3529130010', '3529130', 'RUBARU'), ('3529130011', '3529130', 'DUKO'), ('3529140001', '3529140', 'BATUBELAH BARAT'), ('3529140002', '3529140', 'BATUBELAH TIMUR'), ('3529140004', '3529140', 'BATES'), ('3529140005', '3529140', 'BRINGIN'), ('3529140006', '3529140', 'JELBUDAN'), ('3529140007', '3529140', 'NYAPAR'), ('3529140008', '3529140', 'MANTAJUN'), ('3529140009', '3529140', 'DASUK LAOK'), ('3529140010', '3529140', 'DASUK TIMUR'), ('3529140011', '3529140', 'DASUK BARAT'), ('3529140012', '3529140', 'KERTA TIMUR'), ('3529140013', '3529140', 'KERTA BARAT'), ('3529140014', '3529140', 'SEMAAN'), ('3529140015', '3529140', 'SLOPENG'), ('3529150001', '3529150', 'KASENGAN'), ('3529150002', '3529150', 'LALANGON'), ('3529150003', '3529150', 'TENONAN'), ('3529150004', '3529150', 'LANJUK'), ('3529150005', '3529150', 'GADDING'), ('3529150006', '3529150', 'GIRING'), ('3529150007', '3529150', 'GUNUNG KEMBAR'), ('3529150008', '3529150', 'JABA\'AN'), ('3529150009', '3529150', 'MANDING LAOK'), ('3529150010', '3529150', 'MANDING DAYA'), ('3529150011', '3529150', 'MANDING TIMUR'), ('3529160001', '3529160', 'LARANGAN BARMA'), ('3529160002', '3529160', 'BATUPUTIH LAOK'), ('3529160003', '3529160', 'BATUPUTIH KENEK'), ('3529160004', '3529160', 'AENGMERAH'), ('3529160005', '3529160', 'TENGEDAN'), ('3529160006', '3529160', 'JURUAN LAOK'), ('3529160007', '3529160', 'JURUAN DAYA'), ('3529160008', '3529160', 'BADUR'), ('3529160009', '3529160', 'GEDANG GEDANG'), ('3529160010', '3529160', 'BATUPUTIH DAYA'), ('3529160011', '3529160', 'BANTELAN'), ('3529160012', '3529160', 'LARANGAN KERTA'), ('3529160013', '3529160', 'BULAAN'), ('3529160014', '3529160', 'SERGANG'), ('3529170001', '3529170', 'POJA'), ('3529170002', '3529170', 'BERAJI'), ('3529170003', '3529170', 'KARANG BUDI'), ('3529170004', '3529170', 'BABAN'), ('3529170005', '3529170', 'BATUDINDING'), ('3529170006', '3529170', 'BANJAR BARAT'), ('3529170007', '3529170', 'BANJAR TIMUR'), ('3529170008', '3529170', 'PALOKLOAN'), ('3529170009', '3529170', 'PANAGAN'), ('3529170010', '3529170', 'GAPURA BARAT'), ('3529170011', '3529170', 'GERSIK PUTIH'), ('3529170012', '3529170', 'GAPURA TENGAH'), ('3529170013', '3529170', 'MANDALA'), ('3529170014', '3529170', 'GAPURA TIMUR'), ('3529170015', '3529170', 'ANDULANG'), ('3529170016', '3529170', 'LONGOS'), ('3529170017', '3529170', 'GRUJUGAN'), ('3529180001', '3529180', 'TAMEDUNG'), ('3529180002', '3529180', 'BATANGBATANG LAOK'), ('3529180003', '3529180', 'TOTOSAN'), ('3529180004', '3529180', 'BANUAJU BARAT'), ('3529180005', '3529180', 'BANUAJU TIMUR'), ('3529180006', '3529180', 'JENANGGER'), ('3529180007', '3529180', 'NYABAKAN TIMUR'), ('3529180008', '3529180', 'LOMBANG'), ('3529180009', '3529180', 'BILANGAN'), ('3529180010', '3529180', 'DAPENDA'), ('3529180011', '3529180', 'LEGUNG TIMUR'), ('3529180012', '3529180', 'LEGUNG BARAT'), ('3529180013', '3529180', 'JANGKONG'), ('3529180014', '3529180', 'NYABAKAN BARAT'), ('3529180015', '3529180', 'BATANGBATANG DAYA'), ('3529180016', '3529180', 'KOLPO'), ('3529190001', '3529190', 'JADUNG'), ('3529190002', '3529190', 'ROMBEN BARAT'), ('3529190003', '3529190', 'ROMBEN RANA'), ('3529190004', '3529190', 'ROMBEN GUNA'), ('3529190005', '3529190', 'BICABI'), ('3529190007', '3529190', 'LAPA LAOK'), ('3529190008', '3529190', 'LAPA DAYA'), ('3529190009', '3529190', 'LAPA TAMAN'), ('3529190010', '3529190', 'BUNGIN BUNGIN'), ('3529190011', '3529190', 'BUNPENANG'), ('3529190012', '3529190', 'TAMANSARE'), ('3529190013', '3529190', 'CANDI'), ('3529190014', '3529190', 'BANCAMARA'), ('3529190015', '3529190', 'BANRAAS'), ('3529200001', '3529200', 'SOKARAME PASESER'), ('3529200002', '3529200', 'SOKARAME TIMUR'), ('3529200003', '3529200', 'TANAHMERAH'), ('3529200004', '3529200', 'SOMBER'), ('3529200005', '3529200', 'SONOK'), ('3529200006', '3529200', 'NONGGUNONG'), ('3529200007', '3529200', 'ROSONG'), ('3529200008', '3529200', 'TALAGA'), ('3529210001', '3529210', 'GAYAM'), ('3529210002', '3529210', 'JAMBUIR'), ('3529210003', '3529210', 'PANCOR'), ('3529210004', '3529210', 'PRAMBANAN'), ('3529210005', '3529210', 'GENDANG TIMUR'), ('3529210006', '3529210', 'KARANGTENGAH'), ('3529210007', '3529210', 'NYAMPLONG'), ('3529210008', '3529210', 'GENDANG BARAT'), ('3529210009', '3529210', 'KALOWANG'), ('3529210010', '3529210', 'TAREBUNG'), ('3529220001', '3529220', 'KETUPAT'), ('3529220002', '3529220', 'JUNGKAT'), ('3529220003', '3529220', 'KAROPOH'), ('3529220004', '3529220', 'KARANGNANGKA'), ('3529220005', '3529220', 'ALASMALANG'), ('3529220006', '3529220', 'POTERAN'), ('3529220007', '3529220', 'BRAKAS'), ('3529220008', '3529220', 'TONDUK'), ('3529220009', '3529220', 'GUWA GUWA'), ('3529230001', '3529230', 'SABUNTAN'), ('3529230002', '3529230', 'PALIAT'), ('3529230003', '3529230', 'SAPEKEN'), ('3529230004', '3529230', 'SASIIL'), ('3529230005', '3529230', 'SEPANJANG'), ('3529230006', '3529230', 'TANJUNGKIAOK'), ('3529230007', '3529230', 'PAGERUNGAN KECIL'), ('3529230008', '3529230', 'PAGERUNGAN BESAR'), ('3529230009', '3529230', 'SAKALA'), ('3529230010', '3529230', 'SADULANG'), ('3529230011', '3529230', 'SAUR SAEBUS'), ('3529240001', '3529240', 'BUDDI'), ('3529240002', '3529240', 'GELAMAN'), ('3529240003', '3529240', 'PAJANANGGER'), ('3529240010', '3529240', 'SAWAHSUMUR'), ('3529240011', '3529240', 'PASERAMAN'), ('3529240012', '3529240', 'KALINGANYAR'), ('3529240013', '3529240', 'ARJASA'), ('3529240014', '3529240', 'DUKO'), ('3529240015', '3529240', 'KOLO KOLO'), ('3529240016', '3529240', 'ANGKATAN'), ('3529240017', '3529240', 'KALISANGKA'), ('3529240018', '3529240', 'LAOK JANGJANG'), ('3529240019', '3529240', 'BILIS BILIS'), ('3529240020', '3529240', 'SUMBERNANGKA'), ('3529240021', '3529240', 'KALIKATAK'), ('3529240022', '3529240', 'ANGON ANGON'), ('3529240023', '3529240', 'SAMBAKATI'), ('3529240024', '3529240', 'PANDEMAN'), ('3529240025', '3529240', 'PABIAN'), ('3529241001', '3529241', 'SAOBI'), ('3529241002', '3529241', 'KANGAYAN'), ('3529241003', '3529241', 'TOERJEK'), ('3529241004', '3529241', 'CANGKRAMAAN'), ('3529241005', '3529241', 'TEMBAYANGAN'), ('3529241006', '3529241', 'BATUPUTIH'), ('3529241007', '3529241', 'DAANDUNG'), ('3529241008', '3529241', 'TIMUR JANJANG'), ('3529241009', '3529241', 'JUKONG JUKONG'), ('3529250001', '3529250', 'MASSALIMA'), ('3529250002', '3529250', 'SUKAJERUK'), ('3529250003', '3529250', 'KARAMIAN'), ('3529250004', '3529250', 'MASAKAMBING');
COMMIT;

-- ----------------------------
--  Table structure for `perikanan_ref_kecamatan`
-- ----------------------------
DROP TABLE IF EXISTS `perikanan_ref_kecamatan`;
CREATE TABLE `perikanan_ref_kecamatan` (
  `kecamatan_kode` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `kecamatan_kabupaten_kode` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `kecamatan_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`kecamatan_kode`),
  KEY `kecamatan_kabupaten_kode` (`kecamatan_kabupaten_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `perikanan_ref_kecamatan`
-- ----------------------------
BEGIN;
INSERT INTO `perikanan_ref_kecamatan` VALUES ('3529010', '3529', 'PRAGAAN'), ('3529020', '3529', 'BLUTO'), ('3529030', '3529', 'SARONGGI'), ('3529040', '3529', 'GILIGENTENG'), ('3529050', '3529', 'TALANGO'), ('3529060', '3529', 'KALIANGET'), ('3529070', '3529', 'KOTA SUMENEP'), ('3529071', '3529', 'BATUAN'), ('3529080', '3529', 'LENTENG'), ('3529090', '3529', 'GANDING'), ('3529100', '3529', 'GULUK GULUK'), ('3529110', '3529', 'PASONGSONGAN'), ('3529120', '3529', 'AMBUNTEN'), ('3529130', '3529', 'RUBARU'), ('3529140', '3529', 'DASUK'), ('3529150', '3529', 'MANDING'), ('3529160', '3529', 'BATUPUTIH'), ('3529170', '3529', 'GAPURA'), ('3529180', '3529', 'BATANG BATANG'), ('3529190', '3529', 'DUNGKEK'), ('3529200', '3529', 'NONGGUNONG'), ('3529210', '3529', 'GAYAM'), ('3529220', '3529', 'RAAS'), ('3529230', '3529', 'SAPEKEN'), ('3529240', '3529', 'ARJASA'), ('3529241', '3529', 'KANGAYAN'), ('3529250', '3529', 'MASALEMBU');
COMMIT;

-- ----------------------------
--  Table structure for `perikanan_ref_kelompok`
-- ----------------------------
DROP TABLE IF EXISTS `perikanan_ref_kelompok`;
CREATE TABLE `perikanan_ref_kelompok` (
  `kelompok_key` varchar(16) NOT NULL,
  `kelompok_nama` varchar(240) NOT NULL,
  `kelompok_alamat` varchar(240) DEFAULT NULL,
  `kelompok_bidang_usaha` varchar(100) DEFAULT NULL,
  `kelompok_status` tinyint(1) DEFAULT NULL,
  `kelompok_no_skt` varchar(50) DEFAULT NULL,
  `kelompok_tgl_skt` date DEFAULT NULL,
  `kelompok_created_at` datetime DEFAULT NULL,
  `kelompok_created_by` varchar(100) DEFAULT NULL,
  `kelompok_updated_at` datetime DEFAULT NULL,
  `kelompok_updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kelompok_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `perikanan_ref_kelompok`
-- ----------------------------
BEGIN;
INSERT INTO `perikanan_ref_kelompok` VALUES ('1568876271575267', 'Nama Kelompok', 'Kolor', '3', '0', '', '2020-08-23', '2019-09-19 13:57:51', 'las', '2019-09-21 17:24:58', 'las'), ('1569294325994471', 'hhenwfeq', 'fewre', '1', '1', '1321321', '2019-09-11', '2019-09-24 10:05:25', 'las', '2019-09-27 08:30:49', 'las');
COMMIT;

-- ----------------------------
--  Table structure for `sys_kategori`
-- ----------------------------
DROP TABLE IF EXISTS `sys_kategori`;
CREATE TABLE `sys_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `sys_kategori`
-- ----------------------------
BEGIN;
INSERT INTO `sys_kategori` VALUES ('1', 'Administrator'), ('7', 'Surveyor');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `password_default` char(6) DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'admin', 'Lukman Arif Sanjani', '21232f297a57a5a743894a0e4a801fc3', '', '1', '2019-08-20 07:56:55', 'las', '2020-08-23 11:47:52', 'las');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
