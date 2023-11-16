SELECT
		mahasiswa.nim_mhs AS NIM, 
		CONCAT(mahasiswa.first_name, " ", mahasiswa.last_name) AS `Nama Lengkap`,
		mahasiswa.jurusan AS Jurusan,
		mata_kuliah.nama_mk AS `MK yang Diambil`, 
		CONCAT(dosen.first_name, " ", dosen.last_name) AS `Dosen Pengampu`, 
		mata_kuliah.sks AS `Bobot SKS`
FROM mahasiswa
INNER JOIN mata_kuliah ON mata_kuliah.jurusan = mahasiswa.jurusan
LEFT JOIN dosen ON dosen.kode_mk = mata_kuliah.kode_mk;
