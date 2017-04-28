use 2209922929_lokaverkefni;
#a)Sýnið öll lög á tilteknum diski (þið veljið titilinn sjálf).
select Cd.nafn As Cd,Log.nafn as Lag
from Cd
inner join Log
where Log.log_cd=Cd.id and Cd.nafn like "Random Album Title"
;

#b) Sýnið öll lög tiltekins flytjanda (þið veljið flytjandann sjálf).
select artist.nafn as Flytjandi,Log.nafn as Lag
from artist
inner join Log
where Log.log_artist=artist.id and artist.nafn like "ac/dc"
;


#c) Sýnið öll lög tiltekinnar tegundar tónlistar (þið veljið tegundina sjálf).
select artist.nafn as Band,log.nafn as Lag,cd.nafn as CD,tegund.tegund
from log
inner join tegund,artist,cd
where log.log_artist=artist.id and log.log_tegund =tegund.id and log.log_cd =cd.id and tegund.tegund like "Pop"
;


#d) Sýnið öll lög sem taka meira en 5 mín í spilun.
select log.nafn as Lag,artist.nafn as Flytjandi,log.lengd
from log
inner join artist
where  log.log_artist=artist.id and lengd > 0500
;

#e) Sýnið alla diska sem eru gefnir út eftir árið 2010.
select nafn as Cd,utgafudagur
from Cd
where utgafudagur >"2010"
;

#f) Sýnið nafn diska, nafn flytjanda og útgáfuár flytjanda fyrir fyrstu tvo útgáfufyrirtækin í stafrófinu.


select artist.nafn,cd.nafn,cd.utgafudagur,utgefandi.nafn
from cd
inner join artist,utgefandi
where cd.cd_artist =artist.id and cd.cd_utgefandi =utgefandi.id and utgefandi.nafn <"c"
;


#g) Sýnið fimm lengstu lögin, nafn flytjanda og nafn útgefanda.
select log.nafn,log.lengd,artist.nafn as flytjandi,utgefandi.nafn as utgefandi
from cd
inner join log,artist,utgefandi
where log.log_artist =artist.id and cd.cd_utgefandi = utgefandi.id and log.log_cd = cd.id
ORDER BY log.lengd DESC
limit 5
;



#h) Sýnið fjölda diska á tegund – birtið bara þær tvær tegundir sem hafa flesta diska.
select tegund.tegund,min(cd.cd_tegund) as fjöldiDiska
from tegund

inner join cd
where cd.cd_tegund = tegund.id 
group by tegund.tegund
order by count(cd.cd_tegund) desc
limit 2
;



#i) Sýnið þann útgefanda sem hefur gefið út fæsta diska.
select utgefandi.nafn,count(cd.cd_utgefandi) as fjöldiDiska
from cd
inner join utgefandi
where cd.cd_utgefandi = utgefandi.id 
group by utgefandi.nafn
order by count(cd.cd_utgefandi) asc
limit 1
;


#j) Sýnið nafn, tegund, útgefanda allra diska sem gefnir eru út á árunum 1998-2017. Hópað saman eftir útgefanda.
select cd.nafn,tegund.tegund,cd.utgafudagur,utgefandi.nafn
from cd
inner join utgefandi,tegund
where cd.cd_utgefandi =utgefandi.id and cd.cd_tegund=tegund.id and cd.utgafudagur >1998# þarsem ekkert getur verið gefið út eftir 2017 þarf ekki að skilgreina það
order by utgefandi.nafn
;





#k) Sýnið hversu mörg lög byrja á bókstafnum A og hversu mörg lög hafa bókstafinn s í nafninu.
#ætla að snúa dæminu við þar sem engin lög eru með "a"  í byrjun
select "s"as inniheldur,count(nafn) as fjöldi
from log
where nafn like "s%"
union all
select  "a" as a,count(nafn) 
from log
where nafn like "%a%"
;


#l) Sýndu nafn og aldur allra flytjanda.
select artist.nafn,round(DATEDIFF(current_date(),stofndagur)/365) as aldur
from artist
;


#m) Sýndu meðallengd allra laganna.

select log.nafn,avg(lengd) as lengd
from log

;



#n) Sýndu hversu margir flytjendur eiga fleiri en 4 lög.
select artist.nafn,count(log.log_artist)
from log
inner join artist
where log.log_cd = artist.id
group by artist.nafn
having count(log.log_artist) >3
;



#o) Sýndu elsta flytjandann og nöfn allra hans laga.

select artist.nafn,max(round(DATEDIFF(current_date(),stofndagur)/365)) as aldur,log.nafn
from artist
inner join log
where log.log_artist =artist.id  and stofndagur = aldur 
group by log.nafn,artist.nafn,artist.stofndagur
order by log.nafn,artist.stofndagur



# og hér koma spurningarnar mínar








