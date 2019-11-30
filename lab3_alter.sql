ALTER TABLE table_name
ADD( 	col_name1 data_type col_const,
		col_name1 data_type col_const
	);
	
	---EX---
ALTER TABLE product
ADD( 	LID CHAR(3) 	);

ALTER TABLE product
ADD(
	CONSTRAINT prod_fk_log FOREIGN KEY(LID)
		REFERENCES location(LID)
	);
	-------
	
ALTER TABLE table_name
ADD( 	
		CONSTRAINT const_name1 Primary Key(col_pk),
		CONSTRAINT const_name2 FOREIGN Key(col_fk)
			REFERENCES tablename2(col_pk_tabname2)
	);

SELECT
CONSTRAINT_NAME,
CONSTRAINT_TYPE
FROM user_constraints;

column constraint_name format a30
column constraint_type format a30

UPDATE table_name
SET colname1 = 'val1',colname2 = val2;

UPDATE table_name
SET colname1 = 'val1',colname2 = val2
WHERE colname op colname/val;

UPDATE table_name
SET colname1 = 'val1',colname2 = val2
WHERE (colname op colname/val)
	AND/OR (colname op colname/val);
	
INSERT INTO location VALUES('L01','Sc.06');
INSERT INTO location VALUES('L02','Sc.07');
INSERT INTO location VALUES('L03','Sc.08');

INSERT INTO product (pid,pname,price)
	VALUES('P02','Pencil',200);
INSERT INTO product (pid,pname,price)
	VALUES('P03','Pen',500);
INSERT INTO product (pid,pname,price)
	VALUES('P04','Ruler',100);
INSERT INTO product (pid,pname,price)
	VALUES('P05','Notebook',200);
	
	
	
UPDATE product
SET LID='L01';
WHERE colname op colname/val;


UPDATE product
SET LID='L02'
WHERE pname='TABLE';

--set data to location---
UPDATE product 
SET LID='L02'
WHERE PID='P02' OR PID='P03' OR PID='P04';

---move data to another location---
UPDATE product
SET LID='L03'
WHERE PID IN('P02','P03','P04');


ALTER TABLE Student
ADD( 	TCode CHAR(3) 	);

ALTER TABLE Student
ADD(
	CONSTRAINT std_fk_teach FOREIGN KEY(TCode)
		REFERENCES Teacher(TCode)
	);
	
	
UPDATE Student
SET TCode='T01'
WHERE StdID='593021273-3';

UPDATE Student
SET TCode='T02'
WHERE StdID='593020467-5';

UPDATE Student
SET TCode='T03'
WHERE StdID='593020411-2';

UPDATE Student
SET TCode='T04'
WHERE StdID='593020452-8';

