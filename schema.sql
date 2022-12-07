-- drop table if exists
drop table if exists farmers_market_svi;

create table farmers_market_svi (
	FMID varchar(7) primary key,
	MarketName varchar(200),
	street varchar(100),
	city varchar(50),
	County varchar(50),
	State varchar(20),
	zip varchar(5),
	x decimal,
	y decimal,
	E_TOTPOP int,
	E_POV150 int,
	M_POV150 int,
	E_UNEMP int,
	M_UNEMP int,
	E_HBURD int,
	M_HBURD int,
	E_NOHSDP int,
	M_NOHSDP int,
	E_UNINSUR int,
	M_UNINSUR int,
	E_MINRTY int,
	M_MINRTY int,
	EP_MINRTY int,
	MP_MINRTY int,
	EPL_MINRTY int	
);