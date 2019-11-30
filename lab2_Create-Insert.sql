CREATE TABLE Fact
(
	FCode CHAR(3)  ,
	FName_Tha VARCHAR2(80)  ,
	FName_Eng VARCHAR2(80)  ,
	CONSTRAINT  fact_pk  PRIMARY KEY(FCode)
);

CREATE TABLE Dept
(
	FCode 		CHAR(3)  ,
	DCode 		CHAR(3)  ,
	DName_Tha 	VARCHAR2(80)  ,
	DName_Eng 	VARCHAR2(80)  ,
	CONSTRAINT  dept_pk PRIMARY KEY(FCode,DCode),
	CONSTRAINT  dept_fk  FOREIGN KEY(FCode)
		REFERENCES Fact(FCode)
);

CREATE TABLE Student
(
	StdID 		CHAR(11)  ,
	StdFName 	VARCHAR2(40)  ,
	StdLName 	VARCHAR2(40)  ,
	StdAddress 	VARCHAR2(80)  ,
	FCode 		CHAR(3)  ,
	DCode 		CHAR(3)  ,
	CONSTRAINT  std_pk PRIMARY KEY(StdID),
	CONSTRAINT  std_fk_FCode  FOREIGN KEY(FCode)
		REFERENCES Fact(FCode),
	CONSTRAINT  std_fk_DCode FOREIGN KEY(FCode,DCode)
		REFERENCES Dept(FCode,DCode)
);

INSERT INTO Fact VALUES('F01','คณะวิทยาศาสตร์','Science');
INSERT INTO Fact VALUES('F02','คณะวิศวกรรมศาสตร์','Engineer');
INSERT INTO Fact VALUES('F03','คณะเทคโนโลยี','Technology');
INSERT INTO Fact VALUES('F04','คณะมนุษศาสตร์และสังคมศาสตรจ์','Humanity');
INSERT INTO Fact VALUES('F05','คณะศึกษาศาสตร์','Education');

INSERT INTO Dept VALUES('F01','D01','คณิตศาสต์','Mathematics');
INSERT INTO Dept VALUES('F01','D02','สถิติ','Statistics');
INSERT INTO Dept VALUES('F01','D03','วิทยาการคอมพิวเตอร์','Computer Science');
INSERT INTO Dept VALUES('F02','D01','วิศวกรรมคอมพิวเตอร์','Computer Engineer');
INSERT INTO Dept VALUES('F03','D01','เทคโนโลยีการอาหาร','Food Technology');

INSERT INTO Student VALUES('593021273-3','ภควดี','สุวรรณะ','KKU','F01','D03');
INSERT INTO Student VALUES('593020467-5','สิทธิ','สุทธิธรรม','KKU','F02','D01');
INSERT INTO Student VALUES('593020411-2','ชนกชนม์','ถนอมเลี้ยง','KKU','F02','D01');
INSERT INTO Student VALUES('593020452-8','ภูวเดช','ผาปริญญา','KKU','F03','D01');
