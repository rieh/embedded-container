DROP TABLE EJB_TEST.EMPLOYEE;
DROP TABLE EJB_TEST.DEPARTMENT;
DROP SCHEMA EJB_TEST RESTRICT;

CREATE SCHEMA EJB_TEST;

CREATE TABLE EJB_TEST.DEPARTMENT (
	DEPT_ID INT NOT NULL,
	NAME VARCHAR(20) NOT NULL,
	PRIMARY KEY (DEPT_ID)
);

CREATE TABLE EJB_TEST.EMPLOYEE (
	EMP_ID INT NOT NULL,
	FNAME VARCHAR(20) NOT NULL,
	LNAME VARCHAR(20) NOT NULL,
	DEPT_ID INT NOT NULL,
	PRIMARY KEY (EMP_ID),
	CONSTRAINT DEPT_FK FOREIGN KEY (DEPT_ID)
	REFERENCES EJB_TEST.DEPARTMENT(DEPT_ID)
);
	