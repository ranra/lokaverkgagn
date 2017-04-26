create database 2209922929_Lokaverkefni,


use 2209922929_Lokaverkefni;


create table Tegund
(
id int not null primary key auto_increment,
nafn varchar(255)
);


create table Flokkur
(
id int not null primary key auto_increment,
nafn varchar(255)
);


create table Utgefandi
(
id int not null primary key auto_increment,

nafn varchar(255) null
);

create table Medlimir
(

id int primary key auto_increment not null,

nafn varchar(255) not null,
faedingardagur varchar(255),
danardagur varchar(255),
lysing varchar(255),
tilheyrir varchar(255)

);

create table Artist
(

id int primary key auto_increment not null,

nafn varchar(255) not null,
stofndagur varchar(255),
haetti varchar(255),
lysing varchar(255),
artist_flokkur int not null,
artist_medlimir int not null,
foreign key (artist_flokkur)
	references Flokkur(id),
foreign key (artist_medlimir)
	references medlimir(id)




);
create table Cd
(
id int  not null primary key auto_increment,
nafn varchar(255) not null,
utgafudagur varchar(255) not null,
cd_tegund int not null,
cd_flytjandi int not null,
cd_utgefandi int not null,
foreign key(cd_tegund)
	references Tegund(id),
foreign key(cd_flytjandi)
	references Artist(id),
foreign key(cd_utgefandi)
	references Utgefandi(id)
);


create table Lag
(
id int  not null primary key auto_increment,
nafn varchar(255) not null,
lengd decimal not null,
texti varchar(255) null,
lag_tegund int not null,
lag_flytjandi int not null,
lag_cd int not null,
foreign key(lag_tegund)
	references Tegund(id),
foreign key(lag_flytjandi)
	references Artist(id),
foreign key(lag_cd)
	references Cd(id)
);


