use TrackGermDB
go
--1) show me list of germs
select * from germ
--2) show me count of germs per host
select count(*), g.Host
from germ g
group by g.Host
