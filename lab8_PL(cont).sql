
----20/03/2561----
------------------------------------
DECLARE
	vpid	product.pid%type;
	vPName	product.pname%type;
BEGIN
	select pid,pname
	into vpid,vPname
	from product
	where pid = 'P09';
	dbms_output.put_line(sql%rowcount||' row');
	dbms_output.put_line('PID = '||vpid);
	dbms_output.put_line('PNAME = '||vpname);
END;
/
-----------------------------------
-----------if----------------------
DECLARE
	vStatus	char(1):='&vStatus';
BEGIN
	if vStatus = 'A' then
		dbms_output.put_line('Active student.');
	else
			dbms_output.put_line('Not active student');
		end if;
END;
/
--------------if else----------------
DECLARE
	score	number := &score;
BEGIN
	if score = 80 then
		dbms_output.put_line('Grade A');
	else
			dbms_output.put_line('Grade B');
		end if;
END;
/
------------else if-----------------
DECLARE
	score	number := &score;
BEGIN
	if score >= 80 then
		dbms_output.put_line('Grade A');
	else if score >= 70 then
		dbms_output.put_line('Grade B');
	else if score >= 60 then
		dbms_output.put_line('Grade C');
	else if score >= 50 then
		dbms_output.put_line('Grade D');
	else
		dbms_output.put_line('Grade F');
	end if;
END;
/
------------loop--------------
DECLARE
	x number:=1;
	y number:= 12;
BEGIN
	loop
		dbms_output.put_line(y||' x '||x||' = '||x*y);
		x := x+1;
	exit when x>12;
	end loop;
END;
/
-------while loop--------------
DECLARE
	x number := 12;
	y number := 7;
BEGIN
	while x>=1
	loop
		dbms_output.put_line(y||' x '||x||' = '||x*y);
		x:=x-1;
	end loop;
END;
/
-------------แม่ n ใดๆ--------------
DECLARE
	x number := 12;
	y number := &y;
BEGIN
	while x>=1
	loop
		dbms_output.put_line(y||' x '||x||' = '||x*y);
		x:=x-1;
	end loop;
END;
/
-------------loop for---------------
DECLARE
	vUp number := &vup;
	vLow number := &vLow;

BEGIN
	for x in vLow..vUp loop
		dbms_output.put_line(x);
	end loop;
END;
/
-----------------Lab------------
--------1--------
CREATE OR REPLACE PROCEDURE LAB8_Power2 
IS
	x number := 1;
BEGIN
	for i in 1..10 loop
		x:=x*2;
		dbms_output.put_line('2'||'^'||i||'='||x);
	end loop;
END;
/
---------2---------
Create table StudentScore (
	ID 		char(11),
	Name 	VARCHAR2(80),
	Mid		NUMBER(2),
	Final	NUMBER(2),
	Work	NUMBER(2)
);
---------3-----------
insert into StudentScore value('553020621-7','สิทธิชัย สมทรัพย์',29	,38	,28);
insert into StudentScore value('593021273-3',	'ภควดี สุวรรณะ'	,30,	40	,30);
insert into StudentScore value('555020270-4'	,'พงษ์ศธร จันทร์ยอย'	,15	,20	,10);
---------4-----------
CREATE OR REPLACE PROCEDURE LAB8_DBGrade  
IS
	vID 	StudentScore.ID%type;
	vName 	StudentScore.Name%type;
	vWork	StudentScore.Work%type;
	vMid	StudentScore.Mid%type;
	vFinal	StudentScore.Final%type;
	Score  NUMBER(3);
BEGIN
	select ID,Name,Work,Mid,Final
	into vID,vName,vWork,vMid,vFinal
	from StudentScore
	where ID = '593021273-3';
	Score := vWork+vMid+vFinal;
	dbms_output.put_line('Student ID : '||vID);
	dbms_output.put_line('Name :  '||vName);
	dbms_output.put_line('Work score : '||vWork);
	dbms_output.put_line('Midterm score : '||vMid);
	dbms_output.put_line('Final score : '||vFinal);
	dbms_output.put_line('Total score : '||Score);
	if score >= 80 then
		dbms_output.put_line('Getting grade is A');
	elsif score >= 70 then
		dbms_output.put_line('Getting grade is B');
	elsif score >= 60 then
		dbms_output.put_line('Getting grade is C');
	elsif score >= 50 then
		dbms_output.put_line('Getting grade is D');
	else
		dbms_output.put_line('Getting grade is F');
	end if;
	
END;
/

