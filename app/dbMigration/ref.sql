-- roles
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`) VALUES ('R01', 'Administrator', 'ROLE');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`) VALUES ('R02', 'Operasional', 'ROLE');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`) VALUES ('R03', 'Operator Surat Masuk', 'ROLE');

-- struktural

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO01', 'Kepala Badan', 'STRUKTURAL 1', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO02', 'Sekretaris Badan', 'STRUKTURAL 2', 'SO01');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO03', 'Pusat Registrasi dan Sertifikasi', 'STRUKTURAL 2', 'SO01');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO04', 'Pusat Pembinaan dan Pengawasan JPH', 'STRUKTURAL 2', 'SO01');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO05', 'Pusat Kerjasama dan Standardisasi', 'STRUKTURAL 2', 'SO01');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO06', 'Bagian Perencanaan dan Sistem Informasi', 'STRUKTURAL 3', 'SO02');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO07', 'Bagian Organisasi, Kepegawaian dan Hukum', 'STRUKTURAL 3', 'SO02');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO08', 'Bagian Keuangan dan Umum', 'STRUKTURAL 3', 'SO02');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO09', 'Bidang Registrasi Halal', 'STRUKTURAL 3', 'SO03');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO10', 'Bidang Sertifikasi Halal', 'STRUKTURAL 3', 'SO03');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO11', 'Bidang Verifikasi Halal', 'STRUKTURAL 3', 'SO03');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO12', 'Sub Bag Tata Usaha', 'STRUKTURAL 4', 'SO03');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO13', 'Bidang Bina Auditor Halal dan Pelaku Usaha', 'STRUKTURAL 3', 'SO04');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO14', 'Bidang Pengawasan JPH', 'STRUKTURAL 3', 'SO04');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO15', 'Sub Bag Tata Usaha', 'STRUKTURAL 4', 'SO04');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO16', 'Bidang Kerjasama JPH', 'STRUKTURAL 3', 'SO05');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO17', 'Bidang Standardisasi', 'STRUKTURAL 3', 'SO05');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO18', 'Sub Bag Tata Usaha', 'STRUKTURAL 4', 'SO05');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO19', 'Sub Bag Perencanaan dan Pelaporan', 'STRUKTURAL 4', 'SO06');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO20', 'Sub Bag Pengelolaan Data dan Produk Halal', 'STRUKTURAL 4', 'SO06');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO21', 'Sub Bag Sistem Informasi dan Hubungan Masyarakat', 'STRUKTURAL 4', 'SO06');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO22', 'Sub Bag Organisasi dan Kepegawaian', 'STRUKTURAL 4', 'SO07');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO23', 'Sub Bag Hukum', 'STRUKTURAL 4', 'SO07');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO24', 'Sub Bag Keuangan', 'STRUKTURAL 4', 'SO08');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO25', 'Sub Bag Tata Usaha dan Rumah Tangga', 'STRUKTURAL 4', 'SO08');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO26', 'Sub Bag Perlengkapan dan Barang Milik Negara', 'STRUKTURAL 4', 'SO08');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO27', 'Sub Bid Registrasi Produk dan Label Halal', 'STRUKTURAL 4', 'SO09');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO28', 'Sub Bid Registrasi Lembaga Pemeriksa Halal dan Auditor Halal', 'STRUKTURAL 4', 'SO09');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO29', 'Sub Bid Pendaftaran Sertifikasi Halal Produk Kemasan', 'STRUKTURAL 4', 'SO10');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO30', 'Sub Bid Pendaftaran Sertifikasi Halal Produk Non Kemasan', 'STRUKTURAL 4', 'SO10');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO31', 'Sub Bid Pendaftaran Sertifikasi Halal RPU/RPH dan Produk Jasa', 'STRUKTURAL 4', 'SO10');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO32', 'Sub Bid Verifikasi dan Penilaian Halal Produk Kemasan', 'STRUKTURAL 4', 'SO11');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO33', 'Sub Bid Verifikasi dan Penilaian Halal Produk Non Kemasan', 'STRUKTURAL 4', 'SO11');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO34', 'Sub Bid Verifikasi dan Penilaian Halal RPU/RPH dan Produk Jasa', 'STRUKTURAL 4', 'SO11');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO35', 'Sub Bid Bina Auditor Halal dan Lembaga Pemeriksa Halal', 'STRUKTURAL 4', 'SO13');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO36', 'Sub Bid Bina Pelaku Usaha dan Konsumen', 'STRUKTURAL 4', 'SO13');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO37', 'Sub Bid Pengawasan Lembaga Pemeriksa Halal dan Auditor Halal', 'STRUKTURAL 4', 'SO14');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO38', 'Sub Bid Pengawasan Pelaku Usaha dan Penyelia Halal', 'STRUKTURAL 4', 'SO14');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO39', 'Sub Bid Pengawasan Produk dan Jasa Halal', 'STRUKTURAL 4', 'SO14');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO40', 'Sub Bid Kerja Sama Lembaga Pemeriksa Halal Dalam dan Luar Negeri', 'STRUKTURAL 4', 'SO16');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO41', 'Sub Bid Kerja Sama MUI dan Kementerian / Lembaga', 'STRUKTURAL 4', 'SO16');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO42', 'Sub Bid Pemantauan dan Kerja Sama Jaminan Produk Halal', 'STRUKTURAL 4', 'SO16');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO43', 'Sub Bid Standardisasi Produk Kemasan dan Non-Kemasan', 'STRUKTURAL 4', 'SO17');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO44', 'Sub Bid Standardisasi Rumah Potong Hewan, Jasa dan Penerbitan AkredItasi LPH', 'STRUKTURAL 4', 'SO17');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO45', 'Sub Bid Pemantauan dan Evaluasi Standardisasi Jaminan Produk Halal', 'STRUKTURAL 4', 'SO17');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO46', 'Staff TU Pusat Registrasi dan Sertifikasi halal', 'STRUKTURAL 5', 'SO12');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO47', 'Staff TU Pusat Pembinaan dan Pengawasan JPH', 'STRUKTURAL 5', 'SO15');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO48', 'Staff TU Pusat Kerjasama dan Standardisasi', 'STRUKTURAL 5', 'SO18');

INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO49', 'Staff Bag Perencanaan dan Pelaporan', 'STRUKTURAL 5', 'SO19');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO50', 'Staff Bag Pengelolaan Data dan Produk Halal', 'STRUKTURAL 5', 'SO20');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO51', 'Staff Bag Sistem Informasi dan Hubungan Masyarakat', 'STRUKTURAL 5', 'SO21');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO52', 'Staff Bag Organisasi dan Kepegawaian', 'STRUKTURAL 5', 'SO22');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO53', 'Staff Bag Hukum', 'STRUKTURAL 5', 'SO23');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO54', 'Staff Bag Keuangan', 'STRUKTURAL 5', 'SO24');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO55', 'Staff Bag Tata Usaha dan Rumah Tangga', 'STRUKTURAL 5', 'SO25');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO56', 'Staff Bag Perlengkapan dan Barang Milik Negara', 'STRUKTURAL 5', 'SO26');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO57', 'Staff Bid Registrasi Produk dan Label Halal', 'STRUKTURAL 5', 'SO27');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO58', 'Staff Bid Registrasi Lembaga Pemeriksa Halal dan Auditor Halal', 'STRUKTURAL 5', 'SO28');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO59', 'Staff Bid Pendaftaran Sertifikasi Halal Produk Kemasan', 'STRUKTURAL 5', 'SO29');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO60', 'Staff Bid Pendaftaran Sertifikasi Halal Produk Non Kemasan', 'STRUKTURAL 5', 'SO30');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO61', 'Staff Bid Pendaftaran Sertifikasi Halal RPU/RPH dan Produk Jasa', 'STRUKTURAL 5', 'SO31');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO62', 'Staff Bid Verifikasi dan Penilaian Halal Produk Kemasan', 'STRUKTURAL 5', 'SO32');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO63', 'Staff Bid Verifikasi dan Penilaian Halal Produk Non Kemasan', 'STRUKTURAL 5', 'SO33');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO64', 'Staff Bid Verifikasi dan Penilaian Halal RPU/RPH dan Produk Jasa', 'STRUKTURAL 5', 'SO34');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO65', 'Staff Bid Bina Auditor Halal dan Lembaga Pemeriksa Halal', 'STRUKTURAL 5', 'SO35');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO66', 'Staff Bid Bina Pelaku Usaha dan Konsumen', 'STRUKTURAL 5', 'SO36');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO67', 'Staff Bid Pengawasan Lembaga Pemeriksa Halal dan Auditor Halal', 'STRUKTURAL 5', 'SO37');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO68', 'Staff Bid Pengawasan Pelaku Usaha dan Penyelia Halal', 'STRUKTURAL 5', 'SO38');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO69', 'Staff Bid Pengawasan Produk dan Jasa Halal', 'STRUKTURAL 5', 'SO39');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO70', 'Staff Bid Kerja Sama Lembaga Pemeriksa Halal Dalam dan Luar Negeri', 'STRUKTURAL 5', 'SO40');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO71', 'Staff Bid Kerja Sama MUI dan Kementerian / Lembaga', 'STRUKTURAL 5', 'SO41');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO72', 'Staff Bid Pemantauan dan Kerja Sama Jaminan Produk Halal', 'STRUKTURAL 5', 'SO42');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO73', 'Staff Bid Standardisasi Produk Kemasan dan Non-Kemasan', 'STRUKTURAL 5', 'SO43');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO74', 'Staff Bid Standardisasi Rumah Potong Hewan, Jasa dan Penerbitan AkredItasi LPH', 'STRUKTURAL 5', 'SO44');
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SO75', 'Staff Bid Pemantauan dan Evaluasi Standardisasi Jaminan Produk Halal', 'STRUKTURAL 5', 'SO45');



-- source surat
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SS01', 'Offline', 'SOURCE_SURAT', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SS02', 'Whatsapp', 'SOURCE_SURAT', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SS03', 'Email', 'SOURCE_SURAT', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('SS04', 'Pos', 'SOURCE_SURAT', NULL);

-- petunjuk
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P01', 'Setuju', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P02', 'Tolak', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P03', 'Teliti dan Pendapat', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P04', 'Untuk Diketahui', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P05', 'Selesaikan', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P06', 'Sesuai Catatan', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P07', 'Untuk Perhatian', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P08', 'Proses Sesuai Ketentuan', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P09', 'Edarkan', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P10', 'Jawab', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P11', 'Perbaiki', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P12', 'Bicarakan dengan saya', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P13', 'Bicarakan Bersama', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P14', 'Simpan', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P15', 'Disiapkan', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P16', 'Harap dihadiri / diwakili', 'PETUNJUK', NULL);
INSERT INTO `db_naskah`.`t_ref`(`id_ref`, `ref_desc`, `id_ref_group`, `ref_child`) VALUES ('P17', 'Mohon Arahan', 'PETUNJUK', NULL);

