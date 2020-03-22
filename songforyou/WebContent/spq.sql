select * from songmember


CREATE sequence id_seq increment by 1 start with 1
CREATE sequence songid_seq increment by 1 start with 1
CREATE sequence bucketid_seq increment by 1 start with 1

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
   "CHORD" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
   "SINGER" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
   "IMG" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
    CONSTRAINT "SONGTITLE_PK" PRIMARY KEY ("SONGID"))

     CREATE TABLE "HR"."SONGBUCKET" 
   ("BUCKETID" NUMBER NOT NULL ENABLE,
   "SONGID" NUMBER NOT NULL ENABLE, 
   "IDNUM" NUMBER NOT NULL ENABLE, 
    CONSTRAINT "SONGBUCKET_PK" PRIMARY KEY ("BUCKETID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
    CONSTRAINT "SONGBUCKET_FK1" FOREIGN KEY ("SONGID")
     REFERENCES "HR"."SONGTITLE" ("SONGID") ENABLE, 
    CONSTRAINT "SONGBUCKET_FK2" FOREIGN KEY ("IDNUM")
     REFERENCES "HR"."SONGMEMBER" ("IDNUM") ENABLE
   )
   
   CREATE TABLE "HR"."SONGRESULT"
   	( "TITLE" VARCHAR2(1000 BYTE) NOT NULL ENABLE,
   	  "SINGER" VARCHAR2(1000 BYTE) NOT NULL ENABLE,
   	  "RESULT" VARCHAR2(1000 BYTE));
   	  
   INSERT INTO SONGRESULT VALUES ('마음을 드려요', '아이유', '타이틀,가수,노래,타이틀,가수,노래,타이틀,가수,노래,타이틀,가수,노래,타이틀,가수,노래,타이틀,가수,노래')
   

INSERT INTO songtitle VALUES (11,'마음을 드려요','f','아이유','images/IU.png');
INSERT INTO songtitle VALUES (12,'그날우리','music/백호(뉴이스트)-그날우리.mp3','백호(뉴이스트)','images/baekho.jpg');
INSERT INTO songtitle VALUES (13,'Here I Am','music/산들(B1A4)-Here I Am.mp3','산들(B1A4)','images/hereiam.jpg');
INSERT INTO songtitle VALUES (14,'설렘','music/오왠-설렘.mp3','오왠','images/owen.jpg');
INSERT INTO songtitle VALUES (15,'Make it count','music/첸(CHEN)-Make it count.mp3','첸','images/makeitcount.jpg');
INSERT INTO songtitle VALUES (16,'있잖아','music/폴킴-있잖아.mp3','폴킴','images/paulkim.jpg');
INSERT INTO songtitle VALUES (17,'Think of You','music/하성운-Think of You.mp3','하성운','images/thinkofyou.jpg');

놔, the end

INSERT INTO songresult VALUES('시작','가호','있잖아,폴킴,images/paulkim.jpg,설렘,오왠,images/owen.jpg,그날우리,백호(뉴이스트),images/baekho.jpg,Think of You,하성운,images/thinkofyou.jpg,놔,김현정,images/kimhyunjung.jpg,The end,이현우,images/theend.jpg')

INSERT INTO songtitle VALUES (1,'시작','music/가호-시작.mp3','가호','images/start.jpg');
INSERT INTO songtitle VALUES (2,'아무노래','music/지코-아무노래.mp3','ZICO','images/ZICO.jpg');
INSERT INTO songtitle VALUES (3,'그때 그 아인','f','김필','images/Kimfeel.jpg');
INSERT INTO songtitle VALUES (4,'늦은 밤 너의 집 앞 골목길에서','music/노을-늦은 밤 너의 집 앞 골목길에서.mp3','노을','images/Noeul.jpg');
INSERT INTO songtitle VALUES (5,'다시 난, 여기','music/백예린-다시 난, 여기.mp3','백예린','images/Baek.jpg');
INSERT INTO songtitle VALUES (6,'반만','f','진민호','images/Jin.jpg');
INSERT INTO songtitle VALUES (7,'둘만의 세상으로 가','f','crush','images/Crush.jpg');
INSERT INTO songtitle VALUES (8,'문득','f','노을','images/Moon.jpg');
INSERT INTO songtitle VALUES (9,'어떻게 이별까지 사랑하겠어','music/AKMU(악동뮤지션)-어떻게 이별까지 사랑하겠어, 널 사랑하는 거지.mp3','AKMU(악동뮤지션)','images/AKMU.jpg');
INSERT INTO songtitle VALUES (10,'너를 사랑하고 있어','music/백현-너를 사랑하고 있어.mp3','백현(BAEKHYUN)','images/BaekHyeon.jpg');

insert into songbucket values (bucketid_seq.nextval, (select songid from songtitle where title='마음을 드려요'),(select idnum from songmember where idnum=21))
insert into songbucket values( bucketid_seq.nextval, (select songid from songtitle where title=?),(select idnum from songmember where idnum=?))
insert into songbucket select t.songid, s.idnum from songmember s, songtitle t
where s.id= 1 and t.title='아무데나'
insert into songbucket select songid from songtitle where title='아무노래'

select title,singer,img from songtitle where songid= 1
select * from songmember
select * from songbucket
select * from songtitle
select * from SONGRESULT
drop table test5
drop sequence bucketid_seq
drop sequence id_seq
drop table SONGMEMBER
drop table songtitle
drop table songbucket
drop table songresult