Create Database DBMSProject;			
use DBMSProject;			
			
CREATE TABLE _USER(			
	User_ID varchar(20) NOT NULL,		
Access_Level varchar(10) NOT NULL,			
_2D_Profile_Photo varchar(20),			
_3D_Profile_Photo varchar(20),			
Email varchar(100) NOT NULL,			
Country varchar(20) NOT NULL,			
City varchar(20),			
Province varchar(20),			
Street varchar(30),			
Gender varchar(6) ,			
DOB date,			
			
primary key(User_ID)			
);			
			
INSERT INTO _USER VALUES('Us001','Admin','/2DPhotos/Us001.png','/3DPhotos/Us001.obj','johnsmith123@gmail.com','Brazil','Brasília','São Paulo','Avenida Paulista','Male','1995-01-08');			
INSERT INTO _USER VALUES('Us002','Normal','/2DPhotos/Us002.png','/3DPhotos/Us002.obj','johnwilliams24@gmail.com','Japan','Tokyo','NULL','NULL','Male','1982-03-15');			
INSERT INTO _USER VALUES('Us003','Normal','/2DPhotos/Us003.png','/3DPhotos/Us003.obj','davidbrown789@hotmail.com','Canada','Ottawa','Ontario','Yonge Street','Male','1978-07-22');			
INSERT INTO _USER VALUES('Us004','Normal','/2DPhotos/Us004.png','/3DPhotos/Us004.obj','sarah.miller321@yahoo.com','Australia','Sydney','Queensland','Queen Street','Female','2000-11-03');			
INSERT INTO _USER VALUES('Us005','Admin','/2DPhotos/Us005.png','/3DPhotos/Us005.obj','chriswilson987@outlook.com','Germany','Berlin','NULL','NULL','Male','1991-04-11');			
INSERT INTO _USER VALUES('Us006','Normal','/2DPhotos/Us006.png','/3DPhotos/Us006.obj','amanda.roberts654@icloud.com','South Africa','Johannesburg','Gauteng','Vilakazi Street','Female','1985-09-19');			
INSERT INTO _USER VALUES('Us007','Normal','/2DPhotos/Us007.png','/3DPhotos/Us007.obj','mikejohnson654@live.com','Argentina','Buenos Aires','Buenos Aires','Avenida 9 de Julio','Male','1973-05-27');			
INSERT INTO _USER VALUES('Us008','Admin','/2DPhotos/Us008.png','/3DPhotos/Us008.obj','lisa.taylor123@aol.com','India','New Delhi','Maharashtra','Marine Drive','Female','1998-12-04');			
INSERT INTO _USER VALUES('Us009','Normal','/2DPhotos/Us009.png','/3DPhotos/Us009.obj','hedianderson456@protonmail.com','Italy','Rome','Lazio','Via del Corso','Female','1989-02-10');			
INSERT INTO _USER VALUES('Us010','Admin','/2DPhotos/Us010.png','/3DPhotos/Us010.obj','jessica.baker789@yandex.com','Thailand','Bangkok','Bangkok','Sukhumvit Road','Female','1976-06-18');			
INSERT INTO _USER VALUES('Us011','Normal','/2DPhotos/Us011.png','/3DPhotos/Us011.obj','davidwalker123@inbox.com','Mexico','Mexico City','Jalisco','Avenida Chapultepec','Male','1983-08-25');			
INSERT INTO _USER VALUES('Us012','Normal','/2DPhotos/Us012.png','/3DPhotos/Us012.obj','laurasmith456@zoho.com','Sweden','Stockholm','Stockholm','Drottninggatan','Female','1990-10-07');			
INSERT INTO _USER VALUES('Us013','Admin','/2DPhotos/Us013.png','/3DPhotos/Us013.obj','matthewjones789@rocketmail.com','Russia','Moscow','Moscow Oblast','Tverskaya Street','Male','1987-02-14');			
INSERT INTO _USER VALUES('Us014','Normal','/2DPhotos/Us014.png','/3DPhotos/Us014.obj','anna.green123@rediffmail.com','Spain','Madrid','Catalonia','La Rambla','Female','1979-11-30');			
INSERT INTO _USER VALUES('Us015','Normal','/2DPhotos/Us015.png','/3DPhotos/Us015.obj','brianmiller789@mail.com','Egypt','Cairo','Cairo Governorate','Sharia Al Muizz','Male','1984-04-06');			
INSERT INTO _USER VALUES('Us016','Admin','/2DPhotos/Us016.png','/3DPhotos/Us016.obj','samantha.wilson123@fastmail.com','New Zealand','Auckland','Auckland','Queen Street','Female','1971-10-12');			
INSERT INTO _USER VALUES('Us017','Normal','/2DPhotos/Us017.png','/3DPhotos/Us017.obj','petrishabrown456@tutanota.com','Greece','Athens','Attica','Ermou Street','Female','1980-07-03');			
INSERT INTO _USER VALUES('Us018','Normal','/2DPhotos/Us018.png','/3DPhotos/Us018.obj','jennywilson789@hushmail.com','Vietnam','Hanoi','NULL','NULL','Female','1997-05-21');			
INSERT INTO _USER VALUES('Us019','Normal','/2DPhotos/Us019.png','/3DPhotos/Us019.obj','robertthomas123@lycos.com','Norway','Oslo','Oslo','Karl Johans gate','Male','1975-03-09');			
INSERT INTO _USER VALUES('Us020','Normal','/2DPhotos/Us020.png','/3DPhotos/Us020.obj','jennyjones456@protonmail.ch','Malaysia','Kuala Lumpur','Selangor','Jalan Bukit Bintang','Female','2005-12-28');			
			
-- following two tables User_ID_Name and USER_PREFERENCE_INFO will both together represent the User_Preferences Entity that was originall designed in the ER diagram			
CREATE TABLE USER_ID_NAME (			
User_ID varchar(20) NOT NULL,		
User_Name varchar(50) NOT NULL,			
primary key(User_ID)			
);			
INSERT INTO User_ID_Name VALUES ('Us001','john');			
INSERT INTO User_ID_Name VALUES ('Us002','john');			
INSERT INTO User_ID_Name VALUES ('Us003','david');			
INSERT INTO User_ID_Name VALUES ('Us004','sarah');			
INSERT INTO User_ID_Name VALUES ('Us005','chris');			
INSERT INTO User_ID_Name VALUES ('Us006','amanda');			
INSERT INTO User_ID_Name VALUES ('Us007','mike');			
INSERT INTO User_ID_Name VALUES ('Us008','lisa');			
INSERT INTO User_ID_Name VALUES ('Us009','kevin');			
INSERT INTO User_ID_Name VALUES ('Us010','jessica');			
INSERT INTO User_ID_Name VALUES ('Us011','david');			
INSERT INTO User_ID_Name VALUES ('Us012','laura');			
INSERT INTO User_ID_Name VALUES ('Us013','mathew');			
INSERT INTO User_ID_Name VALUES ('Us014','anna');			
INSERT INTO User_ID_Name VALUES ('Us015','brian');			
INSERT INTO User_ID_Name VALUES ('Us016','samantha');			
INSERT INTO User_ID_Name VALUES ('Us017','petrisha');			
INSERT INTO User_ID_Name VALUES ('Us018','jenny');			
INSERT INTO User_ID_Name VALUES ('Us019','robert');			
INSERT INTO User_ID_Name VALUES ('Us020','jenny');			
			
CREATE TABLE USER_PREFERENCE_INFO (			
	User_ID varchar(20) NOT NULL,		
Only_AR_Calls bool,			
Allow_Sound bool,			
Allow_Notification bool,			
Live_Location bool,			
Profile_Visibility bool,			
Show_Online bool,			
Language_ varchar(20) NOT NULL,			
DarkMode_LightMode  varchar(5) NOT NULL,			
primary key(User_ID)			
);			
			
INSERT INTO User_Preference_Info VALUES('Us001',TRUE,FALSE,FALSE,TRUE,TRUE,TRUE,'Portuguese','Dark');			
INSERT INTO User_Preference_Info VALUES('Us002',FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,'Japanese','Light');			
INSERT INTO User_Preference_Info VALUES('Us003',TRUE,TRUE,TRUE,TRUE,FALSE,TRUE,'English','Dark');			
INSERT INTO User_Preference_Info VALUES('Us004',TRUE,FALSE,TRUE,FALSE,TRUE,TRUE,'English','Light');			
INSERT INTO User_Preference_Info VALUES('Us005',FALSE,TRUE,FALSE,FALSE,TRUE,FALSE,'German','Light');			
INSERT INTO User_Preference_Info VALUES('Us006',FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,'English','Dark');			
INSERT INTO User_Preference_Info VALUES('Us007',TRUE,FALSE,TRUE,TRUE,FALSE,TRUE,'English','Light');			
INSERT INTO User_Preference_Info VALUES('Us008',FALSE,TRUE,TRUE,FALSE,FALSE,TRUE,' Hindi','Dark');			
INSERT INTO User_Preference_Info VALUES('Us009',TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,'English','Dark');			
INSERT INTO User_Preference_Info VALUES('Us010',TRUE,FALSE,FALSE,TRUE,TRUE,TRUE,'English','Light');			
INSERT INTO User_Preference_Info VALUES('Us011',FALSE,TRUE,TRUE,FALSE,TRUE,FALSE,'Spanish','Light');			
INSERT INTO User_Preference_Info VALUES('Us012',TRUE,TRUE,TRUE,FALSE,TRUE,TRUE,'English','Dark');			
INSERT INTO User_Preference_Info VALUES('Us013',TRUE,FALSE,FALSE,TRUE,FALSE,FALSE,'Russian','Light');			
INSERT INTO User_Preference_Info VALUES('Us014',FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,'English','Light');			
INSERT INTO User_Preference_Info VALUES('Us015',TRUE,TRUE,FALSE,TRUE,TRUE,TRUE,'English','Dark');			
INSERT INTO User_Preference_Info VALUES('Us016',FALSE,FALSE,TRUE,FALSE,FALSE,TRUE,'English','Dark');			
INSERT INTO User_Preference_Info VALUES('Us017',FALSE,TRUE,TRUE,TRUE,FALSE,FALSE,'English','Light');			
INSERT INTO User_Preference_Info VALUES('Us018',TRUE,TRUE,FALSE,TRUE,FALSE,TRUE,'English','Dark');			
INSERT INTO User_Preference_Info VALUES('Us019',FALSE,TRUE,TRUE,FALSE,TRUE,TRUE,'English','Light');			
INSERT INTO User_Preference_Info VALUES('Us020',TRUE,TRUE,FALSE,FALSE,TRUE,FALSE,'English','Dark');			
			
-- -- -- -- -- -- -- -- -- Going to connect the relationship between the _USER and the tables belonging to User_Preferences -- -- -- -- -- -- -- -- --			
ALTER TABLE _USER			
ADD CONSTRAINT fk_User_Preference foreign key(User_ID) REFERENCES USER_ID_NAME(User_ID) ON DELETE CASCADE;			
			
ALTER TABLE USER_ID_NAME			
ADD CONSTRAINT fk_User_Preference_Info foreign key(User_ID) REFERENCES USER_PREFERENCE_INFO(User_ID) ON DELETE CASCADE;			
			
-- following 3 tables ACHIEVEMENT_INFO, USER_ACHIEVEMENT, ACHIEVEMENT_REWARD will collectively represent the ACHIEVEMENT Entity that was originally designed in the ER diagram			
CREATE TABLE ACHIEVEMENT_INFO(			
	Achievement_ID varchar(10) NOT NULL,		
Difficulty varchar(12) NOT NULL,			
Achievers_Count int,			
Popularity varchar(30) GENERATED ALWAYS AS (			
CASE			
WHEN Achievers_Count < 5 THEN 'Disliked'			
WHEN Achievers_Count < 10 THEN 'Normal'			
WHEN Achievers_Count < 15 THEN 'Liked'			
ELSE 'Popular'			
END			
) STORED,			
/*the above attribute "Popularity" is a derived attribute that is derived based on the Achievers_Count			
0-4 the value = Disliked			
5-9 the value= Normal			
10-14 the value = liked			
14-onward the value = Popular			
			
The GENERATED ALWAYS make sure that the column value is recalculated everytime that particular column shows up in a query			
so this means that when the Achievers_Count is updated the popularity values will also be updated correctly when it queried			
and then the STORE keyword makes sure that the column is stored incase it needs to be accessed in a different way like indexing*/			
			
Awarding_Condition varchar(100) NOT NULL,			
primary key (Achievement_ID)			
);			
			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach001','Easy',16,'Add a Friend');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach002','Easy',10,'Join First AR Call');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach003','Easy',8,'Download An Available AR item');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach004','Medium',6,'Create a Custom AR object');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach005','Easy',6,'Share Custom usermade AR object');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach006','Hard',4,'Add 50 friends');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach007','Easy',6,'Use 10 AR items in a call');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach008','Medium',3,'Complete 7 Achievements');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach009','Medium',3,'Use 20 AR items in a call');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach010','Hard',3,'Use 50 AR items in a call');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach011','Medium',2,'Get developer Approval for 20 usermade AR Items');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach012','Hard',2,'Get developer Approval for 50 usermade AR items');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach013','Hard',2,'Share 50 user made AR items');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach014','Hard',2,'Create 100 usermade AR items');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach015','Hard',2,'Complete 14 Achievements');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach016','Very Hard',1,'Get developer Approval for 100 usermade AR Items');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach017','Very Hard',1,'Add 50 friends to a call');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach018','Very Hard',1,'Add 100 friends');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach019','Very Hard',1,'Participate in 150 AR Calls');			
INSERT INTO Achievement_Info (Achievement_ID,Difficulty,Achievers_Count,Awarding_Condition) VALUES ('Ach020','Very Hard',1,'Host 150 AR Calls');			
			
			
CREATE TABLE USER_ACHIEVEMENT (			
	User_ID varchar(20) NOT NULL,		
Achievement_ID varchar(10),			
Obtained_Date date,			
primary key(User_ID,Achievement_ID)			
);			
INSERT INTO User_Achievement VALUES('Us001','Ach000','2023-04-11');			
INSERT INTO User_Achievement VALUES('Us001','Ach001','2023-04-11');			
INSERT INTO User_Achievement VALUES('Us001','Ach002','2023-04-11');			
INSERT INTO User_Achievement VALUES('Us001','Ach003','2023-04-12');			
INSERT INTO User_Achievement VALUES('Us001','Ach004','2020-11-10');			
INSERT INTO User_Achievement VALUES('Us001','Ach005','2020-11-10');			
INSERT INTO User_Achievement VALUES('Us001','Ach006','2021-05-11');			
INSERT INTO User_Achievement VALUES('Us001','Ach007','2022-06-01');			
INSERT INTO User_Achievement VALUES('Us001','Ach008','2021-01-11');			
INSERT INTO User_Achievement VALUES('Us001','Ach009','2020-03-23');			
INSERT INTO User_Achievement VALUES('Us001','Ach010','2023-09-19');			
INSERT INTO User_Achievement VALUES('Us001','Ach011','2023-07-11');			
INSERT INTO User_Achievement VALUES('Us001','Ach012','2020-01-16');			
INSERT INTO User_Achievement VALUES('Us001','Ach013','2019-12-12');			
INSERT INTO User_Achievement VALUES('Us001','Ach014','2023-02-23');			
INSERT INTO User_Achievement VALUES('Us001','Ach015','2023-01-24');			
INSERT INTO User_Achievement VALUES('Us001','Ach016','2019-04-18');			
INSERT INTO User_Achievement VALUES('Us001','Ach017','2019-12-07');			
INSERT INTO User_Achievement VALUES('Us001','Ach018','2023-02-15');			
INSERT INTO User_Achievement VALUES('Us001','Ach019','2020-05-26');			
INSERT INTO User_Achievement VALUES('Us001','Ach020','2019-05-09');			
INSERT INTO User_Achievement VALUES('Us002','Ach000','2022-04-29');			
INSERT INTO User_Achievement VALUES('Us002','Ach001','2022-04-29');			
INSERT INTO User_Achievement VALUES('Us002','Ach002','2022-02-21');			
INSERT INTO User_Achievement VALUES('Us002','Ach003','2022-11-18');			
INSERT INTO User_Achievement VALUES('Us002','Ach004','2022-12-05');			
INSERT INTO User_Achievement VALUES('Us002','Ach005','2020-11-04');			
INSERT INTO User_Achievement VALUES('Us002','Ach006','2019-07-03');			
INSERT INTO User_Achievement VALUES('Us002','Ach007','2021-06-25');			
INSERT INTO User_Achievement VALUES('Us002','Ach008','2023-08-22');			
INSERT INTO User_Achievement VALUES('Us002','Ach009','2023-04-16');			
INSERT INTO User_Achievement VALUES('Us002','Ach010','2023-12-08');			
INSERT INTO User_Achievement VALUES('Us002','Ach011','2019-04-10');			
INSERT INTO User_Achievement VALUES('Us002','Ach012','2023-06-02');			
INSERT INTO User_Achievement VALUES('Us002','Ach013','2019-09-25');			
INSERT INTO User_Achievement VALUES('Us002','Ach014','2022-08-07');			
INSERT INTO User_Achievement VALUES('Us002','Ach015','2023-03-29');			
INSERT INTO User_Achievement VALUES('Us003','Ach000','2019-05-09');			
INSERT INTO User_Achievement VALUES('Us003','Ach001','2019-05-09');			
INSERT INTO User_Achievement VALUES('Us003','Ach002','2021-04-03');			
INSERT INTO User_Achievement VALUES('Us003','Ach003','2020-05-06');			
INSERT INTO User_Achievement VALUES('Us003','Ach004','2023-02-19');			
INSERT INTO User_Achievement VALUES('Us003','Ach005','2022-12-10');			
INSERT INTO User_Achievement VALUES('Us003','Ach006','2020-12-03');			
INSERT INTO User_Achievement VALUES('Us003','Ach007','2023-09-04');			
INSERT INTO User_Achievement VALUES('Us003','Ach008','2020-10-02');			
INSERT INTO User_Achievement VALUES('Us003','Ach009','2023-05-05');			
INSERT INTO User_Achievement VALUES('Us003','Ach010','2021-05-20');			
INSERT INTO User_Achievement VALUES('Us004','Ach000','2020-06-21');			
INSERT INTO User_Achievement VALUES('Us004','Ach001','2020-06-21');			
INSERT INTO User_Achievement VALUES('Us004','Ach002','2019-09-29');			
INSERT INTO User_Achievement VALUES('Us004','Ach003','2019-05-18');			
INSERT INTO User_Achievement VALUES('Us004','Ach004','2023-02-10');			
INSERT INTO User_Achievement VALUES('Us004','Ach005','2022-03-09');			
INSERT INTO User_Achievement VALUES('Us004','Ach006','2020-07-08');			
INSERT INTO User_Achievement VALUES('Us005','Ach000','2020-11-09');			
INSERT INTO User_Achievement VALUES('Us005','Ach001','2020-11-09');			
INSERT INTO User_Achievement VALUES('Us005','Ach002','2020-07-01');			
INSERT INTO User_Achievement VALUES('Us005','Ach003','2021-08-26');			
INSERT INTO User_Achievement VALUES('Us006','Ach000','2020-06-22');			
INSERT INTO User_Achievement VALUES('Us006','Ach001','2020-06-22');			
INSERT INTO User_Achievement VALUES('Us006','Ach002','2022-05-06');			
INSERT INTO User_Achievement VALUES('Us007','Ach000','2021-09-03');			
INSERT INTO User_Achievement VALUES('Us007','Ach001','2021-09-03');			
INSERT INTO User_Achievement VALUES('Us008','Ach000','2023-08-28');			
INSERT INTO User_Achievement VALUES('Us008','Ach001','2023-08-28');			
INSERT INTO User_Achievement VALUES('Us009','Ach000','2023-03-09');			
INSERT INTO User_Achievement VALUES('Us009','Ach001','2023-03-09');			
INSERT INTO User_Achievement VALUES('US010','Ach000','2023-05-11');			
INSERT INTO User_Achievement VALUES('US011','Ach000','2023-05-12');			
INSERT INTO User_Achievement VALUES('Us012','Ach000','2023-05-13');			
INSERT INTO User_Achievement VALUES('Us013','Ach000','2023-05-14');			
INSERT INTO User_Achievement VALUES('Us014','Ach000','2023-05-15');			
INSERT INTO User_Achievement VALUES('Us015','Ach000','2023-05-16');			
INSERT INTO User_Achievement VALUES('Us016','Ach000','2023-05-17');			
INSERT INTO User_Achievement VALUES('Us017','Ach000','2023-05-18');			
INSERT INTO User_Achievement VALUES('Us018','Ach000','2023-05-19');			
INSERT INTO User_Achievement VALUES('Us019','Ach000','2023-05-20');			
INSERT INTO User_Achievement VALUES('Us020','Ach000','2023-05-21');			
			
CREATE TABLE ACHIEVEMENT_REWARD (			
	Achievement_ID varchar(10) NOT NULL,		
Reward varchar(200),			
Primary key (Achievement_ID,Reward)			
);			
			
INSERT INTO Achievement_Reward VALUES ('Ach000','Get A Sticker');			
INSERT INTO Achievement_Reward VALUES ('Ach001','Get A Sticker');			
INSERT INTO Achievement_Reward VALUES ('Ach002','Get A Sticker');			
INSERT INTO Achievement_Reward VALUES ('Ach003','Unlock Ability to create usermade items');			
INSERT INTO Achievement_Reward VALUES ('Ach004','Unlock Ability to share usermade items');			
INSERT INTO Achievement_Reward VALUES ('Ach005','Get A Sticker');			
INSERT INTO Achievement_Reward VALUES ('Ach006','Get A Badge');			
INSERT INTO Achievement_Reward VALUES ('Ach007','Increases to capacity of AR items per call');			
INSERT INTO Achievement_Reward VALUES ('Ach008','Get A Badge');			
INSERT INTO Achievement_Reward VALUES ('Ach009','Increases to capacity of AR items per call');			
INSERT INTO Achievement_Reward VALUES ('Ach010','Increases to capacity of AR items per call');			
INSERT INTO Achievement_Reward VALUES ('Ach011','Get A Badge');			
INSERT INTO Achievement_Reward VALUES ('Ach012','Get A Badge');			
INSERT INTO Achievement_Reward VALUES ('Ach013','Get A Badge');			
INSERT INTO Achievement_Reward VALUES ('Ach014','Unlock Ability to share usermade items');			
INSERT INTO Achievement_Reward VALUES ('Ach015','Get A Badge');			
INSERT INTO Achievement_Reward VALUES ('Ach016','Get A Badge');			
INSERT INTO Achievement_Reward VALUES ('Ach016','Get $10');			
INSERT INTO Achievement_Reward VALUES ('Ach017','Get A Sticker');			
INSERT INTO Achievement_Reward VALUES ('Ach017','Get $25 cash price');			
INSERT INTO Achievement_Reward VALUES ('Ach018','Get A Sticker');			
INSERT INTO Achievement_Reward VALUES ('Ach018','Get $50 cash price');			
INSERT INTO Achievement_Reward VALUES ('Ach019','Get A Badge');			
INSERT INTO Achievement_Reward VALUES ('Ach019',' Get $100 cash price');			
INSERT INTO Achievement_Reward VALUES ('Ach020','Get A Badge');			
INSERT INTO Achievement_Reward VALUES ('Ach020','Get $200 cash price');			
			
-- -- -- -- -- -- -- -- -- Going to connect the relationship between the _USER and the tables belonging to Achievement -- -- -- -- -- -- -- -- --			
ALTER TABLE _USER			
ADD CONSTRAINT fk_User_Achievement foreign key(User_ID) REFERENCES USER_ACHIEVEMENT(User_ID) ON DELETE CASCADE;			
			
ALTER TABLE USER_ACHIEVEMENT ADD INDEX idx_Achievement_ID (Achievement_ID);			
/*above line was coded because the next line gives an error			
Error Code: 1822. Failed to add the foreign key constraint. Missing index for constraint 'fk_UA' in the referenced table 'user_achievement'			
so after the creation of an index for the achievement_ID in the USER_ACHIEVEMENT Table, the foreign key constraint's reference can sucessfully be set to the achievement_ID column			
*/			
			
ALTER TABLE ACHIEVEMENT_INFO			
ADD CONSTRAINT fk_UA foreign key(Achievement_ID) REFERENCES USER_ACHIEVEMENT(Achievement_ID) ON DELETE CASCADE;			
			
ALTER TABLE ACHIEVEMENT_INFO			
ADD CONSTRAINT fk_Achievement_Reward foreign key(Achievement_ID) REFERENCES ACHIEVEMENT_REWARD(Achievement_ID) ON DELETE CASCADE;			
			
			
			
			
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------			
			
			
			
CREATE TABLE ERROR_MESSAGE(			
Device_ID varchar(20) NOT NULL,			
Occured_Date DATE,			
Occured_Time TIME,			
User_ID varchar(20) NOT NULL,			
Error_Code varchar(20),			
Error_Type varchar(100),			
Faulty_Component varchar(100),			
Suggested_Fix varchar(100),			
			
primary key(Device_ID,Occured_Date,Occured_Time)			
);			
			
INSERT INTO ERROR_MESSAGE VALUES('D0001','2023-01-16','12:53:00','Us001','ER-BAT011','Battery Drain','Battery','Charge');			
INSERT INTO ERROR_MESSAGE VALUES('D0001','2023-01-09','03:00:00','Us001','ER-VCMD008','Voice Command Error','Microphone','Retrain');			
INSERT INTO ERROR_MESSAGE VALUES('D0002','2023-01-10','09:34:00','Us001','ER-BAT011','Battery Drain','Battery','Charge');			
INSERT INTO ERROR_MESSAGE VALUES('D0002','2023-01-28','01:47:00','Us001','ER-HFAIL015','Hardware Failure','Interface','Reconnect');			
INSERT INTO ERROR_MESSAGE VALUES('D0003','2023-01-29','20:01:00','Us001','ER-OVER012','Overheating','Cooler','Cool');			
INSERT INTO ERROR_MESSAGE VALUES('D0003','2023-01-16','12:53:00','Us001','ER-PRIV017','Privacy Concern','Encryptor','Secure');			
INSERT INTO ERROR_MESSAGE VALUES('D0004','2023-01-17','01:40:00','Us002','ER-TRK002','Tracking Loss','Tracker','Reset');			
INSERT INTO ERROR_MESSAGE VALUES('D0004','2023-01-10','09:34:00','Us002','ER-NET003','Network Latency','Network','Reconnect');			
INSERT INTO ERROR_MESSAGE VALUES('D0005','2023-01-09','03:00:00','Us002','ER-NET003','Network Latency','Network','Reconnect');			
INSERT INTO ERROR_MESSAGE VALUES('D0006','2023-01-09','03:00:00','Us003','ER-NET003','Network Latency','Network','Reconnect');			
INSERT INTO ERROR_MESSAGE VALUES('D0007','2023-01-13','20:55:00','Us004','ER-REND004','Rendering Delay','GPU','Update');			
INSERT INTO ERROR_MESSAGE VALUES('D0008','2023-01-28','01:47:00','Us004','ER-SENS005','Sensor Mismatch','IMU','Stabilize');			
INSERT INTO ERROR_MESSAGE VALUES('D0009','2023-01-22','16:54:00','Us005','ER-SPAT006','Spatial Disorientation','Mapper','Remap');			
INSERT INTO ERROR_MESSAGE VALUES('D0010','2023-01-13','01:47:00','Us005','ER-GEST007','Gesture Recognition Error','Sensor','Adjust');			
INSERT INTO ERROR_MESSAGE VALUES('D0011','2023-01-24','14:14:00','Us006','ER-VCMD008','Voice Command Error','Microphone','Retrain');			
INSERT INTO ERROR_MESSAGE VALUES('D0012','2023-01-16','12:53:00','Us007','ER-FOV009','Field of View Limitation','Display','Replace');			
INSERT INTO ERROR_MESSAGE VALUES('D0013','2023-01-02','01:14:00','Us008','ER-RES010','Resolution Incompatibility','Resolution','Configure');			
INSERT INTO ERROR_MESSAGE VALUES('D0014','2023-01-10','09:34:00','Us009','ER-BAT011','Battery Drain','Battery','Charge');			
INSERT INTO ERROR_MESSAGE VALUES('D0015','2023-01-29','20:01:00','Us010','ER-OVER012','Overheating','Cooler','Cool');			
INSERT INTO ERROR_MESSAGE VALUES('D0016','2023-01-12','05:15:00','Us011','ER-COMP013','Compatibility Issue','Software','Patch');			
INSERT INTO ERROR_MESSAGE VALUES('D0017','2023-01-05','17:17:00','Us012','ER-SBUG014','Software Bug','OS','Reinstall');			
INSERT INTO ERROR_MESSAGE VALUES('D0018','2023-01-28','03:09:00','Us013','ER-HFAIL015','Hardware Failure','Interface','Reconnect');			
INSERT INTO ERROR_MESSAGE VALUES('D0019','2023-01-16','14:53:00','Us014','ER-UICF016','User Interface Confusion','UI','Simplify');			
INSERT INTO ERROR_MESSAGE VALUES('D0020','2023-01-21','14:53:00','Us015','ER-PRIV017','Privacy Concern','Encryptor','Secure');			
INSERT INTO ERROR_MESSAGE VALUES('D0021','2023-01-03','03:13:00','Us016','ER-DATA018','Data Corruption','Storage','Recover');			
INSERT INTO ERROR_MESSAGE VALUES('D0022','2023-01-09','18:32:00','Us017','ER-EXT019','External Interference','Antenna','Shield');			
INSERT INTO ERROR_MESSAGE VALUES('D0023','2023-01-01','02:49:00','Us018','ER-LIGHT020','Insufficient Lighting','LightSensor','Illuminate');			
INSERT INTO ERROR_MESSAGE VALUES('D0023','2023-01-09','03:00:00','Us019','ER-00000000','Regular Check No issues discovered','N/A','N/A');			
INSERT INTO ERROR_MESSAGE VALUES('D0023','2023-01-03','03:13:00','Us020','ER-00000000','Regular Check No issues discovered','N/A','N/A');			
			
CREATE TABLE SESSION_(			
SESSION_ID varchar(20) NOT NULL,			
Host_ID varchar(20) NOT NULL,			
Surrounding_ID varchar(20) NOT NULL,			
SESSION__Time TIME,			
SESSION__Date DATE,			
SESSION__Capacity INT,			
No_of_PARTICIPANT INT,			
			
primary key(SESSION_ID)			
);			
			
INSERT INTO SESSION_ VALUES('S001','Us001','SR01','10:00','2023-01-01','5','4');			
INSERT INTO SESSION_ VALUES('S002','Us002','SR02','11:00','2023-01-02','10','3');			
INSERT INTO SESSION_ VALUES('S003','Us003','SR01','09:30','2023-01-03','4','3');			
INSERT INTO SESSION_ VALUES('S004','Us004','SR03','14:00','2023-01-04','10','4');			
INSERT INTO SESSION_ VALUES('S005','Us005','SR02','16:00','2023-01-05','5','5');			
INSERT INTO SESSION_ VALUES('S006','Us006','SR04','15:00','2023-01-06','3','6');			
INSERT INTO SESSION_ VALUES('S007','Us007','SR03','10:30','2023-01-07','8','4');			
INSERT INTO SESSION_ VALUES('S008','Us008','SR01','09:00','2023-01-08','2','3');			
INSERT INTO SESSION_ VALUES('S009','Us009','SR05','13:00','2023-01-09','5','2');			
INSERT INTO SESSION_ VALUES('S010','Us010','SR02','12:00','2023-01-10','10','4');			
INSERT INTO SESSION_ VALUES('S011','Us011','SR03','14:00','2023-01-11','8','3');			
INSERT INTO SESSION_ VALUES('S012','Us012','SR04','15:00','2023-01-12','6','3');			
INSERT INTO SESSION_ VALUES('S013','Us013','SR05','16:00','2023-01-13','7','4');			
INSERT INTO SESSION_ VALUES('S014','Us014','SR01','10:00','2023-01-14','5','5');			
INSERT INTO SESSION_ VALUES('S015','Us015','SR02','11:00','2023-01-15','9','6');			
INSERT INTO SESSION_ VALUES('S016','Us016','SR06','09:30','2023-01-16','4','4');			
INSERT INTO SESSION_ VALUES('S017','Us017','SR04','14:00','2023-01-17','10','3');			
INSERT INTO SESSION_ VALUES('S018','Us018','SR05','16:00','2023-01-18','5','2');			
INSERT INTO SESSION_ VALUES('S019','Us019','SR01','15:00','2023-01-19','3','5');			
INSERT INTO SESSION_ VALUES('S020','Us020','SR02','12:00','2023-01-20','8','3');			
			
CREATE TABLE PARTICIPANT(			
SESSION_ID varchar(20) NOT NULL,			
Participant_User_ID varchar(20) NOT NULL,			
			
primary key(SESSION_ID,Participant_User_ID)			
);			
			
INSERT INTO PARTICIPANT VALUES('S001','Us001');			
INSERT INTO PARTICIPANT VALUES('S001','Us008');			
INSERT INTO PARTICIPANT VALUES('S002','Us002');			
INSERT INTO PARTICIPANT VALUES('S002','Us009');			
INSERT INTO PARTICIPANT VALUES('S002','Us010');			
INSERT INTO PARTICIPANT VALUES('S003','Us003');			
INSERT INTO PARTICIPANT VALUES('S004','Us004');			
INSERT INTO PARTICIPANT VALUES('S004','Us016');			
INSERT INTO PARTICIPANT VALUES('S004','Us017');			
INSERT INTO PARTICIPANT VALUES('S004','Us020');			
INSERT INTO PARTICIPANT VALUES('S005','Us005');			
INSERT INTO PARTICIPANT VALUES('S005','Us012');			
INSERT INTO PARTICIPANT VALUES('S006','Us006');			
INSERT INTO PARTICIPANT VALUES('S007','Us007');			
INSERT INTO PARTICIPANT VALUES('S007','Us009');			
INSERT INTO PARTICIPANT VALUES('S007','Us008');			
INSERT INTO PARTICIPANT VALUES('S008','Us008');			
INSERT INTO PARTICIPANT VALUES('S009','Us009');			
INSERT INTO PARTICIPANT VALUES('S009','Us008');			
INSERT INTO PARTICIPANT VALUES('S010','Us010');			
INSERT INTO PARTICIPANT VALUES('S010','Us012');			
INSERT INTO PARTICIPANT VALUES('S010','Us008');			
INSERT INTO PARTICIPANT VALUES('S011','Us011');			
INSERT INTO PARTICIPANT VALUES('S011','Us019');			
INSERT INTO PARTICIPANT VALUES('S012','Us012');			
INSERT INTO PARTICIPANT VALUES('S012','Us009');			
INSERT INTO PARTICIPANT VALUES('S013','Us013');			
INSERT INTO PARTICIPANT VALUES('S013','Us014');			
INSERT INTO PARTICIPANT VALUES('S014','Us014');			
INSERT INTO PARTICIPANT VALUES('S014','Us015');			
INSERT INTO PARTICIPANT VALUES('S015','Us015');			
INSERT INTO PARTICIPANT VALUES('S015','Us019');			
INSERT INTO PARTICIPANT VALUES('S016','Us016');			
INSERT INTO PARTICIPANT VALUES('S016','Us019');			
INSERT INTO PARTICIPANT VALUES('S017','Us017');			
INSERT INTO PARTICIPANT VALUES('S017','Us009');			
INSERT INTO PARTICIPANT VALUES('S018','Us018');			
INSERT INTO PARTICIPANT VALUES('S018','Us001');			
INSERT INTO PARTICIPANT VALUES('S019','Us019');			
INSERT INTO PARTICIPANT VALUES('S020','Us020');			
INSERT INTO PARTICIPANT VALUES('S020','Us017');			
INSERT INTO PARTICIPANT VALUES('S020','Us016');			
			
CREATE TABLE USED_USERMADE_ITEM (			
SESSION_ID varchar(20) Not NULL,			
User_Id varchar(20),			
Item_ID varchar(20),			
primary key (SESSION_ID,User_ID,Item_ID)			
);			
			
INSERT INTO USED_USERMADE_ITEM VALUES('S001','Us001','Sunglass');			
INSERT INTO USED_USERMADE_ITEM VALUES('S001','Us004','Cube');			
INSERT INTO USED_USERMADE_ITEM VALUES('S001','Us005','virtual car');			
INSERT INTO USED_USERMADE_ITEM VALUES('S002','Us001','Mask');			
INSERT INTO USED_USERMADE_ITEM VALUES('S002','Us003','Sunglass');			
INSERT INTO USED_USERMADE_ITEM VALUES('S003','Us001','Virtual star');			
INSERT INTO USED_USERMADE_ITEM VALUES('S003','Us004','left glove');			
INSERT INTO USED_USERMADE_ITEM VALUES('S004','Us003','Cat');			
INSERT INTO USED_USERMADE_ITEM VALUES('S004','Us004','Mug');			
INSERT INTO USED_USERMADE_ITEM VALUES('S005','Us002','mirror');			
INSERT INTO USED_USERMADE_ITEM VALUES('S006','Us003','Cat');			
INSERT INTO USED_USERMADE_ITEM VALUES('S007','Us003','Sunglass');			
INSERT INTO USED_USERMADE_ITEM VALUES('S008','Us004','Cube');			
INSERT INTO USED_USERMADE_ITEM VALUES('S009','Us004','Mug');			
INSERT INTO USED_USERMADE_ITEM VALUES('S010','Us004','left glove');			
INSERT INTO USED_USERMADE_ITEM VALUES('S011','Us005','virtual car');			
INSERT INTO USED_USERMADE_ITEM VALUES('S012','Us006','virtual plant ');			
INSERT INTO USED_USERMADE_ITEM VALUES('S013','Us007','Mug');			
INSERT INTO USED_USERMADE_ITEM VALUES('S014','Us003','Cat');			
INSERT INTO USED_USERMADE_ITEM VALUES('S015','Us003','Sunglass');			
INSERT INTO USED_USERMADE_ITEM VALUES('S016','Us004','Cube');			
INSERT INTO USED_USERMADE_ITEM VALUES('S017','Us004','Mug');			
INSERT INTO USED_USERMADE_ITEM VALUES('S018','Us004','left glove');			
INSERT INTO USED_USERMADE_ITEM VALUES('S019','NONE','NONE');			
INSERT INTO USED_USERMADE_ITEM VALUES('S020','NONE','NONE');			
			
			
CREATE TABLE USED_AVAILABLE_ITEM (			
SESSION_ID varchar(20),			
Item_ID varchar(20),			
primary key (SESSION_ID,Item_ID)			
);			
			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S001','IT101');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S001','IT102');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S001','IT103');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S002','IT104');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S002','IT105');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S002','IT111');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S003','IT106');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S003','IT107');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S004','IT108');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S004','IT109');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S005','IT110');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S006','IT111');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S006','IT108');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S007','IT112');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S007','IT118');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S008','IT113');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S008','IT119');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S009','IT114');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S009','IT118');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S010','IT115');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S011','IT116');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S012','IT117');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S013','IT118');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S014','IT119');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S015','IT120');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S016','IT118');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S017','IT119');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S018','IT106');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S019','IT109');			
INSERT INTO USED_AVAILABLE_ITEM VALUES ('S020','IT119');			
			
			
			
			
CREATE TABLE DEVICE(			
Device_ID varchar(20) NOT NULL,			
User_ID varchar(20) NOT NULL,			
Model_No varchar(50) NOT NULL,			
Device_Type varchar(50) NOT NULL,			
OS varchar(50),			
Manufacturer varchar(20) NOT NULL,			
			
primary key(Device_ID)			
);			
			
INSERT INTO DEVICE VALUES('D0001','Us001','Galaxy S21','Smartphone','Android 11','Samsung');			
INSERT INTO DEVICE VALUES('D0002','Us001','iPhone 12','Smartphone','iOS 14','Apple');			
INSERT INTO DEVICE VALUES('D0003','Us001','MacBook Air','Laptop','macOS Big Sur','Apple');			
INSERT INTO DEVICE VALUES('D0004','Us002','iPad Air 4','Tablet','iOS 14','Apple');			
INSERT INTO DEVICE VALUES('D0005','Us002','Vive Pro','VR Headset','SteamVR','HTC');			
INSERT INTO DEVICE VALUES('D0006','Us003','HoloLens 2','AR Headset','Windows 10','Microsoft');			
INSERT INTO DEVICE VALUES('D0007','Us004','Vision Pro','AR Headset','Custom OS','VisionTech');			
INSERT INTO DEVICE VALUES('D0008','Us004','Quest 2','VR Headset','Android 11','Amazon');			
INSERT INTO DEVICE VALUES('D0009','Us005','XPS 15','Laptop','Windows 10','Dell');			
INSERT INTO DEVICE VALUES('D0010','Us005','ThinkPad X1','Laptop','Windows 10','Lenovo');			
INSERT INTO DEVICE VALUES('D0011','Us006','Watch 6','Smartwatch','iOS 14','Apple');			
INSERT INTO DEVICE VALUES('D0012','Us007','iPhone 12','Smartphone','iOS 14','Apple');			
INSERT INTO DEVICE VALUES('D0013','Us008','Tab S7','Tablet','Android 11','Samsung');			
INSERT INTO DEVICE VALUES('D0014','Us009','Magic Leap','AR Glasses','Lumin OS','Magic Leap');			
INSERT INTO DEVICE VALUES('D0015','Us010','MacBook Air','Laptop','macOS Big Sur','Apple');			
INSERT INTO DEVICE VALUES('D0016','Us011','Vive Pro','VR Headset','SteamVR','HTC');			
INSERT INTO DEVICE VALUES('D0017','Us012','Gear S3','Smartwatch','Tizen','Samsung');			
INSERT INTO DEVICE VALUES('D0018','Us013','Pixel 5','Smartphone','Android 11','Google');			
INSERT INTO DEVICE VALUES('D0019','Us014','Surface Go 2','Tablet','Windows 10','Microsoft');			
INSERT INTO DEVICE VALUES('D0020','Us015','Vision Pro','AR Headset','Custom OS','VisionTech');			
INSERT INTO DEVICE VALUES('D0021','Us016','ThinkPad X1','Laptop','Windows 10','Lenovo');			
INSERT INTO DEVICE VALUES('D0022','Us017','GTR 2','Smartwatch','Amazfit OS','Amazfit');			
INSERT INTO DEVICE VALUES('D0023','Us018','Rift S','VR Headset','Oculus OS','Oculus');			
INSERT INTO DEVICE VALUES('D0024','Us019','OnePlus 9','Smartphone','Oculus OS','OnePlus');			
INSERT INTO DEVICE VALUES('D0025','Us020','Fire HD 10','Tablet','Fire OS','Amazon');			
			
			
-- Foreign Keys			
-- connecting User and error Message			
ALTER TABLE ERROR_MESSAGE ADD INDEX idx_User_Id (User_ID); -- this index was manually added to avoid the errors that occur in the next line			
ALTER TABLE _USER			
ADD CONSTRAINT fk_Error_Msg foreign key(User_ID) REFERENCES ERROR_MESSAGE(User_ID) ON DELETE CASCADE;			
			
-- connecting User and DEVICE			
ALTER TABLE DEVICE ADD INDEX indx_usr_id(User_ID);	-- this index was manually added to avoid the errors that occur in the next line		
ALTER TABLE _USER			
ADD CONSTRAINT fk_DEVICE foreign Key(User_ID) REFERENCES DEVICE (User_ID) ON DELETE CASCADE;			
			
-- connecting User and SESSION_			
ALTER TABLE SESSION_ ADD INDEX indx_host_id(Host_ID);-- this index was manually added to avoid the errors that occur in the next line			
ALTER TABLE _USER			
ADD CONSTRAINT fk_SESSION_ foreign Key(User_ID) REFERENCES SESSION_ (Host_ID) ON DELETE CASCADE;			
			
ALTER TABLE PARTICIPANT ADD INDEX indx_p_Session_ID (Session_ID);			
ALTER TABLE SESSION_			
ADD CONSTRAINT fk_Participant foreign key(Session_ID) REFERENCES PARTICIPANT(Session_ID) ON DELETE CASCADE;			
			
ALTER TABLE USED_USERMADE_ITEM ADD INDEX indx_ssn_ID (Session_ID);			
ALTER TABLE SESSION_			
ADD CONSTRAINT fk_UUI foreign key (Session_ID) REFERENCES USED_USERMADE_ITEM(Session_ID) ON DELETE CASCADE;			
			
ALTER TABLE USED_AVAILABLE_ITEM ADD INDEX indx_UAI_ssn_ID (Session_Id);			
ALTER TABLE SESSION_			
ADD CONSTRAINT fk_UAI foreign key (Session_ID) REFERENCES USED_AVAILABLE_ITEM (Session_ID) ON DELETE CASCADE;			
			
-- --------------------------------------------------------------------------------------------------------------------------------------			
			
			
CREATE TABLE SURROUNDING(			
Surrounding_Id Varchar(10) NOT NULL,			
Weather Varchar(20),			
Time_of_Day Varchar(20),			
Background_Music Varchar(20),			
Theme Varchar(20),			
			
			
Primary key(Surrounding_Id)			
);			
			
INSERT INTO SURROUNDING VALUES('SR01','Gloomy','Morning','/SR001.MP3','Village');			
INSERT INTO SURROUNDING VALUES('SR02','Rainy','Evening','/SR002.MP3','City');			
INSERT INTO SURROUNDING VALUES('SR03','Stormy','Night','/SR003.MP3','Beach');			
INSERT INTO SURROUNDING VALUES('SR04','Sunny','Afternoon','/SR004.MP3','Forest');			
INSERT INTO SURROUNDING VALUES('SR05','Rainy','Evening','/SR005.MP3','Under Water');			
INSERT INTO SURROUNDING VALUES('SR06','Snowy','Evening','/SR006.MP3','Forest');			
			
			
CREATE TABLE AVAILABLE_ITEM(			
Item_Id varchar(10) NOT NULL,			
Item_Type varchar(20),			
Height INT,			
Width INT,			
Length INT,			
Paid_Amount FLOAT,			
Free_or_Paid Varchar(10),			
Is_Tangible BOOL,			
Toggle_Sound bool,			
			
Primary key(Item_Id)			
);			
			
INSERT INTO AVAILABLE_ITEM VALUES('IT101','Electronics',20,3,8,Null,'Free',TRUE,TRUE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT102','Clothing',25,4,10,2,'Paid',FALSE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT103','Furniture',15,5,10,4,'Paid',TRUE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT104','Toy',10,5,8,Null,'Free',FALSE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT105','smart Phone',30,10,9,8,'Paid',TRUE,TRUE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT106','Book',10,6,8,4,'Paid',FALSE,TRUE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT107','Music Instrument',5,2.5,2.5,Null,'Free',TRUE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT108','Lighting System',5,3,2,Null,'Free',FALSE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT109','Smart watch',8,5,3,6,'Paid',FALSE,TRUE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT110','Accessories',5,3,5,3,'Paid',TRUE,TRUE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT111','Educational Tool',4,2,2,2,'Paid',TRUE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT112','Avatar',10,8,5,Null,'Free',FALSE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT113','Camera',15,10,8,Null,'Free',FALSE,TRUE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT114','Clothing Store',12,5,7,1,'Paid',TRUE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT115','Magazines',11.5,6,5.5,Null,'Free',FALSE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT116','Shoe Store',10.5,8,5.5,2,'Paid',FALSE,TRUE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT117','Art Gallery',15,12,8,Null,'Free',FALSE,TRUE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT118','Fitness Tracker',15,12,7.5,Null,'Free',TRUE,FALSE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT119','Architectural Models',21,10,13,4,'Paid',FALSE,TRUE);			
INSERT INTO AVAILABLE_ITEM VALUES('IT120','Communication device',4.5,3,2.5,1,'Paid',FALSE,TRUE);			
			
CREATE TABLE AVAILABLE_ITEM_SESSION_ (			
	Item_ID varchar(10) NOT NULL,		
SESSION_ID varchar(20) NOT NULL,			
Primary key (Item_ID,SESSION_ID)			
);			
			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT101','S001');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT101','S002');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT101','S005');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT102','S003');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT102','S008');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT102','S009');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT103','S010');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT103','S012');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT103','S007');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT104','S004');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT104','S002');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT105','S005');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT105','S001');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT106','S006');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT107','S007');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT108','S008');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT109','S009');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT110','S010');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT111','S011');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT112','S012');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT113','S013');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT114','S014');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT115','S015');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT116','S016');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT117','S017');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT118','S018');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT119','S019');			
INSERT INTO AVAILABLE_ITEM_SESSION_ VALUES('IT120','S020');			
			
CREATE TABLE USERMADE_ITEM(			
User_Id varchar(10) NOT NULL,			
Item_Name Varchar(20),			
Is_Tangible bool,			
Surface_Shine Varchar(20),			
Transparency bool,			
Primary key(User_Id,Item_Name)			
);			
INSERT INTO USERMADE_ITEM VALUES('Us001','Sunglass',TRUE,'Glossy',TRUE);			
INSERT INTO USERMADE_ITEM VALUES('Us001','Mask',TRUE,'Glossy',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us001','Virtual star',FALSE,'Radiant',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us002','Mask',TRUE,'matte',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us002','mirror',FALSE,'Reflective',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us003','Cat',FALSE,'Matte',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us003','Sunglass',FALSE,'Dull',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us004','Cube',TRUE,'polished',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us004','Mug',TRUE,'Radiant',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us004','left glove',TRUE,'Mattle',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us005','virtual car',TRUE,'glossy',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us006','virtual plant ',TRUE,'matte',FALSE);			
INSERT INTO USERMADE_ITEM VALUES('Us007','Mug',TRUE,'polished',TRUE);			
INSERT INTO USERMADE_ITEM VALUES('Us008','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us009','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us010','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us011','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us012','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us013','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us014','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us015','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us016','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us017','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us018','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us019','Not Created yet',NULL,'NULL',NULL);			
INSERT INTO USERMADE_ITEM VALUES('Us020','Not Created yet',NULL,'NULL',NULL);			
			
			
CREATE TABLE USERMADE_ITEM_COLOR(			
user_id Varchar(10),			
Item_Name Varchar(20),			
color Varchar(10),			
primary key(User_id,Item_Name,Color)			
);			
			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us001','Sunglass','black');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us001','Mask','black');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us001','Virtual star','Gold');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us002','Mask','red');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us002','mirror','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us003','Cat','ash');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us003','Sunglass','ash');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us004','Cube','white');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us004','Mug','white');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us004','left glove','black');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us005','virtual car','green');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us006','virtual plant ','green');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us007','Mug','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us008','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us009','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us010','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us011','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us012','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us013','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us014','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us015','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us016','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us017','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us018','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us019','Not Created yet','NONE');			
INSERT INTO USERMADE_ITEM_COLOR VALUES('Us020','Not Created yet','NONE');			
			
			
-- joinig SESSION_ and sorrounding table			
ALTER TABLE SESSION_ ADD INDEX idx_Surrounding_Id (Surrounding_ID);	-- this index was manually added to avoid the errors that occur in the next line		
ALTER TABLE SURROUNDING			
ADD CONSTRAINT fk_ssn_surrounding foreign key(Surrounding_Id) REFERENCES SESSION_(Surrounding_ID) ON DELETE CASCADE;			
			
-- joining Available items and SESSION_ through junction table			
ALTER TABLE AVAILABLE_ITEM_SESSION_ ADD INDEX idx_SESSION_ID (SESSION_ID);	-- this index was manually added to avoid the errors that occur in the next line		
ALTER TABLE SESSION_			
ADD CONSTRAINT fk_Av_Itm_J foreign key (SESSION_ID) REFERENCES AVAILABLE_ITEM_SESSION_(SESSION_ID) ON DELETE CASCADE;			
			
ALTER TABLE AVAILABLE_ITEM_SESSION_ ADD INDEX idx_Item_ID (Item_ID); -- this index was manually added to avoid the errors that occur in the next line			
ALTER TABLE AVAILABLE_ITEM			
ADD CONSTRAINT fk_to_SESSION__J foreign key (Item_ID) REFERENCES AVAILABLE_ITEM_SESSION_(Item_ID) ON DELETE CASCADE;			
			
-- joining Usermade_Item and Available_Item			
ALTER TABLE USERMADE_ITEM ADD INDEX idx_User_ID(User_ID); -- this index was manually added to avoid the errors that occur in the next line			
ALTER TABLE _USER			
ADD CONSTRAINT fk_UserMade_Item foreign key (User_ID) REFERENCES USERMADE_ITEM (User_ID) ON DELETE CASCADE;			
			
ALTER TABLE USERMADE_ITEM			
ADD CONSTRAINT fk_Itm_color foreign key (User_ID,Item_Name) REFERENCES USERMADE_ITEM_COLOR(User_ID,Item_Name) ON DELETE CASCADE;			
			
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------					
-- _USER Table			
DELETE FROM _USER WHERE User_ID ='Us020' AND Access_Level = 'Normal' AND _2D_Profile_Photo ='/2DPhotos/Us020.png';
			
UPDATE _USER SET Access_Level = 'Admin' WHERE User_ID ='Us019';
UPDATE _USER SET Email = 'chao17@gmail.com'	WHERE User_ID ='Us018';
select * from _USER;			

-- DEVICE Table
ALTER TABLE _USER DROP FOREIGN KEY fk_DEVICE;
ALTER TABLE _USER ADD CONSTRAINT fk_DEVICE FOREIGN KEY (User_ID) REFERENCES DEVICE (User_ID) ON DELETE CASCADE;

DELETE FROM DEVICE WHERE Model_No ='Rift S';
UPDATE DEVICE SET Model_No = 'NewModel' WHERE Device_ID = 'D0002';
UPDATE DEVICE SET OS = 'UpdatedOS' WHERE Device_ID = 'D0003';
select * from DEVICE;

-- ERROR_MESSAGE Table		
DELETE FROM ERROR_MESSAGE WHERE User_ID = 'Us002';
UPDATE ERROR_MESSAGE SET Error_Code = 'ER-UPDATED001' WHERE Error_Code = 'ER-BAT011' AND User_ID = 'Us001';
UPDATE ERROR_MESSAGE SET Suggested_Fix = 'Restart' WHERE Error_Code = 'ER-VCMD008' AND User_ID = 'Us001';
select * from ERROR_MESSAGE;	

-- USER_ACHIEVEMENT Table	
DELETE FROM USER_ACHIEVEMENT WHERE User_ID = 'Us002';
UPDATE USER_ACHIEVEMENT SET Achievement_ID = 'Ach002' WHERE User_ID = 'Us019';
UPDATE USER_ACHIEVEMENT SET Obtained_Date = '2023-01-01' WHERE User_ID = 'Us018';
select * from USER_ACHIEVEMENT;	

-- SESSION_  Table
DELETE FROM SESSION_ WHERE Host_ID = 'Us020';
UPDATE SESSION_ SET SESSION__Capacity = 15 WHERE SESSION_ID = 'S019';
UPDATE SESSION_ SET No_of_PARTICIPANT = 3 WHERE SESSION_ID = 'S018';
select * from SESSION_ ;	

-- USER_PREFERENCE_INFO  Table
DELETE FROM USER_PREFERENCE_INFO WHERE User_ID = 'Us020';
UPDATE USER_PREFERENCE_INFO SET Only_AR_Calls = FALSE WHERE User_ID = 'Us019';
UPDATE USER_PREFERENCE_INFO SET Allow_Sound = TRUE WHERE User_ID = 'Us018';
select * from USER_PREFERENCE_INFO ;

-- ACHIEVEMENT_INFO  Table
DELETE FROM ACHIEVEMENT_INFO WHERE Achievement_ID = 'Ach020';
UPDATE ACHIEVEMENT_INFO SET Difficulty = 'Medium' WHERE Achievement_ID = 'Ach019';
UPDATE ACHIEVEMENT_INFO SET Achievers_Count = 5 WHERE Achievement_ID = 'Ach018';
select * from ACHIEVEMENT_INFO;

-- ACHIEVEMENT_REWARD  Table
DELETE FROM ACHIEVEMENT_REWARD WHERE Achievement_ID = 'Ach020';
UPDATE ACHIEVEMENT_REWARD SET Reward = 'Get a Trophy' WHERE Achievement_ID = 'Ach002';
UPDATE ACHIEVEMENT_REWARD SET Reward = 'Get 100 Coins' WHERE Achievement_ID = 'Ach005';
select * from ACHIEVEMENT_REWARD ;

-- SURROUNDING  Table
DELETE FROM SURROUNDING WHERE Surrounding_Id = 'SR06';
UPDATE SURROUNDING SET Weather = 'Sunny' WHERE Surrounding_Id = 'SR05';
UPDATE SURROUNDING SET Time_of_Day = 'Night' WHERE Surrounding_Id = 'SR04';
select * from SURROUNDING ;

-- AVAILABLE_ITEM  Table
DELETE FROM AVAILABLE_ITEM WHERE Item_Id = 'IT120';
UPDATE AVAILABLE_ITEM SET Item_Type = 'VR Headset' WHERE Item_Id = 'IT119';
UPDATE AVAILABLE_ITEM SET Height = 12, Width = 5, Length = 3 WHERE Item_Id = 'IT118';
select * from AVAILABLE_ITEM ;

-- USERMADE_ITEM  Table
DELETE FROM USERMADE_ITEM WHERE User_Id = 'Us007' AND Item_Name = 'Mug';
UPDATE USERMADE_ITEM SET Is_Tangible = TRUE WHERE User_Id = 'Us006' AND Item_Name = 'virtual plant ';
UPDATE USERMADE_ITEM SET Surface_Shine = 'Matte' WHERE User_Id = 'Us005' AND Item_Name = 'virtual car';
select * from USERMADE_ITEM ;

-- USERMADE_ITEM_COLOR  Table
DELETE FROM USERMADE_ITEM_COLOR WHERE user_id = 'Us007' AND Item_Name = 'Mug';
UPDATE USERMADE_ITEM_COLOR SET color = 'Blue' WHERE user_id = 'Us006' AND Item_Name = 'virtual plant ';
UPDATE USERMADE_ITEM_COLOR SET color = 'Red' WHERE user_id = 'Us005' AND Item_Name = 'virtual car';
select * from USERMADE_ITEM_COLOR ;

--  -- -- -- -- -- -- -- -- Simple Queries	--  -- -- -- --  -- -- -- --		
			
-- Select Operation:			
SELECT * FROM _USER where Access_Level = 'normal';			
			
-- Project Operation:			
SELECT User_ID, Email FROM _USER;			
			
-- Cartesian Product Operation:			
SELECT * FROM _USER cross join DEVICE; -- this is the same as SELECT * FROM _USER,DEVICE; but different syntax			
			
-- Creating a User View:			
CREATE VIEW User_Details AS			
SELECT U.User_ID, U.Email, D.Device_Type			
FROM _USER as U, DEVICE as D			
WHERE U.User_ID = D.User_ID;			
			
-- Renaming Operation:			
SELECT User_ID AS UserID, Email AS EmailAddress FROM _USER;			
			
-- Aggregation Function:			
SELECT MAX(Achievers_Count) AS MaxAchievers FROM ACHIEVEMENT_INFO;			
			
-- Use of LIKE Keyword:			
SELECT * FROM _USER WHERE Email LIKE '%gmail.com';			
			
			
--  -- -- -- -- -- -- -- --  Complex Queries --  -- -- -- -- -- -- -- --			
-- -- without user views			
-- Set Union:			
SELECT S.Surrounding_ID as ID, S.Theme as info FROM Surrounding as S			
UNION			
SELECT AvI.Item_ID as ID, AVI.Item_Type as info FROM Available_Item as AvI where AvI.Free_or_Paid = 'Free';			
			
-- Set Intersection:			
SELECT _USER.User_ID FROM _USER			
INNER JOIN USER_PREFERENCE_INFO ON _USER.User_ID = USER_PREFERENCE_INFO.User_ID where USER_PREFERENCE_INFO.DarkMode_LightMode = 'Dark';			
			
-- Set Difference:(Except keyword is not working in here. Instead of that using 'NOT IN'			
SELECT Item_type FROM Available_Item WHERE Item_type NOT IN (SELECT Item_type FROM Available_Item  where Height >10);			
			
			
-- Division:			
SELECT User_ID FROM _USER WHERE NOT EXISTS (			
SELECT * FROM ACHIEVEMENT_INFO WHERE NOT EXISTS (			
SELECT * FROM USER_ACHIEVEMENT  WHERE USER_ACHIEVEMENT.User_ID = _USER.User_ID AND USER_ACHIEVEMENT.Achievement_ID = ACHIEVEMENT_INFO.Achievement_ID AND ACHIEVEMENT_INFO.Awarding_Condition like 'Add%'			
)			
);			
			
			
-- -- with user views			
-- Inner Join:			
CREATE VIEW UserView_InnerJoin AS			
select D.User_ID, D.Device_ID, Er.Occured_Date, Er.Error_Type			
from Device as D JOIN Error_Message as Er			
ON D.User_ID=Er.User_ID			
where (Error_Type != 'Regular Check No issues discovered' AND Error_Type != 'Battery Drain' )			
AND (Er.User_ID = 'Us001' OR Er.User_ID = 'Us002' OR Er.User_ID = 'Us003' OR Er.User_ID = 'Us004' );			
			
select * from UserView_InnerJoin;			
			
			
-- Natural Join:			
CREATE VIEW UserView_NaturalJoin AS			
SELECT *			
FROM USER_ACHIEVEMENT as UA			
NATURAL JOIN ACHIEVEMENT_INFO as AI			
where AI.Difficulty = 'Easy' or AI.Difficulty = 'Medium';			
			
select * from UserView_NaturalJoin;			
			
-- Left Outer Join:			
CREATE VIEW UserView_LeftOuterJoin AS			
SELECT U.User_ID, UA.Achievement_ID, U.Gender			
FROM _USER as U			
LEFT JOIN USER_ACHIEVEMENT as UA ON U.User_ID = UA.User_ID			
where U.Gender = 'Male';			
			
select * from UserView_LeftOuterJoin;			
			
-- Right Outer Join:			
CREATE VIEW UserView_RightOuterJoin AS			
SELECT U.User_ID, D.Device_ID, D.OS			
FROM _USER as U			
RIGHT JOIN DEVICE as D ON U.User_ID = D.User_ID			
where OS like 'Windows%';			
			
SELECT *			
FROM _USER as U			
RIGHT JOIN DEVICE as D ON U.User_ID = D.User_ID			
where OS like 'Windows%';			
			
select * from UserView_RightOuterJoin;			
			
-- Full Outer Join:			
CREATE VIEW UserView_FullOuterJoin AS			
SELECT U.User_ID, UA.Achievement_ID, U.Access_Level			
FROM _USER U			
LEFT JOIN USER_ACHIEVEMENT UA ON U.User_ID = UA.User_ID Where U.Access_Level = 'Normal'			
UNION			
SELECT UA.User_ID, UA.Achievement_ID, U.Access_Level			
FROM USER_ACHIEVEMENT UA			
RIGHT JOIN _USER U ON UA.User_ID = U.User_ID;			
			
select * from UserView_FullOuterJoin;			
			
-- Outer Union:			
CREATE VIEW UserView_OuterUnion AS			
SELECT U.User_ID, U.Email, NULL as Device_Type FROM _USER as U	where _2D_Profile_Photo like '/2DPhotos/Us01%'		
UNION ALL			
SELECT NULL as User_ID, NULL as Email, Device_Type FROM DEVICE as D;			
			
select * from UserView_OuterUnion;			
			
--  -- -- -- -- -- -- -- -- Nested Querys --  -- -- -- -- -- -- -- --			
-- Nested Query with Aggregation			
SELECT User_ID FROM _USER WHERE DOB = (			
SELECT MAX(DOB) FROM _USER			
);			
			
-- Nested Query with IN			
			
			
SELECT * FROM DEVICE WHERE User_ID IN (			
SELECT User_ID FROM _USER WHERE Country like 'A%' or 'G%'			
);			
			
-- Nested Query with EXISTS:			
SELECT * FROM _USER U WHERE EXISTS (			
SELECT * FROM USER_ACHIEVEMENT UA WHERE U.User_ID = UA.User_ID AND Obtained_Date > '2023-01-01'			
);			
