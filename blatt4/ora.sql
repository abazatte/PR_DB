drop table Anruf;
drop table Bestellung;
drop table Besteller;
drop table Pizza;

CREATE TABLE Besteller(
    Telefon NUMBER primary key NOT NULL,
    Name_ VARCHAR2(10) NOT NULL,
    Ort VARCHAR2(10) NOT NULL
    
);

CREATE TABLE Pizza(
    Nummer NUMBER NOT NULL,
    Name_ VARCHAR2(10) NOT NULL,
    Preis VARCHAR2(6) NOT NULL
);

create table Anruf (
    NUMMER NUMBER primary key NOT NULL,
    TELEFON NUMBER NOT NULL,
    DATUM VARCHAR2(11) NOT NULL,
    UHRZEIT VARCHAR2(6) NOT NULL,
    
    foreign key (TELEFON) references Besteller(Telefon)
    
);

create table Bestellung(
    ANUMMER NUMBER NOT NULL,
    PNUMMER NUMBER NOT NULL,
    MENGE NUMBER NOT NULL,
    
     foreign key (ANUMMER) references Anruf(Nummer),
     foreign key (PNUMMER) references Pizza(Nummer),
     
     constraint pk_bestellung primary key (ANUMMER,PNUMMER)
);





Insert into anruf(Nummer,Telefon,datum,uhrzeit) values(1,04321,01112006,1645);
Insert into anruf(Nummer,Telefon,datum,uhrzeit) values(2,03456,01112006,1650);
Insert into anruf(Nummer,Telefon,datum,uhrzeit) values(3,3456,01112006,1830);
Insert into anruf(Nummer,Telefon,datum,uhrzeit) values(4,4321,01112006,1845);

Insert into bestellung(anummer,pnummer,menge) values(1,1,2);
Insert into bestellung(anummer,pnummer,menge) values(1,2,3);
Insert into bestellung(anummer,pnummer,menge) values(2,2,4);
Insert into bestellung(anummer,pnummer,menge) values(3,1,1);
Insert into bestellung(anummer,pnummer,menge) values(4,1,2);
Insert into bestellung(anummer,pnummer,menge) values(4,2,3);

insert into besteller(telefon,name_,ort) values(04321,'Ronny','Itzehoe');
insert into besteller(telefon,name_,ort) values(03456,'Bonny','Elmshorn');
insert into besteller(telefon,name_,ort) values(02345,'Johnny','Horst');

insert into pizza(nummer,name_,preis) values(1,'Mafiosa',6.5);
insert into pizza(nummer,name_,preis) values(2,'Tofu',5.5);
insert into pizza(nummer,name_,preis) values(3,'Western',8.3);

insert into Bestellung (ANUMMER, PNUMMER, MENGE)
values (1, 1, 2);

select * from Anruf;

insert into Pizza (Nummer, Name_, Preis)
values (1, 'Mafiosa', '6.5');

update Pizza 
set Name_ = 'abaz'
where Nummer=69;

select * from Pizza;
select * from Anruf;
select * from Besteller;
select * from Bestellung; /*haloo*/



