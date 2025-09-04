--------------------------------------------------------
--  파일이 생성됨 - 목요일-9월-04-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence MINIBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MINIBOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 156 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MINIRES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MINIRES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table MINIBOARD
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MINIBOARD" 
   (	"BNUM" NUMBER, 
	"MEMBERID" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(200 BYTE), 
	"HIT" NUMBER DEFAULT 0, 
	"REGDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MINIMEMBER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MINIMEMBER" 
   (	"MEMBERID" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"REGDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MINIRESERVATION
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MINIRESERVATION" 
   (	"RESID" NUMBER, 
	"MEMBERID" VARCHAR2(50 BYTE), 
	"RESDATE" VARCHAR2(20 BYTE), 
	"RESTIME" VARCHAR2(10 BYTE), 
	"PERSONS" NUMBER, 
	"REGDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.MINIBOARD
SET DEFINE OFF;
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (1,'admin','첫글','첫글입니다',3,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (2,'hello','두번째','글쓰기 성공',11,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (3,'admin','화이팅','힘내세요!',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (7,'hello','화이팅','더미글',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (8,'hello','코딩','더미글',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (9,'hello','코딩공부','더미글',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (10,'hello','테스트','더미글',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (11,'hello','테스트','더미글',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (12,'admin','테스트','테스트테스트테스트테스트',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (20,'tiger','연습 더미 제목 20','연습 더미20번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (21,'tiger','연습 더미 제목 21','연습 더미21번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (22,'tiger','연습 더미 제목 22','연습 더미22번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (23,'tiger','연습 더미 제목 23','연습 더미23번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (24,'tiger','연습 더미 제목 24','연습 더미24번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (25,'tiger','연습 더미 제목 25','연습 더미25번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (26,'tiger','연습 더미 제목 26','연습 더미26번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (27,'tiger','연습 더미 제목 27','연습 더미27번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (28,'tiger','연습 더미 제목 28','연습 더미28번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (29,'tiger','연습 더미 제목 29','연습 더미29번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (30,'tiger','연습 더미 제목 30','연습 더미30번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (31,'tiger','연습 더미 제목 31','연습 더미31번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (32,'tiger','연습 더미 제목 32','연습 더미32번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (33,'tiger','연습 더미 제목 33','연습 더미33번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (34,'tiger','연습 더미 제목 34','연습 더미34번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (35,'tiger','연습 더미 제목 35','연습 더미35번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (36,'tiger','연습 더미 제목 36','연습 더미36번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (37,'tiger','연습 더미 제목 37','연습 더미37번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (38,'tiger','연습 더미 제목 38','연습 더미38번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (39,'tiger','연습 더미 제목 39','연습 더미39번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (40,'tiger','연습 더미 제목 40','연습 더미40번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (41,'tiger','연습 더미 제목 41','연습 더미41번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (42,'tiger','연습 더미 제목 42','연습 더미42번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (43,'tiger','연습 더미 제목 43','연습 더미43번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (44,'tiger','연습 더미 제목 44','연습 더미44번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (45,'tiger','연습 더미 제목 45','연습 더미45번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (46,'tiger','연습 더미 제목 46','연습 더미46번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (47,'tiger','연습 더미 제목 47','연습 더미47번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (48,'tiger','연습 더미 제목 48','연습 더미48번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (49,'tiger','연습 더미 제목 49','연습 더미49번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (50,'tiger','연습 더미 제목 50','연습 더미50번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (51,'tiger','연습 더미 제목 51','연습 더미51번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (52,'tiger','연습 더미 제목 52','연습 더미52번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (53,'tiger','연습 더미 제목 53','연습 더미53번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (54,'tiger','연습 더미 제목 54','연습 더미54번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (55,'tiger','연습 더미 제목 55','연습 더미55번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (56,'tiger','연습 더미 제목 56','연습 더미56번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (57,'tiger','연습 더미 제목 57','연습 더미57번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (58,'tiger','연습 더미 제목 58','연습 더미58번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (59,'tiger','연습 더미 제목 59','연습 더미59번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (60,'tiger','연습 더미 제목 60','연습 더미60번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (61,'tiger','연습 더미 제목 61','연습 더미61번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (62,'tiger','연습 더미 제목 62','연습 더미62번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (63,'tiger','연습 더미 제목 63','연습 더미63번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (64,'tiger','연습 더미 제목 64','연습 더미64번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (65,'tiger','연습 더미 제목 65','연습 더미65번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (66,'tiger','연습 더미 제목 66','연습 더미66번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (67,'tiger','연습 더미 제목 67','연습 더미67번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (68,'tiger','연습 더미 제목 68','연습 더미68번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (69,'tiger','연습 더미 제목 69','연습 더미69번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (70,'tiger','연습 더미 제목 70','연습 더미70번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (71,'tiger','연습 더미 제목 71','연습 더미71번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (72,'tiger','연습 더미 제목 72','연습 더미72번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (73,'tiger','연습 더미 제목 73','연습 더미73번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (74,'tiger','연습 더미 제목 74','연습 더미74번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (75,'tiger','연습 더미 제목 75','연습 더미75번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (76,'tiger','연습 더미 제목 76','연습 더미76번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (77,'tiger','연습 더미 제목 77','연습 더미77번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (78,'tiger','연습 더미 제목 78','연습 더미78번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (79,'tiger','연습 더미 제목 79','연습 더미79번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (80,'tiger','연습 더미 제목 80','연습 더미80번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (81,'tiger','연습 더미 제목 81','연습 더미81번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (82,'tiger','연습 더미 제목 82','연습 더미82번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (83,'tiger','연습 더미 제목 83','연습 더미83번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (84,'tiger','연습 더미 제목 84','연습 더미84번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (85,'tiger','연습 더미 제목 85','연습 더미85번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (86,'tiger','연습 더미 제목 86','연습 더미86번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (87,'tiger','연습 더미 제목 87','연습 더미87번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (88,'tiger','연습 더미 제목 88','연습 더미88번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (89,'tiger','연습 더미 제목 89','연습 더미89번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (90,'tiger','연습 더미 제목 90','연습 더미90번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (91,'tiger','연습 더미 제목 91','연습 더미91번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (92,'tiger','연습 더미 제목 92','연습 더미92번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (93,'tiger','연습 더미 제목 93','연습 더미93번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (94,'tiger','연습 더미 제목 94','연습 더미94번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (95,'tiger','연습 더미 제목 95','연습 더미95번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (96,'tiger','연습 더미 제목 96','연습 더미96번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (97,'tiger','연습 더미 제목 97','연습 더미97번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (98,'tiger','연습 더미 제목 98','연습 더미98번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (99,'tiger','연습 더미 제목 99','연습 더미99번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (100,'tiger','연습 더미 제목 100','연습 더미100번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (101,'tiger','연습 더미 제목 101','연습 더미101번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (102,'tiger','연습 더미 제목 102','연습 더미102번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (103,'tiger','연습 더미 제목 103','연습 더미103번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (104,'tiger','연습 더미 제목 104','연습 더미104번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (105,'tiger','연습 더미 제목 105','연습 더미105번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (106,'tiger','연습 더미 제목 106','연습 더미106번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (107,'tiger','연습 더미 제목 107','연습 더미107번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (108,'tiger','연습 더미 제목 108','연습 더미108번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (109,'tiger','연습 더미 제목 109','연습 더미109번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (110,'tiger','연습 더미 제목 110','연습 더미110번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (111,'tiger','연습 더미 제목 111','연습 더미111번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (112,'tiger','연습 더미 제목 112','연습 더미112번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (113,'tiger','연습 더미 제목 113','연습 더미113번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (114,'tiger','연습 더미 제목 114','연습 더미114번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (115,'tiger','연습 더미 제목 115','연습 더미115번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (116,'tiger','연습 더미 제목 116','연습 더미116번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (117,'tiger','연습 더미 제목 117','연습 더미117번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (118,'tiger','연습 더미 제목 118','연습 더미118번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (119,'tiger','연습 더미 제목 119','연습 더미119번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (120,'tiger','연습 더미 제목 120','연습 더미120번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (121,'tiger','연습 더미 제목 121','연습 더미121번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (122,'tiger','연습 더미 제목 122','연습 더미122번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (123,'tiger','연습 더미 제목 123','연습 더미123번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (124,'tiger','연습 더미 제목 124','연습 더미124번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (125,'tiger','연습 더미 제목 125','연습 더미125번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (126,'tiger','연습 더미 제목 126','연습 더미126번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (127,'tiger','연습 더미 제목 127','연습 더미127번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (128,'tiger','연습 더미 제목 128','연습 더미128번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (129,'tiger','연습 더미 제목 129','연습 더미129번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (130,'tiger','연습 더미 제목 130','연습 더미130번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (131,'tiger','연습 더미 제목 131','연습 더미131번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (132,'tiger','연습 더미 제목 132','연습 더미132번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (133,'tiger','연습 더미 제목 133','연습 더미133번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (134,'tiger','연습 더미 제목 134','연습 더미134번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (135,'tiger','연습 더미 제목 135','연습 더미135번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (136,'tiger','연습 더미 제목 136','연습 더미136번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (137,'tiger','연습 더미 제목 137','연습 더미137번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (138,'tiger','연습 더미 제목 138','연습 더미138번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (139,'tiger','연습 더미 제목 139','연습 더미139번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (140,'tiger','연습 더미 제목 140','연습 더미140번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (141,'tiger','연습 더미 제목 141','연습 더미141번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (142,'tiger','연습 더미 제목 142','연습 더미142번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (143,'tiger','연습 더미 제목 143','연습 더미143번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (144,'tiger','연습 더미 제목 144','연습 더미144번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (145,'tiger','연습 더미 제목 145','연습 더미145번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (146,'tiger','연습 더미 제목 146','연습 더미146번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (147,'tiger','연습 더미 제목 147','연습 더미147번 글 내용입니다',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (154,'tiger','다시','테스트',6,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (150,'tiger','연습 더미 제목 150','연습 더미150번 글 내용입니다',2,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (151,'admin','최종 수정 완료','최종완료!',22,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIBOARD (BNUM,MEMBERID,TITLE,CONTENT,HIT,REGDATE) values (153,'admin','로그인','ㅇㅋ',12,to_date('25/09/03','RR/MM/DD'));
REM INSERTING into SYSTEM.MINIMEMBER
SET DEFINE OFF;
Insert into SYSTEM.MINIMEMBER (MEMBERID,PASSWORD,NAME,PHONE,EMAIL,REGDATE) values ('admin','000','관리자','01012345678','admin@admin.com',to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.MINIMEMBER (MEMBERID,PASSWORD,NAME,PHONE,EMAIL,REGDATE) values ('tiger','111','이호랑','01098769876','tiger@google.com',to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.MINIMEMBER (MEMBERID,PASSWORD,NAME,PHONE,EMAIL,REGDATE) values ('hello','111','김민지','01011111111','kimmj@naver.com',to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.MINIMEMBER (MEMBERID,PASSWORD,NAME,PHONE,EMAIL,REGDATE) values ('11','111','1','1','1',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIMEMBER (MEMBERID,PASSWORD,NAME,PHONE,EMAIL,REGDATE) values ('test88','111','테스트','010','test@test.com',to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.MINIMEMBER (MEMBERID,PASSWORD,NAME,PHONE,EMAIL,REGDATE) values ('111','111','1','1','1',to_date('25/09/03','RR/MM/DD'));
REM INSERTING into SYSTEM.MINIRESERVATION
SET DEFINE OFF;
Insert into SYSTEM.MINIRESERVATION (RESID,MEMBERID,RESDATE,RESTIME,PERSONS,REGDATE) values (1,'admin','2025-05-08','15:30',2,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIRESERVATION (RESID,MEMBERID,RESDATE,RESTIME,PERSONS,REGDATE) values (2,'tiger','2025-09-05','11:00',2,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIRESERVATION (RESID,MEMBERID,RESDATE,RESTIME,PERSONS,REGDATE) values (3,'tiger','2025-09-16','03:10',5,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIRESERVATION (RESID,MEMBERID,RESDATE,RESTIME,PERSONS,REGDATE) values (4,'tiger','2025-09-20','16:11',3,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MINIRESERVATION (RESID,MEMBERID,RESDATE,RESTIME,PERSONS,REGDATE) values (5,'tiger','2025-09-04','17:40',3,to_date('25/09/03','RR/MM/DD'));
