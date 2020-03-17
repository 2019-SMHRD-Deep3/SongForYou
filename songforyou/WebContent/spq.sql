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
   "IMG" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
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
   


INSERT INTO songtitle VALUES (1,'마음을 드려요','f','아이유','images/0.jpg');
INSERT INTO songtitle VALUES (2,'Sweet Night','f','V','images/1.jpg');
INSERT INTO songtitle VALUES (3,'그때 그 아인','f','김필','images/2.jpg');
INSERT INTO songtitle VALUES (4,'늦은 밤 너의 집 앞 골목길에서','f','노을','images/3.jpg');
INSERT INTO songtitle VALUES (5,'다시 난, 여기','f','백예린','images/4.jpg');
INSERT INTO songtitle VALUES (6,'반만','f','진민호','images/5.jpg');
INSERT INTO songtitle VALUES (7,'둘만의 세상으로 가','f','crush','images/6.jpg');
INSERT INTO songtitle VALUES (8,'문득','f','노을','images/7.jpg');
INSERT INTO songtitle VALUES (9,'어떻게 이별까지 사랑하겠어','f','AKMU(악동뮤지션)','images/8.jpg');
INSERT INTO songtitle VALUES (10,'너를 사랑하고 있어','f','백현(BAEKHYUN)','images/9.jpg');



insert into songbucket select t.songid, s.idnum from songmember s, songtitle t
where s.id= 1 and t.title='아무데나'
insert into songbucket select songid from songtitle where title='아무노래'

select title,singer,img from songtitle where songid= 1
select * from songmember
select * from songbucket
select * from songtitle
drop table test5
drop sequence id_seq
drop table SONGMEMBER
drop table songtitle
drop table songbucket