-- drop table if exists
drop table if exists farmers_market_svi;

create table farmers_market_svi (
	id serial primary key,
	FMID real,
	MarketName varchar(200),
	street_farm varchar(200),
	city_farm varchar(100),
	county_farm varchar(50),
	state_farm varchar(20),
	zip_farm varchar(10),
	x_farm real,
	y_farm real,
	state_svi varchar(40),
	county_svi varchar(50),
	E_TOTPOP real,
	E_POV150 real,
	M_POV150 real,
	E_UNEMP real,
	M_UNEMP real,
	E_HBURD real,
	M_HBURD real,
	E_NOHSDP real,
	M_NOHSDP real,
	E_UNINSUR real,
	M_UNINSUR real,
	E_MINRTY real,
	M_MINRTY real,
	EP_MINRTY real,
	MP_MINRTY real,
	EPL_MINRTY real
);