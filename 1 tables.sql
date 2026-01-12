use master
go 
drop database if exists TrackGermDB
go
create database TrackGermDB
go
use TrackGermDB
go
create table dbo.Germ(
	GermId int not null identity primary key,
	GermName varchar(200) not null constraint u_germ_name_must_be_unique unique,
	Host varchar(20) not null check (host in ('human','plant','animal')) 
)
