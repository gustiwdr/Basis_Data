SELECT
		mahasiswa.nim_mhs AS `NIM`,
		CONCAT(first_name, " ", last_name) AS `Nama Lengkap`,
		mata_kuliah.jurusan AS `Jurusan`, mata_kuliah.nama_mk AS `MK yang Diambil`, 
		mata_kuliah.kode_mk AS `Kode MK`, mata_kuliah.sks AS `Bobot SKS`
FROM mahasiswa
INNER JOIN mata_kuliah ON mahasiswa.kode_mk = mata_kuliah.kode_mk;
