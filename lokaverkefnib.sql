use 2209922929_lokaverkefni;
#a)Sýnið öll lög á tilteknum diski (þið veljið titilinn sjálf).
select Cd.nafn,Lag.nafn
from Cd
inner join Lag
where Lag.lag_cd=Cd.id and Cd.nafn like "Random Album Title"
;
#ég valdi random album title

#b) Sýnið öll lög tiltekins flytjanda (þið veljið flytjandann sjálf).
select artist.nafn,Lag.nafn
from artist
inner join Lag
where Lag.lag_artist=artist.id and artist.nafn like "ac/dc"




#c) Sýnið öll lög tiltekinnar tegundar tónlistar (þið veljið tegundina sjálf).



#d) Sýnið öll lög sem taka meira en 5 mín í spilun.


#e) Sýnið alla diska sem eru gefnir út eftir árið 2010.


#f) Sýnið nafn diska, nafn flytjanda og útgáfuár flytjanda fyrir fyrstu tvo útgáfufyrirtækin í stafrófinu.


#g) Sýnið fimm lengstu lögin, nafn flytjanda og nafn útgefanda.


#h) Sýnið fjölda diska á tegund – birtið bara þær tvær tegundir sem hafa flesta diska.


#i) Sýnið þann útgefanda sem hefur gefið út fæsta diska.


#j) Sýnið nafn, tegund, útgefanda allra diska sem gefnir eru út á árunum 1998-2017. Hópað saman


#eftir útgefanda.


#k) Sýnið hversu mörg lög byrja á bókstafnum A og hversu mörg lög hafa bókstafinn s í nafninu.


#l) Sýndu nafn og aldur allra flytjanda.


#m) Sýndu meðallengd allra laganna.


#n) Sýndu hversu margir flytjendur eiga fleiri en 4 lög.


#o) Sýndu elsta flytjandann og nöfn allra hans laga.
