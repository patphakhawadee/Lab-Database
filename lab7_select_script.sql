DROP TABLE product PURGE;
DROP TABLE location PURGE;
DROP TABLE product_type PURGE;


CREATE TABLE location
(
	LID	CHAR(3),
	LName	VARCHAR2(30),
	CONSTRAINT loc_pk PRIMARY KEY(LID)
);

CREATE TABLE product_type
(
	TID	CHAR(3),
	TName	VARCHAR2(30),
	CONSTRAINT ptype_pk PRIMARY KEY(TID)
);

CREATE TABLE product
(
	PID	 CHAR(3),
	PName	VARCHAR2(30),
	Price	NUMBER(6,2),
	TID	CHAR(3),
	LID	CHAR(3),
	CONSTRAINT prod_pk PRIMARY KEY(PID),
	CONSTRAINT prod_fk_ptype FOREIGN KEY(TID)
		REFERENCES product_type(TID),
	CONSTRAINT prod_fk_location FOREIGN KEY(LID)
		REFERENCES location(LID)
);

insert into product_type VALUES ('T01','เครื่องเขียน');
insert into product_type VALUES ('T02','อุปกรณ์สำนักงาน');
insert into product_type VALUES ('T03','เครื่องใช้ไฟฟ้า');
insert into product_type VALUES ('T04','อื่นๆ');


insert into location VALUES ('L01','Building 1');
insert into location VALUES ('L02','SC.06');
insert into location VALUES ('L03','Bio');
insert into location VALUES ('L04','Building5');

INSERT INTO product VALUES ('P01','Table','1000','T02','L01');   
INSERT INTO product VALUES ('P02','ปากกา','10','T01','L01');   
INSERT INTO product VALUES ('P03','เก้าอี้','500','T02','L02');   
INSERT INTO product VALUES ('P04','หลอดทดลอง','1000','T02','L03');   
INSERT INTO product VALUES ('P05','ลำโพง','2000','T03','L01');   
INSERT INTO product VALUES ('P06','พัดลม','1000','T03','L03'); 
INSERT INTO product VALUES ('P07','เตารีด','500','T03','L02');   
INSERT INTO product VALUES ('P08','รองเท้าบูท','250','','');
INSERT INTO product VALUES ('P09','กรรไกรตัดหญ้า','500','','');
INSERT INTO product VALUES ('P10','ตู้เย็น','5000','T03','');
INSERT INTO product VALUES ('P11','เตาไฟฟ้า','700','T03','');
INSERT INTO product VALUES ('P12','บัวรถน้ำ','100','','L04');
INSERT INTO product VALUES ('P13','เลือยไฟฟ้า','1000','','L04');




