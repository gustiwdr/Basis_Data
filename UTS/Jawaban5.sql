SELECT
		dosen.nip_dosen AS `NIP`,
		CONCAT(first_name, " ", last_name) AS `Nama Lengkap`,
		dosen.kode_mk AS `Kode MK`, mata_kuliah.nama_mk AS `MK yang Diajar`
FROM dosen
INNER JOIN mata_kuliah ON dosen.kode_mk = mata_kuliah.kode_mk;
