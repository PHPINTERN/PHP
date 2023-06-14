CREATE DATABASE klcdoe;
USE klcdoe;

  CREATE TABLE Student_Data(
  Profile_Id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
  Student_Id BIGINT UNIQUE KEY,
  Student_Profile VARCHAR (100) BINARY, 
  Student_Name VARCHAR (50), 
  Student_Dob VARCHAR (10), 
  Student_Phone BIGINT UNSIGNED UNIQUE KEY, 
  Student_Email VARCHAR (50), 
  Student_Address VARCHAR (300), 
  Student_Year VARCHAR(2),
  Student_Sem VARCHAR(5),
  Student_Password VARCHAR (16) BINARY
  );


  INSERT INTO Student_Data (Student_Id, Student_Profile, student_Name,Student_Dob,Student_Phone,Student_Email,Student_Address,Student_Year,Student_Sem,Student_Password)
  VALUES
  (2100520036,'192.168.2.168\\Image\\Student_Photo\\2100520036.png', 'Chandra Pravesh','2004-02-17',7671890335, 'pravesh@gmail.com','Malkapuram Visakhapatnam','2021-2022','ODD','Pravesh@12086'),
  (2100520143,'192.168.2.168\\Image\\Student_Photo\\2100520143.png', 'Ankem Deepika','2004-05-25',8341247643, 'deepika@gmail.com','Kadapa,Andhra Pradesh','2022-2023','ODD','Deepika_2004'),
  (2100520150,'192.168.2.168\\Image\\Student_Photo\\2100520150.png', 'Abhinaya Sai','2004-01-06',9949902598, 'abhinaya@gmail.com','khammam, Andhra Pradesh','2021-2022','EVEN','Abhinaya@2004'),
  (2100520187,'192.168.2.168\\Image\\Student_Photo\\2100520187.png', 'Rishu Kumar Gupta','2004-10-02',7463906582, 'rishu@gmail.com','Bihar, India','2022-2023','EVEN','Rishu_2004');

CREATE TABLE Course_List(
  Course_Year VARCHAR(10),
  Course_Sem VARCHAR(5),
  Course_Id VARCHAR(10),
  Course_Name VARCHAR(50),
  Course_Image VARCHAR(100)
);


INSERT INTO Course_List (Course_Year, Course_Sem, Course_Id, Course_Name, Course_Image)
VALUES ('2021-2022', 'ODD', '21CA1101', 'Problem Solving throught Programming', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'ODD', '21CA1102', 'Computer Organisation and Architecture', 'https://www.example.com/images/math201.jpg'),
('2021-2023', 'ODD', '21CA1103', 'Essentials of Information Technology', 'https://www.example.com/images/math201.jpg'),
('2021-2023', 'ODD', '21CA1104', 'Mathematics for computer Science', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'ODD', '21UC0009', 'Ecology and Environment', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'ODD', '21UC1101', 'Integrated professional English', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '21CA1205', 'Operating System', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '21CA1206', 'data Structures', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '21CA1207', 'Object Oriented Programming', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '21CA1208', 'Mobile Application development', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '21CA1209', 'Web and Social Media Technologies', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '20UC1202', 'english Proficiency', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA2110', 'Database Management Systems', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA2111', 'Computer Networks', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA2112', 'Web Development Using Python', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA21N0', 'Internship 1', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA21C1', 'Cloud Architecture', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA21D1', 'Data Warehousing & mining', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA21A1', 'Artificial Intelligence', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA2109', 'Software Engineering', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21UC1203', 'Design Thinking And Innovation', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CE40A5', 'Disaster Management', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21ME40B4', 'Robotics', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA2213', 'Java Full Stack Development', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA2214', 'Object Oriented Analysis And Design', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA22C2', 'Cloud Information Security', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA22D2', 'Statistics for Data Science', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA22A2', 'Buisiness Intelligence', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA22E1', 'Term Paper', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21UC0010', 'Universal Human Values and Professional Ethics', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21UC2103', 'Essential Skills For Employability(HSS4)', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21EI40B2', 'E-Commerce', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21ME40B6', 'Operations Research', 'https://www.example.com/images/math201.jpg');

CREATE TABLE Teacher_Data(
  Emp_Id   BIGINT UNSIGNED   PRIMARY KEY,
  Emp_Name  VARCHAR(30),
  Emp_Profile  VARCHAR(50),
  Emp_Phone  BIGINT UNSIGNED   UNIQUE KEY,
  Emp_Email  VARCHAR(50),
  Emp_Dept VARCHAR(5)
  );
  

INSERT INTO Teacher_Data (Emp_Id, Emp_Name, Emp_Profile, Emp_Phone, Emp_Email,Emp_Dept)
VALUES (1, 'Amrutha', 'Python', 8341247643, 'Amrutha@gmail.com','BCA'),
(2, 'Rama Krishna', 'Software Engineering',9632587415,  'Ramakrishna@gmail.com','MCA'),
(3, 'Sarvani', 'DBMS', 9876543125, 'Sarvani@gmail.com','MBA'),
(4, 'Zulfikar Ali', 'Cloud Computing', 9514782375, 'Zulfikarali@gmail.com','Bcom'),
(5, 'Rohith Kumar', 'C Language', 9154456245, 'Rohithkumar@gmail.com ','MCA');

CREATE TABLE Notes_Data(
Branch_Name VARCHAR(16),
Semister_No  TINYINT UNSIGNED,
Course_Id  VARCHAR(16),
Notes_Name  VARCHAR(50),
Notes_Link VARCHAR(400) 
);

INSERT INTO Notes_Data(Branch_Name, Semister_No, Course_Id, Notes_Name, Notes_Link) VALUES 
  ('BCA','1','21BCA1102','Computer Organization & Architecture','https://1drv.ms/b/s!AsTwS4GYmJMFgRXD3WQaLKERpb07?e=Cw6xzo')
, ('BCA','1','21UC0009','Ecology And Environment','https://1drv.ms/b/s!AsTwS4GYmJMFgRRKq8U136V9Byfh?e=1NvGFJ')
, ('BCA','2','21BCA1103','Essentials Of Information Technology','https://1drv.ms/b/s!AsTwS4GYmJMFgRaEZF1MdkMZrqnX?e=wYUYSg')
, ('BCA','2','21BCA1101','Problem Solving Through Programming','https://1drv.ms/b/s!AsTwS4GYmJMFgRg-Shm_BI6UzagN?e=c16wr2')
, ('MCA','1','21CA1206','Data Structures','https://1drv.ms/b/s!AsTwS4GYmJMFgSLrzRzlx7p6rM-n?e=1mGK52')
, ('MCA','1','21CA1208','Mobile Application Development','https://1drv.ms/b/s!AsTwS4GYmJMFgSOUPiEFrQDtxknM?e=zb7w6E')
, ('MCA','2','21CA1205','Operating System','https://1drv.ms/b/s!AsTwS4GYmJMFgSE1ktes6ksF7kck?e=hTirfA')
, ('MCA','2','21CA1209','Web And Social Media Technologies','https://1drv.ms/b/s!AsTwS4GYmJMFgSTl2WAnpFj8zyuc?e=QKHFkp')
, ('BBA','1','21UC1101','Integrated Professional English','https://1drv.ms/b/s!AsTwS4GYmJMFgRfw1vGcT3paDgOa?e=wdTG9w')
, ('BBA','1','21CA1209','Web And Social Media Technologies','https://1drv.ms/b/s!AsTwS4GYmJMFgSTl2WAnpFj8zyuc?e=QKHFkp')
, ('BBA','2','21CA21C1','Cloud Architecture','https://1drv.ms/b/s!AsTwS4GYmJMFgRt-Ean-MwZ6Gxjg?e=Kg1u5w')
, ('BBA','2','21CA2111','Computer Networks','https://1drv.ms/b/s!AsTwS4GYmJMFgRqaEkhGmtzC9QKy?e=9xzpbz')
, ('MBA','1','1CA2110','Database Management Systems','https://1drv.ms/b/s!AsTwS4GYmJMFgRyBX32iPutdrfiy?e=RuMxf1')
, ('MBA','1','21UC1203','DESIGN THINKING AND INNOVATION','https://1drv.ms/b/s!AsTwS4GYmJMFgR0mGMDgxwlel3DS?e=8ampqe')
, ('MBA','2','21CA2109','Software Engineering','https://1drv.ms/b/s!AsTwS4GYmJMFgR_IEQnicObEp5YW?e=hfrqOl')
, ('MBA','2','21CA2112P','Web Development using Python','https://1drv.ms/b/s!AsTwS4GYmJMFgR7Ol8zWwRHXwzDN?e=CHwFQK')
, ('Bcom','1','21CA22C2','Cloud Information Security(CTIS)','https://1drv.ms/b/s!AsTwS4GYmJMFgSaAqYJwGOO0E6di?e=733HaR')
, ('Bcom','1','21CA2213','Java Full Stack Development','https://1drv.ms/b/s!AsTwS4GYmJMFgSiNZ6heqy1s591b?e=FRMnbT')
, ('Bcom','2','21CA2214','Object Oriented Analysis & Design','https://1drv.ms/b/s!AsTwS4GYmJMFgSeNryly4kKMSRmc?e=llZP5X')
, ('Bcom','2','21UC0010','UNIVERSAL HUMAN VALUES & PROFESSIONAL ETHICS(HSS5)','https://1drv.ms/b/s!AsTwS4GYmJMFgSnkyr_MNN9JZTS0?e=mbFNNq');


create table raise_ticket(
	id NUMERIC , 
	branch VARCHAR(50), 
	issue varchar(250),
	create_at VARCHAR(15),
	issue_token VARCHAR(15)
);

INSERT INTO raise_ticket(id, branch, issue, create_at, issue_token) 
VALUES 
(1, 'BCA', 'Printer not working', '2022-01-15', 'IT001')
,(2, 'MBA', 'Internet connection issue', '2022-02-02', 'IT002')
,(3, 'Bcom', 'Software installation problem', '2022-03-10', 'IT003')
,(4, 'Mcom', 'Server down', '2022-04-05', 'IT004')
,(5, 'BCA', 'Email not working', '2022-05-20', 'IT005');


create table Recent_view_table(
  id INT AUTO_INCREMENT PRIMARY KEY,
  items_title varchar(100),
  user_id INT,
  viewed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Recent_view_table (items_title, user_id, viewed_at) VALUES
  ('Profile view', 187, '2023-05-28 10:15:00'),
  ('Attendec', 143, '2023-05-28 11:30:00'),
  ('BCA Result', 36, '2023-05-28 12:45:00'),
  ('Quiz attend', 150, '2023-05-28 13:00:00'),
  ('Announcement view', 155, '2023-05-28 14:30:00');

  INSERT INTO Recent_view_table (items_title, user_id, viewed_at) VALUES
  ('Profile view', 150, '2023-05-28 10:5:00'),
  ('Attendec', 187, '2023-05-28 11:35:00'),
  ('BCA Result', 150, '2023-05-28 12:5:00'),
  ('Quiz attend', 36, '2023-05-28 13:06:00'),
  ('Announcement view', 160, '2023-05-28 15:30:00');

create table Exam_Result(
Student_Id int  , 
Student_Branch varchar(5), 
Result varchar(250)
);



insert into Exam_Result(Student_Id,Student_Branch, Result) 
values
(2100520036,"bca","http://www.anantamedicity.com/ResultList/3rd%20MBBS%20Part%20II%20(Main)%20Exam%20Rsult%2028-3-2022.pdf"),
(2100520036,"mca","https://old.rgu.ac.in/uploads/Results/Result_739.pdf"),
(2100520036,"bcom","https://old.rgu.ac.in/uploads/Results/Result_739.pdf"),
(2100520036,"mba","http://www.anantamedicity.com/ResultList/3rd%20MBBS%20Part%20II%20(Main)%20Exam%20Rsult%2028-3-2022.pdf"),

(2100520150,"bca","http://www.anantamedicity.com/ResultList/3rd%20MBBS%20Part%20II%20(Main)%20Exam%20Rsult%2028-3-2022.pdf"),
(2100520150,"mca","https://old.rgu.ac.in/uploads/Results/Result_739.pdf"),
(2100520150,"bcom","https://old.rgu.ac.in/uploads/Results/Result_739.pdf"),
(2100520150,"mba","http://www.anantamedicity.com/ResultList/3rd%20MBBS%20Part%20II%20(Main)%20Exam%20Rsult%2028-3-2022.pdf"),

(2100520143,"bca","http://www.anantamedicity.com/ResultList/3rd%20MBBS%20Part%20II%20(Main)%20Exam%20Rsult%2028-3-2022.pdf"),
(2100520143,"mca","https://old.rgu.ac.in/uploads/Results/Result_739.pdf"),
(2100520143,"bcom","https://old.rgu.ac.in/uploads/Results/Result_739.pdf"),
(2100520143,"mba","http://www.anantamedicity.com/ResultList/3rd%20MBBS%20Part%20II%20(Main)%20Exam%20Rsult%2028-3-2022.pdf"),

(2100520187,"bca","http://www.anantamedicity.com/ResultList/3rd%20MBBS%20Part%20II%20(Main)%20Exam%20Rsult%2028-3-2022.pdf"),
(2100520187,"mca","https://old.rgu.ac.in/uploads/Results/Result_739.pdf"),
(2100520187,"bcom","https://old.rgu.ac.in/uploads/Results/Result_739.pdf"),
(2100520187,"mba","http://www.anantamedicity.com/ResultList/3rd%20MBBS%20Part%20II%20(Main)%20Exam%20Rsult%2028-3-2022.pdf");
