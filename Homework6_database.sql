create table Kategori_barang (
	id int not null generated always as identity primary key  ,
	nama_Kategori varchar(255),
	created_at timestamp default 'now()',
	updated_at timestamp default 'now()'
	
);

create table Barang (
	id int not null generated always as identity primary key  ,
	nama_Barang varchar(255),
	harga_Barang int,
	stok_Barang int,
	id_Kategori int,
	FOREIGN KEY (id_Kategori) REFERENCES Kategori_barang(id),
	created_at timestamp default 'now()',
	updated_at timestamp default 'now()'
);


insert into Kategori_barang (nama_Kategori)
values ('Mainan Balita');

insert into Kategori_barang (nama_Kategori)
values ('Mainan Plastik Model');

UPDATE Kategori_barang
SET nama_Kategori = 'Mainan Pastik Model Dewasa'
WHERE id = 1;

select * from Kategori_barang;

insert into Barang (nama_Barang,harga_Barang,stok_Barang, id_Kategori) 
values ('HG Kshatriya','500000','5','1');

insert into Barang (nama_Barang,harga_Barang,stok_Barang, id_Kategori) 
values ('Teletubies Doll','55000','15','2');

UPDATE Barang
SET stok_barang = 1
WHERE id = 1;

select * from Barang;

select Barang.nama_Barang, Barang.harga_Barang, Barang.stok_Barang,kategori_Barang.nama_Kategori
from Barang
inner join kategori_Barang on barang.id_Kategori = Kategori_barang.id

insert into Barang (nama_Barang,harga_Barang,stok_Barang, id_Kategori) 
values ('Doraemon Doll','65000','20','2');

insert into Kategori_barang (nama_Kategori)
values ('Mainan Anak Perempuan');

insert into Barang (nama_Barang,harga_Barang,stok_Barang, id_Kategori) 
values ('Barbie House Set','565000','10','3');

delete from Barang
where id =4;

delete from Kategori_barang
where id = 3;
