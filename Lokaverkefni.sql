create database 2209922929_Lokaverkefni;


use 2209922929_Lokaverkefni;


create table Tegund
(
id int not null primary key auto_increment,
tegund varchar(255) not null
);


create table Flokkur
(
id int not null primary key auto_increment,
flokkur varchar(255) not null
);


create table Utgefandi
(
id int not null primary key auto_increment,

nafn varchar(255) not null
);



create table Artist
(

id int primary key auto_increment not null,

nafn varchar(255) not null,
stofndagur date,
starfandi varchar(255)not null,
lok varchar(255)null,
artist_flokkur int not null,
foreign key (artist_flokkur)
	references Flokkur(id)
);

create table Medlimir
(

id int primary key auto_increment not null,

nafn varchar(255) not null,
faedingardagur date,
lifandi varchar(255)not null,
dainn varchar(255) null,
lysing varchar(255)null,
tilheyrir_artist int not null,
foreign key (tilheyrir_artist)
	references Artist(id)

);

create table Cd
(
id int  not null primary key auto_increment,
nafn varchar(255) not null,
utgafudagur date not null,
cd_artist int not null,
cd_tegund int not null,
cd_utgefandi int not null,
foreign key(cd_tegund)
	references Tegund(id),
foreign key(cd_artist)
	references Artist(id),
foreign key(cd_utgefandi)
	references Utgefandi(id)
);


create table Lag
(
id int  not null primary key auto_increment,
nafn varchar(255) not null,
lengd time,
texti varchar(255) null,
lag_tegund int not null,
lag_artist int not null,
lag_cd int not null,
foreign key(lag_tegund)
	references Tegund(id),
foreign key(lag_artist)
	references Artist(id),
foreign key(lag_cd)
	references Cd(id)
);

insert into
Tegund(tegund)
values
("pop"),
("rock"),
("disco"),
("hipHop"),
("electro"),
("deephouse");

insert into
Flokkur(flokkur)
values
("solo"),
("duo"),
("band");

insert into
Utgefandi(nafn)
values
("pro era"),
("mau5trap");



insert into
Artist(nafn,stofndagur,starfandi,lok,artist_flokkur)
values
("joeyBada$$",12/6/1999,"ja",null,1),
("Deadmau5",6/26/2005,"ja",null,1)

;


insert into
Medlimir(nafn,faedingardagur,lifandi,dainn,lysing,tilheyrir_artist)
values
("Jo-Vaughn Virginie Scott",20/1/1995,"ja",null,"Jo-Vaughn Virginie Scott (born January 20, 1995),[2] better known by his stage name Joey Bada$$, is an American rapper and actor",1),
("Joel Thomas Zimmerman",1/5/1981,"ja",null,"JoelThomasZimmerman (born January 5, 1981), better known by his stage name deadmau5 (pronounced dead mouse), is a Canadian record producer and DJ from Toronto, Ontario.",2);

insert into
Cd(nafn,utgafudagur,cd_artist,cd_tegund,cd_utgefandi)
values
("B4.DA.$$",20/1/2015,1,4,1),
("randomAlbumTitle",9/8/2008,2,5,2);

insert into
Lag(nafn,lengd,texti,lag_tegund,lag_artist,lag_cd)
values
("saveTheChildren","0355","Jo-Vaughn,Scott,Patrick Baril",4,1,1),
("PaperTrails","0314","Scott,LeeBannon",4,1,1),
("ChristConscious","0253","scott",4,1,1),
("sometimes thing get,Whatever","0820",null,5,2,2),
("slip","0743",null,5,2,2),
("some kind of blue","0800",null,5,2,2),
("i remember","0954","kaskade",null,5,2,2),


;

 


