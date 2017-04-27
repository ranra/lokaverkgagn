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
dainn date,
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
("mau5trap"),
("Albert, Atlantic");



insert into
Artist(nafn,stofndagur,starfandi,lok,artist_flokkur)
values
("joeyBada$$",12/6/1999,"ja",null,1),
("Deadmau5",6/26/2005,"ja",null,1),
("AC/DC",null/null/1973,"ja",null,3)

;


insert into
Medlimir(nafn,faedingardagur,lifandi,dainn,lysing,tilheyrir_artist)
values
("Jo-Vaughn Virginie Scott",20/1/1995,"ja",null,"Jo-Vaughn Virginie Scott (born January 20, 1995),[2] better known by his stage name Joey Bada$$, is an American rapper and actor",1),
("Joel Thomas Zimmerman",1/5/1981,"ja",null,"JoelThomasZimmerman (born January 5, 1981), better known by his stage name deadmau5 (pronounced dead mouse), is a Canadian record producer and DJ from Toronto, Ontario.",2),
("Bon Scott",7/26/1946,"nei",2/19/1980,"Ronald Belford Scott (9 July 1946 – 19 February 1980) was an Australian rock musician, best known for being the lead singer and lyricist of Australian hard rock band AC/DC from 1974 until his death in 1980",3),
("Angus Young",3/31/1955,"ja",null,"Angus McKinnon Young (born 31 March 1955) is a Scottish guitarist, best known as the co-founder, lead guitarist, songwriter and only remaining original member of the Australian hard rock band AC/DC",3),
("Malcom Young",1/6/1953,"ja",null,"Malcolm Mitchell Young (born 6 January 1953)[1] is a Scottish retired musician and songwriter, best known as a co-founder, rhythm guitarist, backing vocalist and songwriter for the hard rock band AC/DC.",3),
("Cliff Williams",12/14/1949,"ja",null,"Clifford Williams (born 14 December 1949) is a British musician who was a member of the Australian hard rock band AC/DC as their bassist and backing vocalist from 1977 to 2016",3),
("Phil Rudd",5/19/1954,"ja",null,"Phillip Hugh Norman Rudd (born Phillip Hugh Norman Witschke Rudzevecuis,[1][2] 19 May 1954) is an Australian drummer, best known for his membership in Australian hard rock band AC/DC from 1975 through 1983",3)
;

insert into
Cd(nafn,utgafudagur,cd_artist,cd_tegund,cd_utgefandi)
values
("B4.DA.$$",20/1/2015,1,4,1),
("randomAlbumTitle",9/8/2008,2,5,2),
("Highway to hell",7/27/1979,3,2,3)
;

insert into
Lag(nafn,lengd,texti,lag_tegund,lag_artist,lag_cd)
values
("saveTheChildren","0355","Jo-Vaughn,Scott,Patrick Baril",4,1,1),
("PaperTrails","0314","Scott,LeeBannon",4,1,1),
("ChristConscious","0253","scott",4,1,1),
("sometimes thing get,Whatever","0820",null,5,2,2),
("slip","0743",null,5,2,2),
("some kind of blue","0800",null,5,2,2),
("i remember","0954","kaskade",5,2,2),
("highway to hell","0329","AngusYoung,Malcom Young,Bon Scott",2,3,3),
("Walk all over you","0510","AngusYoung,Malcom Young,Bon Scott",2,3,3),
("Girls got rythm","0324","AngusYoung,Malcom Young,Bon Scott",2,3,3),
("Night Prowler","0618","AngusYoung,Malcom Young,Bon Scott",2,3,3)


;

 



