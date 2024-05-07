create database parcialcopaamerica;
use parcialcopaamerica;

create table sandoval_selecciones (
codigo_seleccion varchar(50) primary key,
nombre_seleccion varchar(50),
ciudad_estado_primera_fase varchar(50),
veces_campeon int,
año_campeon varchar(150),
nombre_estadio varchar(50),
aforo decimal(10,3),
año_fundacion date,
costo_boleta varchar(50)
);

create table sandoval_jugadores (
codigo_jugador varchar(50) primary key,
codigo_seleccion varchar(50),
documento_identidad varchar(50),
nombre varchar(50),
fecha_nacimiento date,
nacionalidad varchar(50),
posicion varchar(50),
club varchar(50),
valor_mercado varchar(50),
FOREIGN KEY (codigo_seleccion) REFERENCES sandoval_selecciones (codigo_seleccion)
);

create table sandoval_partidos (
codigo_partido int primary key,
seleccion_local varchar(20),
seleccion_visitante varchar(20),
fecha_partido date,
goles_local varchar(50),
goles_visitante varchar(50),
partidos varchar (50),
FOREIGN KEY (partidos) REFERENCES sandoval_selecciones (codigo_seleccion)
);

create table sandoval_goles (
codigo_gol varchar(50) primary key,
codigo_partido int(50),
jugador varchar(50),
tipo_gol varchar(50),
minuto_gol int,
foreign key (codigo_partido) references sandoval_partidos(codigo_partido)
);

create table sandoval_tecnicos (
codigo_tecnico varchar(50) primary key,
codigo_seleccion VARCHAR (50),
nombre_seleccion varchar(50),
identificacion varchar(50),
nombres varchar(50),
apellidos varchar(50),
fecha_nacimiento date,
pais_nacimiento varchar(50),
ciudad_nacimiento varchar(50),
foreign key (codigo_seleccion) references sandoval_selecciones(codigo_seleccion)
);


insert into sandoval_selecciones (codigo_seleccion, nombre_seleccion,ciudad_estado_primera_fase,veces_campeon,año_campeon,nombre_estadio,aforo,año_fundacion,costo_boleta)
values 
('10','Colombia','Texas','1','2001',' NRG_Stadium','72,220','2002-08-24','$52'),
('11','Peru','Texas','2','1939-1975',' AT&T Stadium','80,000','2009-05-27','$60'),
('12','Uruguay','Florida','15','1916-1917-1920-1923-1924-1926-1935-1942-1956-1959-1967-1983-1987-1995-2011','Hard Rock Stadium','65,300','1987-12-01','$80'),
('13','Argentina','Atlanta','15','1921-1925-1927-1929-1937-1941-1945-1946-1947-1955-1957-1959-1991-1993-2021','Mercedes-Benz Stadium','71,000','2017-09-11','$200'),
('14','Brasil','Inglewood','9','1919-1922-1949-1989-1997-1999-2004-2007-2019','SoFI Stadium','70,000','2020-09-08','$91'),
('15','Ecuador','California','0','no ha sido campeon','Levis® Stadium','68,500','2011-04-11','$100'),
('16','Costa Rica','Inglewood','0','no ha sido campeon','SoFI Stadium','70,000','2020-09-08','$91'),
('17','Sandoval FC','Las Vegas','0','no ha sido campeon','Allegiant Stadium','65.000','2020-06-31','$325');

select*from  sandoval_selecciones;

insert into sandoval_jugadores (codigo_jugador,codigo_seleccion,documento_identidad,nombre,fecha_nacimiento,nacionalidad,posicion,club,valor_mercado)
values 
('1001','10','2035698','James Rodriguez','1991-07-12','colombiana','centrocampista','São Paulo FC','4,50 mill. €'),
('1002','10','2598789','Luis Diaz','1997-01-13','colombiana','delantero izquierdo','Liverpool','75,00 mill. €'),
('1003','10','4889875','Rafael Santos Borre','1995-09-15','colombiana','centro delantero','Sport Club Internacional','8,00 mill. €'),
('1004','10','5995245','Juan Fernando Quintero','1993-01-18','colombiana','mediocampista ofensivo','Racing Club','2,50 mill. €'),
('1005','10','1254546','Daniel Muñoz','1996-05-26','colombiana','defensa lateral derecho','Crystal Palace','15,00 mill. €'),
('1006','10','4589986','Santiago Arias','1992-01-13','colombiana','defensa lateral derecho','Esporte Clube Bahia','2,50 mill. €'),
('1007','10','9856654','Johan Mojica','1992-08-21','colombiana','defensa lateral izquierdo','Osasuna','2,50 mill. €'),
('1008','10','9565212','Alvaro Montero','1995-03-29','colonbiana','portero','Millonarios FC','2,60 mill. €'),
('1009','10','9865512','David Ospina','1988-08-31','colombiana','portero','Al-Nassr FC','2,50 mill. €'),
('1010','10','5989567','Yerry Mina','1994-09-23','colombiana','defensa central','Cagliari','3,00 mill. €'),
('1011','10','1025887','Jhon Arias','1997-09-21','colombiana','volante izquierdo','Fluminense','12,00 mill. €'),
('1101','11','968752','Paolo Guerrero','1984-01-01','peruana','centro delantero','Universidad César Vallejo','175 mil €'),
('1102','11','985657','Gianluca Lapadula','1990-02-07','peruana','centro delantero','Cagliari','2,00 mill. €'),
('1103','11','989562','Wilder Cartagena','1994-09-23','peruana','mediocampista central','Orlando City SC','2,50 mill. €'),
('1104','11','986578','Martin Tavara','1999-03-25','peruana','mediocampista central','Club Sporting Cristal','500 mil €'),
('1105','11','231406','Luis Abram','1996-02-27','peruana','defensa central','Atlanta United FC','3,00 mill. €'),
('1106','11','230569','Erick Noriega','2001-10-22','peruana','defensa central','Comerciantes Unidos','225 mil €'),
('1107','11','124896','Luis Advincula','1990-03-02','peruana','defensa lateral derecho','CA Boca Juniors','1,20 mill. €'),
('1108','11','122259','Pedro Gallese','1990-04-23','peruana','portero','Orlando City SC','1,50 mill. €'),
('1109','11','562178','Renato Solis','1998-01-28','peruana','portero','Club Sporting Cristal','850 mil €'),
('1110','11','120389','Miguel Trauco','1992-08-25','peruana','defensa lateral izquierdo','Criciúma Esporte Clube','1,80 mill. €'),
('1111','11','102356','Joao Grimaldo','2003-02-20','peruana','delantero derecho','Club Sporting Cristal','1,50 mill. €'),
('1201','12','87954212','Brian Rodriguez','2000-05-20','uruguaya','segundo delantero','CF América','5,00 mill. €'),
('1202','12','12259980','Facundo Pellistri','2001-12-20','uruguaya-española','delantero derecho','Granada CF','10,00 mill. €'),
('1203','12','12598502','Facundo Torres','2000-04-13','uruguaya','delantero izquierdo','Orlando City SC','14,00 mill. €'),
('1204','12','13965848','Federico Valverde','1998-07-23','uruguaya-española','mediocampista central','Real Madrid CF','100,00 mill. €'),
('1205','12','84897123','Manuel Ugarte','2001-04-11','uruguaya','centrocampista defensivo','París Saint-Germain FC','60,00 mill. €'),
('1206','12','12056894','Rodrigo Bentancur','1997-06-05','uruguaya','mediocampista central','Tottenham Hotspur','35,00 mill. €'),
('1207','12','53897120','Ronald Araujo','1999-03-07','uruguaya-española','defensa central','FC Barcelona','70,00 mill. €'),
('1208','12','12032889','Sebastian Caceres','1999-08-18','uruguaya','defensa central','CF América','7,00 mill. €'),
('1209','12','12489657','Nicolas Fonseca','1998-10-19','uruguaya-italiana','mediocampista central','CA River Plate','2,50 mill. €'),
('1210','12','30215596','Santiago Mele','1997-09-06','uruguaya-italiana','portero','Junior de Barranquilla','2,00 mill. €'),
('1211','12','45221013','Franco Israel','2000-04-22','uruguaya-italiana','portero','Sporting de Lisboa','2,50 mill. €'),
('1301','13','1203658','Angel Di Maria','1988-02-14','argentino-italiana','delantero derecho','SL Benfica','4,00 mill. €'),
('1302','13','2302541','Lionel Messi','1987-06-24','argentino-española','delantero derecho','Inter Miami CF','30,00 mill. €'),
('1303','13','1203359','Alejandro Garnacho','2004-07-01','argentino-española','delantero izquierdo','Manchester United','40,00 mill. €'),
('1304','13','0328895','Alexis Mac Allister','1998-12-24','argentino-italiana','mediocampista central','Liverpool','70,00 mill. €'),
('1305','13','9632754','Rodrigo de Paul','1994-05-24','argentino-italiana','volante izquierdo','Atlético de Madrid','30,00 mill. €'),
('1306','13','3021568','Giovani Lo Celso','1996-04-09','argentino-italiana','mediocampista central','Tottenham Hotspur','16,00 mill. €'),
('1307','13','7895462','Nicolas Valentini','2001-04-06','argentino-italiana','defensa central','CA Boca Juniors','6,00 mill. €'),
('1308','13','1444587','Nicolas Otamendi','1988-02-12','argentina','defensa central','SL Benfica','1,50 mill. €'),
('1309','13','0002485','Nicolas Tagliafico','1992-08-31','argentino-italiana','defensa lateral izquierdo','Olympique de Lyon','8,00 mill. €'),
('1310','13','2001500','Franco Aramni','1986-10-16','argentina','portero','CA River Plate','1,20 mill. €'),
('1311','13','3336501','Emiliano Martinez','1992-09-02','argentino-española','portero','Aston Villa','28,00 mill. €'),
('1401','14','77789','Vinicius Junior','2000-07-12','brasileño-española','delantero izquierdo','Real Madrid CF','150,00 mill. €'),
('1402','14','20159','Rodrygo','2001-01-09','brasileño-española','delantero derecho','Real Madrid CF','100,00 mill. €'),
('1403','14','11205','Richarlison','1997-05-10','brasileña','centro delantero','Tottenham Hotspur','40,00 mill. €'),
('1404','14','56989','Douglas Luiz','1998-05-09','brasileña','mediocampista central','Aston Villa','70,00 mill. €'),
('1405','14','89889','Lucas Paqueta','1997-08-27','brasileño-portuguesa','mediocampista ofensivo','West Ham United','65,00 mill. €'),
('1406','14','14442','Andre','2001-07-16','brasileña','centrocampista ofensivo','Fluminense','25,00 mill. €'),
('1407','14','22587','Danilo','1991-07-15','brasileña','defensa lateral derecho','Juventus','12,00 mill. €'),
('1408','14','23558','Bremer','1997-03-18','brasileña','defensa central','Juventus','60,00 mill. €'),
('1409','14','78879','Beraldo','2003-11-24','brasileña','defensa central','París Saint-Germain FC','20,00 mill. €'),
('1410','14','05698','Leo Jardim','1995-03-20','brasileño-italiana','portero','Clube de Regatas Vasco da Gama','4,50 mill. €'),
('1411','14','12025','Alisson','1992-10-02','brasileña','portero','Liverpool','32,00 mill. €'),
('1501','15','165898','Gonzalo Plata','2000-11-01','ecuatoriana','delantero derecho','Al-Sadd SC','5,00 mill. €'),
('1502','15','154748','Jordy Caicedo','1997-11-18','ecuatoriana','centro delantero','Atlas Guadalajara','3,50 mill. €'),
('1503','15','789774','Allen Obando','2006-06-13','ecuatoriana','centro delantero','Barcelona SC Guayaquil','1,00 mill. €'),
('1504','15','120589','Moises Caicedo','2001-11-02','ecuatoriana','centrocampista defensivo','Chelsea FC','80,00 mill. €'),
('1505','15','122545','Jose Cifuentes','1999-03-12','ecuatoriana','mediocampista central','Cruzeiro Esporte Clube','7,00 mill. €'),
('1506','15','112500','Angel Mena','1988-01-21','ecuatoriana','volante derecho','Club León FC','900 mil €'),
('1507','15','189345','Piero Hincapie','2002-01-09','ecuatoriana','defensa central','Bayer 04 Leverkusen','35,00 mill. €'),
('1508','15','200315','Angelo Preciado','1998-02-18','ecuatoriana','defensa lateral derecho','AC Sparta Praga','5,00 mill. €'),
('1509','15','456384','Pervis Estupiñan','1998-01-21','ecuatoriano-española','defensa lateral izquierdo','Brighton & Hove Albion','35,00 mill. €'),
('1510','15','235621','Javier Burrai','1990-10-09','ecuatoriano-argentino','portero','Barcelona SC Guayaquil','700 mil €'),
('1511','15','120021','Hernan Galindez','1987-03-30','ecuatoriano-argentino','portero','CA Huracán','350 mil €'),
('1601','16','1112023','Anthony Contreras','2000-01-29','costarinsense-nicaragueño','centro delantero','Pafos FC','600 mil €'),
('1602','16','1124555','Alvaro Zamora','2002-03-09','costarinsense','delantero izquierdo','Aris de Salónica','600 mil €'),
('1603','16','7789556','Elias Aguilar','1992-11-07','costarinsense','mediocampista ofensivo','CS Herediano','450 mil €'),
('1604','16','8968854','Warren Madrigal','2004-07-24','costarisense','mediocampista cdentral','Deportivo Saprissa','325 mil €'),
('1605','16','3665248','Gerald Taylor','2001-05-28','costarisense-panameño','defensa lateral derecho','Deportivo Saprissa','225 mil €'),
('1606','16','2231547','Brandon Aguilera','2003-06-28','costarisense','mediocampista central','Bristol Rovers','300 mil €'),
('1607','16','0215487','Alexis Gamboa','1999-03-20','costarisense','defensa central','LD Alajuelense','375 mil €'),
('1608','16','1236587','Joseph Mora','1993-01-15','costarisense','defensa lateral izquierdo','Deportivo Saprissa','500 mil €'),
('1609','16','0021548','Juan Pablo Vargas','1995-06-06','costarisense','defensa central','Millonarios FC','2,00 mill. €'),
('1610','16','1236547','Keylor Navas','1986-12-15','costarisense-español','portero','París Saint-Germain FC','2,00 mill. €'),
('1611','16','3201233','Kevin Chamorro','2000-04-08','costarinsense-nicaragueño','portero','Deportivo Saprissa','350 mil €'),
('1701','17','9625368925','Cristian Gonzalez','2004-02-15','colombiano','delantero derecho','Sandoval FC','350 mil €'),
('1702','17','1112511458','Darwin Esteban','2004-10-10','colombiano','delantero derecho','Sandoval FC','500 mil €'),
('1703','17','0987654432','Sebastian Lopez','2005-01-25','colombiano','mediocampista central','Sandoval FC','500 mil €'),
('1704','17','1213456789','David Rodriguez','1999-08-12','colombiano','mediocampista ofensivo','Sandoval FC','450 mil €'),
('1705','17','6547988923','David Diaz','2001-12-24','colombiano','defensa central','Sandoval FC','450 mil €'),
('1706','17','2387328723','Sebastian Andrade','2002-01-17','colombiano','defensa lateral izquierdo','Sandoval FC','600 mil €'),
('1707','17','1111222057','Nicolas Rodriguez','2004-02-28','colombiano','defensa central','Sandoval FC','2,00 mill. €'),
('1708','17','0032002517','Santiago Ruiz','1998-11-06','colombiano','defensa lateral derecho','Sandoval FC','600 mil €'),
('1709','17','8889885477','Daniel Martinez','2003-09-21','colombiano','centro campista defensivo','Sandoval FC','5,00 mill. €'),
('1710','17','9969686456','Cristian Lemus','2004-01-05','colombiano','portero','Sandoval FC','2,00 mill. €'),
('1711','17','0202001587','Fabian Sanchez','2003-04-25','colombiano','portero','Sandoval FC','600 mil €');

select*from sandoval_jugadores;


insert into sandoval_partidos (codigo_partido,seleccion_local,seleccion_visitante,fecha_partido,goles_local,goles_visitante) 
values 
('03','Brasil','Argentina','2024-06-25','2','1'),
('04','Uruguay','Costa Rica','2024-06-26','3','2'),
('06','Colombia','Peru','2024-06-28','3','2'),
('07','Sandoval FC','Ecuador','2024-06-27','2','0');





select*from sandoval_partidos;




-- Para el partido 03: Brasil vs. Argentina
-- Gol de Brasil
insert into sandoval_goles values ('0301','03','Vinicius Junior','remate fuera del area',23);
-- Gol de Argentina
insert into sandoval_goles values ('0302','03','Lionel Messi','penal',55);
-- Gol de Brasil
insert into sandoval_goles values ('0303','03','Rodrygo','gol de cabeza',68);

-- Para el partido 04: Uruguay vs. Costa Rica
-- Gol de Uruguay
insert into sandoval_goles values ('0401','04','Facundo Torres','tiro de esquina',10);
-- Gol de Uruguay
insert into sandoval_goles values ('0402','04','Federico Valverde','tiro libre',20);
-- Gol de Costa Rica
insert into sandoval_goles values ('0403','04','Gerald Taylor','gol de cabeza',40);
-- Gol de Uruguay
insert into sandoval_goles values ('0404','04','Rodrigo Bentancur','penal',55);
-- Gol de Costa Rica
insert into sandoval_goles values ('0405','04','Federico Valverde','remate dentro de bomba',75);

-- Para el partido 06: Colombia vs. Peru
-- Gol de Colombia
insert into sandoval_goles values ('0601','06','James Rodriguez','tiro libre',15);
-- Gol de Colombia 
insert into sandoval_goles values ('0602','06','Luis Diaz','remate fuera de bomba',20);
-- Gol de Peru
insert into sandoval_goles values ('0603','06','Paolo Guerrero','tiro libre',30);
-- Gol de Colombia
insert into sandoval_goles values ('0604','06','Luis Diaz','gol de cabeza',45);
-- Gol de Peru
insert into sandoval_goles values ('0605','06','Erick Noriega','penal',60);

-- Para el partido 07: Sandoval FC vs Ecuador
-- Gol de Sandoval FC
insert into sandoval_goles values ('0701','07','Sebastian Lopez','tiro libre',22);
-- Gol de Sandoval FC
insert into sandoval_goles values ('0702','07','Darwin Esteban','gol de cabeza',38);

select*from sandoval_goles;



insert into sandoval_tecnicos (codigo_tecnico,nombre_seleccion,identificacion,nombres,apellidos,fecha_nacimiento,pais_nacimiento,ciudad_nacimiento)
values 
('0110','Colombia','5635','Nestor','Lorenzo','1966-02-28','Argentina','Buenos Aires'),
('0111','Peru','4555','Jorge','Fossati','1952-11-22','Uruguay','Montevideo'),
('0112','Uruguay','6589','Marcelo','Bielsa','1955-07-21','Argentina','Rosario'),
('0113','Argentina','8888','Lionel','Scaloni','1978-05-16','Argentina','Pujato'),
('0114','Brasil','1234','Dorival','Junior','1962-04-25','Brasil','Araraquara (São Paulo)'),
('0115','Ecuador','9876','Felix','Sanchez','1975-12-13','España','Barcelona'),
('0116','Costa Rica','3265','Gustavo','Alfaro','1962-08-14','Argentina','Rafaela'),
('0117','Sandoval FC','1038','Jose','Sandoval','2004-12-02','Colombia','Bogota');

select*from sandoval_tecnicos;


-- CONSULTAS

-- primera consulta
select codigo_seleccion,nombre,fecha_nacimiento,nacionalidad,club from sandoval_jugadores
where DATEDIFF(CURRENT_DATE(), fecha_nacimiento) / 365.25 > 20
order by fecha_nacimiento DESC;

-- segunda consulta
select nombre,posicion,club from sandoval_jugadores;

-- tercera consulta 
select j.nombre, j.codigo_seleccion, j.posicion, j.club, g.codigo_partido, g.tipo_gol, g.minuto_gol
from sandoval_jugadores j
join sandoval_goles g ON j.nombre = g.jugador;

-- cuarta consulta
select nombre, nacionalidad, valor_mercado
from sandoval_jugadores
where posicion = 'delantero izquierdo'
order by CAST(REPLACE(REPLACE(valor_mercado, ' mill. €', ''), ',', '') AS DECIMAL(10, 2)) DESC;

-- quinta consulta 

-- sexta consulta
select S1.nombre_seleccion AS Seleccion1, S2.nombre_seleccion AS Seleccion2, S1.nombre_estadio, S1.costo_boleta
from sandoval_selecciones S1
join sandoval_selecciones S2 ON S1.nombre_estadio = S2.nombre_estadio AND S1.codigo_seleccion < S2.codigo_seleccion;

-- septima consulta
select T.nombres AS Nombre_Presidente, S.nombre_seleccion 
from sandoval_tecnicos T
join sandoval_selecciones S ON T.nombre_seleccion = S.nombre_seleccion;

-- octava consulta 
UPDATE sandoval_partidos
SET fecha_partido = CURRENT_DATE()
WHERE codigo_partido IN ('03', '04', '06', '07');

-- novena consulta
SELECT nombre_seleccion AS seleccion,ciudad_nacimiento,nombres AS nombre,apellidos AS apellido
FROM sandoval_tecnicos;


-- decima consulta
select j.nombre, j.posicion, j.valor_mercado
from sandoval_jugadores j
join sandoval_selecciones s ON j.codigo_seleccion = s.codigo_seleccion
where s.nombre_seleccion = 'Colombia'
order by CAST(REPLACE(REPLACE(j.valor_mercado, ' mill. €', ''), ',', '') AS DECIMAL(10, 2)) DESC;