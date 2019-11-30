CREATE  VIEW  LAB4_Student AS
SELECT StdID,Stdfname,Stdlname,Stdaddress
FROM Student
ORDER BY StdID ASC;

CREATE  VIEW  LAB4_Subject AS
SELECT SUBJCODE,NAME_THA, CREDIT
FROM Subject
ORDER BY NAME_THA;

CREATE VIEW LAB4_Fact AS
SELECT StdID,Stdfname,Stdlname,FNAME_THA,FNAME_ENG
FROM Fact,Student
WHERE Fact.FCODE=Student.FCODE
ORDER BY Fact.FCODE;

CREATE VIEW LAB4_Adviser AS
SELECT StdID,Stdfname,Stdlname,TFNAME,TLNAME
FROM Teacher,Student
WHERE Teacher.TCODE=Student.TCODE
ORDER BY Teacher.TCODE;

CREATE VIEW LAB4_REG_322212 AS
SELECT  Register.SUBJCODE,NAME_THA,Student.STDID,STDFNAME,STDLNAME,GRADE 
FROM Subject,Student,Register
WHERE   Student.STDID=Register.STDID
AND Register.SUBJCODE=Subject. SUBJCODE
AND Register.SUBJCODE='322212'
ORDER BY  Student.STDFNAME;