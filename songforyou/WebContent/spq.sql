select * from songmember


CREATE sequence id_seq increment by 1 start with 1
CREATE sequence songid_seq increment by 1 start with 1

 CREATE TABLE "HR"."SONGMEMBER" 
   (   "IDNUM" NUMBER NOT NULL ENABLE, 
   "ID" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
   "PW" VARCHAR2(50 BYTE), 
   "NAME" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
   "AGE" NUMBER NOT NULL ENABLE, 
   "SEX" NUMBER NOT NULL ENABLE, 
    CONSTRAINT "SONGMEMBER_PK" PRIMARY KEY ("IDNUM"),
    CONSTRAINT "SONGMEMBER_UK" UNIQUE  ("ID")
    )
    
    
CREATE TABLE "HR"."SONGTITLE" 
   (   "SONGID" NUMBER NOT NULL ENABLE, 
   "TITLE" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
   "CHORD" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
   "SINGER" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
    CONSTRAINT "SONGTITLE_PK" PRIMARY KEY ("SONGID"))
  
     CREATE TABLE "HR"."SONGBUCKET" 
   (   "SONGID" NUMBER NOT NULL ENABLE, 
   "IDNUM" NUMBER NOT NULL ENABLE, 
    CONSTRAINT "SONGBUCKET_PK" PRIMARY KEY ("SONGID"),
    CONSTRAINT "SONGBUCKET_FK1" FOREIGN KEY ("SONGID")
     REFERENCES "HR"."SONGTITLE" ("SONGID") ENABLE, 
    CONSTRAINT "SONGBUCKET_FK2" FOREIGN KEY ("IDNUM")
     REFERENCES "HR"."SONGMEMBER" ("IDNUM") ENABLE
   ) 
   
sel

INSERT INTO songtitle VALUES (1,'아무노래','f','지코',1);
INSERT INTO songtitle VALUES (2,'아무데나','f','지코',2);
INSERT INTO songtitle VALUES (3,'아무지개','f','지코',3);


insert into songbucket select t.songid, s.idnum from songmember s, songtitle t
where s.id= 1 and t.title='아무데나'
insert into songbucket select songid from songtitle where title='아무노래'


select * from songmember
select * from songbucket
select * from songtitle
drop table test5
drop sequence id_seq
drop table SONGMEMBER
drop table songtitle
drop table songbucket