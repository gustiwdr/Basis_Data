CREATE TABLE mata_kuliah (
	kode_mk VARCHAR(10) PRIMARY KEY NOT NULL,
	nama_mk VARCHAR(255) NOT NULL,
	sks INT NOT NULL,
	jurusan VARCHAR(255) NOT NULL
);


CREATE TABLE mahasiswa (
	nim_mhs VARCHAR(30) PRIMARY KEY NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	tgl_lahir DATE NOT NULL,
	jurusan VARCHAR(255) NOT NULL,
	kode_mk VARCHAR(10) NOT NULL,
	FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk)
);

CREATE TABLE dosen (
	nip_dosen INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	kode_mk VARCHAR(10) NOT NULL,
	FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk)
);
