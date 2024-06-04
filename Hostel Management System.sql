create database HMS;
use HMS;
CREATE TABLE Hostel (hostel_name VARCHAR(255) PRIMARY KEY,availability varchar(255),  total_students varchar(255));

select * from Hostel;
CREATE TABLE Student(
    CMS_id VARCHAR(255) PRIMARY KEY,
    Sname VARCHAR(255) NOT NULL,
    father_name VARCHAR(255) NOT NULL,
    semester VARCHAR(255),
    Program varchar(255),Phone_No varchar(255),
    hostel_name VARCHAR(255),
    FOREIGN KEY (hostel_name) REFERENCES Hostel(hostel_name)
);

select * from Student;
CREATE TABLE Staff (
  staff_id varchar(255) PRIMARY KEY ,
  Sname VARCHAR(255) ,
  job_title VARCHAR(255),
  phone_No VARCHAR(20),
  salary VARCHAR(20), 
  host_name VARCHAR(255),
    FOREIGN KEY (host_name) REFERENCES Hostel(hostel_name)
);
select * from Staff;


CREATE TABLE Room (
  room_no varchar(255) PRIMARY KEY,
  floor_no varchar(255),
  capacity varchar(255),
  availability varchar(255), student_id VARCHAR(255),
    FOREIGN KEY (student_id) REFERENCES Student(CMS_id)
);
select * from Room;

CREATE TABLE Meal_Plan (
  meal_id VARCHAR(255) PRIMARY KEY,
  meal_name VARCHAR(255),
  descript VARCHAR(255),
  units VARCHAR(255),
student_id VARCHAR(255),
    FOREIGN KEY (student_id) REFERENCES Student(CMS_id)
);

select * from Meal_Plan;


CREATE TABLE Complaint (
  complaint_id VARCHAR(255) PRIMARY KEY,
  descript VARCHAR(255),
    cStatus VARCHAR(255),
  date_filed VARCHAR(255),
   student_id VARCHAR(255),
    FOREIGN KEY (student_id) REFERENCES Student(CMS_id)
);

select * from Complaint;



CREATE TABLE Payment (
  pay_id VARCHAR(255) PRIMARY KEY,
  pay_type VARCHAR(255),
  dues VARCHAR(255),
  amount_paid VARCHAR(255),
   pay_date VARCHAR(255),
    student_id VARCHAR(255),
    FOREIGN KEY (student_id) REFERENCES Student(CMS_id)
);
select * from Payment;
select * from Hostel;



select * from Staff;

select * from Student;
select * from Payment;
select * from Complaint;
select * from Room;
select * from Meal_Plan;