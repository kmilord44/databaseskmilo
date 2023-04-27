create database Hospital; 

use Hospital; 

create table paciente( 

idpacientepk  bigint unsigned primary key not null  auto_increment, 

tipodoc varchar(50), 

nombrepaciente varchar (50) not null, 

apellidopaciente varchar (50) not null,   

numdoc varchar (50) unique);

 

create table doctor( 

IdDoctorpk  bigint unsigned primary key not null  auto_increment, 

nombreDoctor varchar (50) not null, 

apellidoDoctor varchar (50) not null,   

EspecialidadDoctor varchar (20));

 

 

create table Centro( 

idCentroHospitalario bigint unsigned primary key not null  auto_increment, 

nombreCentro varchar (50) not null, 
 
cuidad varchar (50) not null, 

idDoctorfk bigint unsigned not null, foreign key (idDoctorfk) references doctor(idDoctorpk)); 




 

create table horario( 

idHoraCitaFK bigint unsigned primary key not null  auto_increment,

dia varchar (50), 

idDoctorfk bigint unsigned not null, foreign key (idDoctorfk) references doctor(idDoctorpk)); 



 

create table HistorialClinico( 

idHistorialpk bigint unsigned primary key not null  auto_increment,  

RegistroCitas bigint (50) not null, 

PrevencionesPaciente varchar (20) not null,

idpacientefk bigint unsigned not null, foreign key (idpacientefk) references paciente(idpacientepk)); 



create table cita( 

idCitapk bigint unsigned primary key not null  auto_increment, 

HoraCita varchar (50) not null, 

EspecialidadCita varchar (20) not null,  

idpacientefk bigint unsigned not null, foreign key (idpacientefk) references paciente(idpacientepk), 

idDoctorfk bigint unsigned not null, foreign key (idDoctorfk) references doctor(idDoctorpk)); 




Insert into paciente() Values("121","ti","camilo","suarez","123111");
Insert into paciente() Values("122","ce","mario","danilo","897984");
Insert into paciente() Values("123","rc","alfo","davies","148415");
Insert into paciente() Values("124","ce","leonel","messi","545415");
Insert into paciente() Values("125","ti","abde","juarez","545412");
Insert into paciente() Values("126","rc","sofia","leyva","84251");
Insert into paciente() Values("127","ce","danilo","perez","54151");
Insert into paciente() Values("128","ce","mary","peralta","1531");
Insert into paciente() Values("129","ti","andres","zuñiga","1848541");
Insert into paciente() Values("1210","ti","aleja","fernandez","174165");


Insert into doctor() Values("1","camilo","suarez","odontologo");
Insert into doctor() Values("2","david","gachar","medicogeneral");
Insert into doctor() Values("3","cristiano","dos","oftanmologo");
Insert into doctor() Values("4","santos","aveiro","pediatra");
Insert into doctor() Values("5","leo","rojas","pediatra");
Insert into doctor() Values("6","soila","ramirez","fisioterapeuta");
Insert into doctor() Values("7","marco","solis","medicogeneral");
Insert into doctor() Values("8","marcus","fenix","odontologo");
Insert into doctor() Values("9","dom","adre","oftanmologo");
Insert into doctor() Values("10","cole","street","medicogeneral");


Insert into Centro() Values("1015","sanjose","bogota","1");
Insert into Centro() Values("1023","simonbo","medellin","2");
Insert into Centro() Values("1065","cruz","bogota","3");
Insert into Centro() Values("1054","delia","manizales","4");
Insert into Centro() Values("1058","modelosalud","pereira","5");
Insert into Centro() Values("1032","centrosalud","berlin","6");
Insert into Centro() Values("1071","jua","amsterdam","7");
Insert into Centro() Values("1030","hospitalde suba","bogota","8");
Insert into Centro() Values("1092","ferrario","choco","9");
Insert into Centro() Values("1011","virgensanta","santa marta","10");


Insert into horario() Values("1100","2023-12-05","1");
Insert into horario()  Values("1300","2023-11-11","9");
Insert into horario() Values("1800","2023-12-12","1");
Insert into horario() Values("0500","2023-06-30","2");
Insert into horario()  Values("0900","2023-05-27","2");
Insert into horario()  Values("1200","2023-05-15","3");
Insert into horario()  Values("1500","2023-10-12","4");
Insert into horario()  Values("1900","2023-07-04","4");
Insert into horario()  Values("1930","2023-04-01","5");
Insert into horario()  Values("1120","2023-05-01","6");


Insert into HistorialClinico() Values("1010","56","diabetes","121");
Insert into HistorialClinico() Values("1020","24","cancer","122");
Insert into HistorialClinico() Values("1030","15","rinitis","123");
Insert into HistorialClinico() Values("1040","542","hipertension","124");
Insert into HistorialClinico() Values("1050","825","gonorrea","125");
Insert into HistorialClinico() Values("1060","120","sifilis","126");
Insert into HistorialClinico() Values("1070","02","gripa","127");
Insert into HistorialClinico() Values("1080","81","covid","128");
Insert into HistorialClinico() Values("1090","98","dolor pelvico","129");
Insert into HistorialClinico() Values("1100","455","diabetes","1210");


Insert into cita() Values("555","520","pediatria","121","1");
Insert into cita() Values("564","600","general","122","2");
Insert into cita() Values("897","540","rediografia","123","3");
Insert into cita() Values("142","420","terapia fisica","124","4");
Insert into cita() Values("871","100","odontologia","125","5");
Insert into cita() Values("875","350","odontologia","126","6");
Insert into cita() Values("962","150","pediatria","127","7");
Insert into cita() Values("152","200","medicinageneral","128","8");
Insert into cita() Values("982","500","pediatria","129","9");
Insert into cita() Values("841","610","medicina general","1210","10");


Alter table paciente  change tipodoc ti enum("ti","rc","pasaporte","ce");
Alter table doctor  change nombredoctor nuevonombre varchar(50);
Alter table Centro  change nombrecentro nuevocentro varchar(50);
Alter table horario change idHoraCitaFK  horafk varchar(50);
Alter table HistorialClinico change RegistroCitas registrandoc bigint(50);
Alter table cita change HoraCita horario varchar (50) not null;

select * from paciente limit 5; 
select * from doctor limit 5; 
select * from Centro limit 5; 
select * from horario limit 5; 
select * from HistorialClinico limit 5; 
select * from cita limit 5; 


select  idpacientepk from paciente where idpacientepk % 2 = 0 ;
select  IdDoctorpk from doctor where IdDoctorpk % 2 = 0 ;
select  idCentroHospitalario from Centro where idCentroHospitalario % 2 = 0 ;
select  dia from horario where dia % 2 = 0 ;
select  idHistorialpk from HistorialClinico where idHistorialpk % 2 = 0 ;
select  idCitapk from cita where idCitapk % 2 = 0 ;

 select * from paciente INNER JOIN doctor;
 select * from paciente INNER JOIN horario;
 select * from paciente INNER JOIN HistorialClinico;
 select * from doctor INNER JOIN cita;
 select * from Centro INNER JOIN doctor;
 select * from cita INNER JOIN paciente; 