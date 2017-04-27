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
faedingardagur date null,
lifandi varchar(255) null,
latinn date null,
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
("electro")
;

insert into
Flokkur(flokkur)
values
("solo"),
("band"),
("dj")
;

insert into
Utgefandi(nafn)
values
("pro era"),
("mau5trap"),
("Albert/Atlantic"),
("Brother/Capitol"),
("RSO, Polydor, Reprise")
;



insert into
Artist(nafn,stofndagur,starfandi,lok,artist_flokkur)
values
("joeyBada$$",12/6/1999,"ja",null,1),
("Deadmau5",6/26/2005,"ja",null,3),
("AC/DC",null/null/1973,"ja",null,2),
("Beach boys",null/null/1961,"ja",null,3),
("Bee gees",null/null/1958,"nei",null/null/2012,3)
;


insert into
Medlimir(nafn,faedingardagur,lifandi,latinn,lysing,tilheyrir_artist)
values
("Jo-Vaughn Virginie Scott",20/1/1995,"ja",null,"Jo-Vaughn Virginie Scott (born January 20, 1995),[2] better known by his stage name Joey Bada$$, is an American rapper and actor",1),
("Joel Thomas Zimmerman",1/5/1981,"ja",null,"JoelThomasZimmerman (born January 5, 1981), better known by his stage name deadmau5 (pronounced dead mouse), is a Canadian record producer and DJ from Toronto, Ontario.",2),
("Bon Scott",7/26/1946,"nei",2/19/1980,"Ronald Belford Scott (9 July 1946 – 19 February 1980) was an Australian rock musician, best known for being the lead singer and lyricist of Australian hard rock band AC/DC from 1974 until his death in 1980",3),
("Angus Young",3/31/1955,"ja",null,"Angus McKinnon Young (born 31 March 1955) is a Scottish guitarist, best known as the co-founder, lead guitarist, songwriter and only remaining original member of the Australian hard rock band AC/DC",3),
("Malcom Young",1/6/1953,"ja",null,"Malcolm Mitchell Young (born 6 January 1953)[1] is a Scottish retired musician and songwriter, best known as a co-founder, rhythm guitarist, backing vocalist and songwriter for the hard rock band AC/DC.",3),
("Cliff Williams",12/14/1949,"ja",null,"Clifford Williams (born 14 December 1949) is a British musician who was a member of the Australian hard rock band AC/DC as their bassist and backing vocalist from 1977 to 2016",3),
("Phil Rudd",5/19/1954,"ja",null,"Phillip Hugh Norman Rudd (born Phillip Hugh Norman Witschke Rudzevecuis,[1][2] 19 May 1954) is an Australian drummer, best known for his membership in Australian hard rock band AC/DC from 1975 through 1983",3),
("Dennis Willson",12/4/1944,"nei",12/28/1983,"Dennis Carl Wilson (December 4, 1944 – December 28, 1983) was an American musician, singer, and songwriter who co-founded the Beach Boys",4),
("Carl Willson",12/21/1946,"nei",2/6/1998,"Carl Dean Wilson (December 21, 1946 – February 6, 1998) was an American musician, singer, songwriter, and record producer who co-founded the Beach Boys",4),
("Ricky Fataar",9/5/1952,"ja",null,"Ricky Fataar (born 5 September 1952) is a South African multi-instrumentalist of Cape Malay descent, who has performed as both a drummer and a guitarist",4),
("Blondie Chaplin",7/7/1951,"ja",null,"Terence William Chaplin (born 7 July 1951) is a singer and guitarist from Durban, South Africa, where he played in the band The Flames in the mid-to late-1960s",4),
("Barry Gibb",9/1/1946,"ja",null,"Barry Alan Crompton Gibb, CBE (born 1 September 1946) is a British singer, songwriter and record producer who rose to worldwide fame as a co-founder of the group Bee Gees",5),
("Robin Gibb",12/22/1949,"nei",5/20/2012,"Robin Hugh Gibb CBE (22 December 1949 – 20 May 2012) was a British singer, songwriter and record producer, who gained worldwide fame as a member of the pop group the Bee Gees",5),
("Maurice Gibb",12/22/1949,"nei",1/12/2003,"Maurice Ernest Gibb, CBE (/ˈmɔːrɪs/; 22 December 1949 – 12 January 2003) was a British singer, songwriter, multi-instrumentalist, and record producer, who achieved fame as a member of the British pop group the Bee Gees",5),
("Alan Kendall",9/6/1944,"ja",null,"Alan Kendall (born 9 September 1944, in Darwen, Lancashire) is an English musician and was the lead guitarist for the popular band the Bee Gees",5),
("Blue Weaver",3/11/1947,"ja",null,"played behind the Bee Gees at the initiation of his former Amen Corner colleague drummer Dennis Bryon, who had joined their backing band a year earlier during their successful 1975-79 period",5),
("Dennis Bryon",null,null,null,"Dennis Bryon is a Welsh rock drummer from Cardiff, best known for his work with the Bee Gees from 1974 to 1979.",5)
;


insert into
Cd(nafn,utgafudagur,cd_artist,cd_tegund,cd_utgefandi)
values
("B4.DA.$$",20/1/2015,1,4,1),
("randomAlbumTitle",9/8/2008,2,5,2),
("Highway to hell",7/27/1979,3,2,3),
("Smiley smile ",12/18/2001,4,1,4),
("Saturday Night Fever: The Original Movie Sound Track ",11/15/1977,5,3,5),
("All American Bada$$",4/7/2017,1,4,1),
("Back in Black",6/25/1980,3,2,3)
;


insert into
Lag(nafn,lengd,texti,lag_tegund,lag_artist,lag_cd)
values
("saveTheChildren","0355","Jo-Vaughn/Scott,Patrick Baril",4,1,1),
("PaperTrails","0314","Scott/LeeBannon",4,1,1),
("ChristConscious","0253","scott",4,1,1),
("sometimes thing get,Whatever","0820",null,5,2,2),
("slip","0743",null,5,2,2),
("some kind of blue","0800",null,5,2,2),
("i remember","0954","kaskade",5,2,2),
("highway to hell","0329","AngusYoung/Malcom Young,Bon Scott",2,3,3),
("Walk all over you","0510","AngusYoung/Malcom Young,Bon Scott",2,3,3),
("Girls got rythm","0324","AngusYoung/Malcom Young,Bon Scott",2,3,3),
("Night Prowler","0618","AngusYoung/Malcom Young,Bon Scott",2,3,3),
("Good vibrations","0337","Wilson/Love",1,4,4),
("heroes and villains","0337","Brian Wilson/Van Dyke Parks",1,4,4),
("Staying alive","0445","Barry Gibb/Robin Gibb/Maurice Gibb",3,5,5),
("For My People","0353","Scott/Abdul-Rahman/Adam/Pallin/Barsh/Seeff",4,1,6),
("Babylon","0536","Scott/Gabriel Stevenson/Pallin/Jamar McNaughton",4,1,6),
("Good Morning Amerikkka","0138","Jo-Vaughn/Scott/Khalil Abdul-Rahman/Sam Barsh/Dan Seeff",4,1,6),
("Back in Black","0414","AngusYoung/Malcom Young/brian Johnsson",2,3,7),
("Hells Bells","0510","AngusYoung/Malcom Young/brian Johnsson",2,3,7),
("You Shook Me All Night Long","0330","AngusYoung/Malcom Young/brian Johnsson",2,3,7)
;

 



