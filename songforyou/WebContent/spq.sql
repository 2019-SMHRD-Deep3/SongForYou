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
   	  
   INSERT INTO SONGRESULT VALUES ('������ �����', '������', 'Ÿ��Ʋ,����,�뷡,Ÿ��Ʋ,����,�뷡,Ÿ��Ʋ,����,�뷡,Ÿ��Ʋ,����,�뷡,Ÿ��Ʋ,����,�뷡,Ÿ��Ʋ,����,�뷡')
   

INSERT INTO songtitle VALUES (11,'������ �����','f','������','images/IU.png');
INSERT INTO songtitle VALUES (12,'�׳��츮','music/��ȣ(���̽�Ʈ)-�׳��츮.mp3','��ȣ(���̽�Ʈ)','images/baekho.jpg');
INSERT INTO songtitle VALUES (13,'Here I Am','music/���(B1A4)-Here I Am.mp3','���(B1A4)','images/hereiam.jpg');
INSERT INTO songtitle VALUES (14,'����','music/����-����.mp3','����','images/owen.jpg');
INSERT INTO songtitle VALUES (15,'Make it count','music/þ(CHEN)-Make it count.mp3','þ','images/makeitcount.jpg');
INSERT INTO songtitle VALUES (16,'���ݾ�','music/��Ŵ-���ݾ�.mp3','��Ŵ','images/paulkim.jpg');
INSERT INTO songtitle VALUES (17,'Think of You','music/�ϼ���-Think of You.mp3','�ϼ���','images/thinkofyou.jpg');

��, the end

INSERT INTO songresult VALUES('����','��ȣ','���ݾ�,��Ŵ,images/paulkim.jpg,����,����,images/owen.jpg,�׳��츮,��ȣ(���̽�Ʈ),images/baekho.jpg,Think of You,�ϼ���,images/thinkofyou.jpg,��,������,images/kimhyunjung.jpg,The end,������,images/theend.jpg')

INSERT INTO songtitle VALUES (1,'����','music/��ȣ-����.mp3','��ȣ','images/start.jpg');
INSERT INTO songtitle VALUES (2,'�ƹ��뷡','music/����-�ƹ��뷡.mp3','ZICO','images/ZICO.jpg');
INSERT INTO songtitle VALUES (3,'�׶� �� ����','f','����','images/Kimfeel.jpg');
INSERT INTO songtitle VALUES (4,'���� �� ���� �� �� ���濡��','music/����-���� �� ���� �� �� ���濡��.mp3','����','images/Noeul.jpg');
INSERT INTO songtitle VALUES (5,'�ٽ� ��, ����','music/�鿹��-�ٽ� ��, ����.mp3','�鿹��','images/Baek.jpg');
INSERT INTO songtitle VALUES (6,'�ݸ�','f','����ȣ','images/Jin.jpg');
INSERT INTO songtitle VALUES (7,'�Ѹ��� �������� ��','f','crush','images/Crush.jpg');
INSERT INTO songtitle VALUES (8,'����','f','����','images/Moon.jpg');
INSERT INTO songtitle VALUES (9,'��� �̺����� ����ϰھ�','music/AKMU(�ǵ�������)-��� �̺����� ����ϰھ�, �� ����ϴ� ����.mp3','AKMU(�ǵ�������)','images/AKMU.jpg');
INSERT INTO songtitle VALUES (10,'�ʸ� ����ϰ� �־�','music/����-�ʸ� ����ϰ� �־�.mp3','����(BAEKHYUN)','images/BaekHyeon.jpg');

insert into songbucket values (bucketid_seq.nextval, (select songid from songtitle where title='������ �����'),(select idnum from songmember where idnum=21))
insert into songbucket values( bucketid_seq.nextval, (select songid from songtitle where title=?),(select idnum from songmember where idnum=?))
insert into songbucket select t.songid, s.idnum from songmember s, songtitle t
where s.id= 1 and t.title='�ƹ�����'
insert into songbucket select songid from songtitle where title='�ƹ��뷡'

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