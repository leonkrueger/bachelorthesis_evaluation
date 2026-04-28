CREATE TABLE `Buildings`
(`BuildingCode` VARCHAR(1023),
`BuildingName` VARCHAR(1023),
`NumberOfFloors` BIGINT,
`ElevatorAccess` BIGINT,
`SiteParkingAvailable` BIGINT);
INSERT INTO `Buildings` VALUES('AS','Arts and Sciences',3,1,1);
INSERT INTO `Buildings` VALUES('GYM','PE and Wellness',1,0,1);
INSERT INTO `Buildings` VALUES('TB','Technology Building',2,1,1);
INSERT INTO `Buildings` VALUES('LB','Library',2,1,1);
INSERT INTO `Buildings` VALUES('CC','College Center',3,1,0);
INSERT INTO `Buildings` VALUES('IB','Instructional Building',3,1,1);
CREATE TABLE `Categories`
(`CategoryID` VARCHAR(1023),
`CategoryDescription` VARCHAR(1023),
`DepartmentID` BIGINT);
INSERT INTO `Categories` VALUES('GEG','Geography',4);
INSERT INTO `Categories` VALUES('ACC','Accounting',1);
INSERT INTO `Categories` VALUES('CHE','Chemistry',2);
INSERT INTO `Categories` VALUES('CIS','Computer Information Systems',5);
INSERT INTO `Categories` VALUES('JRN','Journalism',1);
INSERT INTO `Categories` VALUES('POL','Political Science',4);
CREATE TABLE `Class_Rooms`
(`ClassRoomID` BIGINT,
`BuildingCode` VARCHAR(1023),
`PhoneAvailable` BIGINT);
INSERT INTO `Class_Rooms` VALUES(3309,'IB',0);
INSERT INTO `Class_Rooms` VALUES(3317,'IB',1);
INSERT INTO `Class_Rooms` VALUES(3415,'IB',1);
INSERT INTO `Class_Rooms` VALUES(3355,'CC',0);
INSERT INTO `Class_Rooms` VALUES(3455,'CC',1);
INSERT INTO `Class_Rooms` VALUES(2423,'IB',0);
CREATE TABLE `Classes`
(`ClassID` BIGINT,
`SubjectID` BIGINT,
`ClassRoomID` BIGINT,
`Credits` BIGINT,
`StartDate` DATE,
`StartTime` TIME,
`Duration` BIGINT,
`MondaySchedule` BIGINT,
`TuesdaySchedule` BIGINT,
`WednesdaySchedule` BIGINT,
`ThursdaySchedule` BIGINT,
`FridaySchedule` BIGINT,
`SaturdaySchedule` BIGINT);
INSERT INTO `Classes` VALUES(3090,44,3346,5,'2017-09-11','13:30:00',140,1,0,1,0,1,0);
INSERT INTO `Classes` VALUES(6065,40,3345,5,'2018-01-15','08:00:00',140,1,0,1,0,0,0);
INSERT INTO `Classes` VALUES(6600,41,3420,5,'2018-01-15','13:00:00',140,1,0,1,0,0,0);
INSERT INTO `Classes` VALUES(6070,42,3346,5,'2018-01-15','10:30:00',140,1,0,0,0,1,0);
INSERT INTO `Classes` VALUES(6030,30,3352,5,'2018-01-15','09:00:00',140,1,0,0,0,1,0);
INSERT INTO `Classes` VALUES(2647,49,3353,3,'2017-09-12','18:00:00',50,0,1,0,1,0,1);
CREATE TABLE `Departments`
(`DepartmentID` BIGINT,
`DeptName` VARCHAR(1023),
`DeptChair` BIGINT);
INSERT INTO `Departments` VALUES(5,'Information Technology',98007);
INSERT INTO `Departments` VALUES(3,'Humanities',98005);
INSERT INTO `Departments` VALUES(1,'Business Administration',98012);
INSERT INTO `Departments` VALUES(4,'Social Sciences',98059);
INSERT INTO `Departments` VALUES(2,'Sciences',98010);
CREATE TABLE `Faculty`
(`StaffID` BIGINT,
`Title` VARCHAR(1023),
`Status` VARCHAR(1023),
`Tenured` BIGINT);
INSERT INTO `Faculty` VALUES(98014,'Associate Professor','Full Time',1);
INSERT INTO `Faculty` VALUES(98062,'Associate Professor','Full Time',0);
INSERT INTO `Faculty` VALUES(98045,'Professor','Full Time',1);
INSERT INTO `Faculty` VALUES(98005,'Professor','Full Time',1);
INSERT INTO `Faculty` VALUES(98020,'Instructor','Full Time',1);
INSERT INTO `Faculty` VALUES(98055,'Professor','Full Time',1);
CREATE TABLE `Faculty_Categories`
(`StaffID` BIGINT,
`CategoryID` VARCHAR(1023));
INSERT INTO `Faculty_Categories` VALUES(98014,'ENG');
INSERT INTO `Faculty_Categories` VALUES(98053,'CHE');
INSERT INTO `Faculty_Categories` VALUES(98025,'BUS');
INSERT INTO `Faculty_Categories` VALUES(98059,'HIS');
INSERT INTO `Faculty_Categories` VALUES(98020,'PHY');
INSERT INTO `Faculty_Categories` VALUES(98030,'ART');
CREATE TABLE `Faculty_Classes`
(`ClassID` BIGINT,
`StaffID` BIGINT);
INSERT INTO `Faculty_Classes` VALUES(2245,98063);
INSERT INTO `Faculty_Classes` VALUES(2451,98040);
INSERT INTO `Faculty_Classes` VALUES(4562,98036);
INSERT INTO `Faculty_Classes` VALUES(1502,98036);
INSERT INTO `Faculty_Classes` VALUES(4800,98045);
INSERT INTO `Faculty_Classes` VALUES(5500,98012);
CREATE TABLE `Faculty_Subjects`
(`StaffID` BIGINT,
`SubjectID` BIGINT,
`ProficiencyRating` DOUBLE);
INSERT INTO `Faculty_Subjects` VALUES(98030,48,9.0);
INSERT INTO `Faculty_Subjects` VALUES(98011,49,10.0);
INSERT INTO `Faculty_Subjects` VALUES(98005,38,8.0);
INSERT INTO `Faculty_Subjects` VALUES(98062,4,8.0);
INSERT INTO `Faculty_Subjects` VALUES(98014,42,9.0);
INSERT INTO `Faculty_Subjects` VALUES(98013,27,10.0);
CREATE TABLE `Majors`
(`MajorID` BIGINT,
`Major` VARCHAR(1023));
INSERT INTO `Majors` VALUES(4,'Information Sciences');
INSERT INTO `Majors` VALUES(6,'Art');
INSERT INTO `Majors` VALUES(3,'Music');
INSERT INTO `Majors` VALUES(7,'Mathematics');
INSERT INTO `Majors` VALUES(5,'Accounting');
INSERT INTO `Majors` VALUES(2,'English');
CREATE TABLE `Staff`
(`StaffID` BIGINT,
`StfFirstName` VARCHAR(1023),
`StfLastname` VARCHAR(1023),
`StfStreetAddress` VARCHAR(1023),
`StfCity` VARCHAR(1023),
`StfState` VARCHAR(1023),
`StfZipCode` VARCHAR(1023),
`StfAreaCode` VARCHAR(1023),
`StfPhoneNumber` VARCHAR(1023),
`Salary` DOUBLE,
`DateHired` DATE,
`Position` VARCHAR(1023));
INSERT INTO `Staff` VALUES(98025,'Carol','Viescas','722 Moss Bay Blvd.','Kirkland','WA','98033','425','555-2576',50000.0,'1984-04-12','Faculty');
INSERT INTO `Staff` VALUES(98028,'Alaina','Hallmark','Route 2, Box 203B','Marysville','WA','98270','425','555-2631',57000.0,'1984-01-17','Faculty');
INSERT INTO `Staff` VALUES(98052,'Katherine','Ehrlich','777 Fenexet Blvd','Redmond','WA','98052','425','555-0399',45000.0,'1985-03-08','Faculty');
INSERT INTO `Staff` VALUES(98014,'Peter','Brehm','722 Moss Bay Blvd.','Kirkland','WA','98033','425','555-2501',60000.0,'1986-07-16','Faculty');
INSERT INTO `Staff` VALUES(98064,'Luke','Patterson','877 145th Ave SE','Portland','OR','97208','503','555-2316',56000.0,'1989-08-20','Faculty');
INSERT INTO `Staff` VALUES(98042,'David','Smith','311 20th Ave. N.E.','Fremont','CA','94538','510','555-2646',52000.0,'1991-12-17','Faculty');
CREATE TABLE `Student_Class_Status`
(`ClassStatus` BIGINT,
`ClassStatusDescription` VARCHAR(1023));
INSERT INTO `Student_Class_Status` VALUES(3,'Withdrew');
INSERT INTO `Student_Class_Status` VALUES(1,'Enrolled');
INSERT INTO `Student_Class_Status` VALUES(2,'Completed');
CREATE TABLE `Student_Schedules`
(`StudentID` BIGINT,
`ClassID` BIGINT,
`ClassStatus` BIGINT,
`Grade` DOUBLE);
INSERT INTO `Student_Schedules` VALUES(1013,1030,2,77.06999999999999317);
INSERT INTO `Student_Schedules` VALUES(1004,1162,2,91.43999999999999773);
INSERT INTO `Student_Schedules` VALUES(1014,2907,2,72.0);
INSERT INTO `Student_Schedules` VALUES(1016,2410,2,98.0100000000000051);
INSERT INTO `Student_Schedules` VALUES(1005,1000,2,82.18999999999999773);
INSERT INTO `Student_Schedules` VALUES(1003,1156,2,71.09000000000000341);
CREATE TABLE `Students`
(`StudentID` BIGINT,
`StudFirstName` VARCHAR(1023),
`StudLastName` VARCHAR(1023),
`StudStreetAddress` VARCHAR(1023),
`StudCity` VARCHAR(1023),
`StudState` VARCHAR(1023),
`StudZipCode` VARCHAR(1023),
`StudAreaCode` VARCHAR(1023),
`StudPhoneNumber` VARCHAR(1023),
`StudGPA` DOUBLE,
`StudMajor` BIGINT);
INSERT INTO `Students` VALUES(1012,'Sarah','Thompson','2222 Springer Road','Lubbock','TX','79402','806','555-2626',89.5,5);
INSERT INTO `Students` VALUES(1005,'Doris','Hartwig','4726 - 11th Ave. N.E.','Seattle','WA','98105','206','555-2671',72.22499999999999431,5);
INSERT INTO `Students` VALUES(1004,'Janice','Galvin','4110 Old Redmond Rd.','Redmond','WA','98052','425','555-2691',81.0,4);
INSERT INTO `Students` VALUES(1015,'Brannon','Jones','777 Fenexet Blvd','Long Beach','CA','90809','562','555-0399',86.0,2);
INSERT INTO `Students` VALUES(1007,'Elizabeth','Hallmark','Route 2, Box 203B','Marysville','WA','98271','253','555-2521',87.65000000000000569,7);
INSERT INTO `Students` VALUES(1001,'Kerry','Patterson','9877 Hacienda Drive','San Antonio','TX','78284','210','555-2706',74.46500000000000341,1);
CREATE TABLE `Subjects`
(`SubjectID` BIGINT,
`CategoryID` VARCHAR(1023),
`SubjectCode` VARCHAR(1023),
`SubjectName` VARCHAR(1023),
`SubjectPreReq` VARCHAR(1023),
`SubjectDescription` VARCHAR(1023));
INSERT INTO `Subjects` VALUES(16,'ART','ART 251','Art History',NULL,'Surveys major forms of visual expression from the Paleolithic, Egyptian, Mesopotamian, Greek, Roman, and Early Christian periods. Includes painting, sculpture, architecture, lectures, slides, and readings.');
INSERT INTO `Subjects` VALUES(2,'ACC','ACC 220','Financial Accounting Fundamentals II','ACC 210','Applications of basic accounting concepts, principles and procedures to more complex business situations and to different forms of enterprise ownership. Includes computerized element. Prereq: ACC 210 or instructor permission.');
INSERT INTO `Subjects` VALUES('Students',1019);
INSERT INTO `Subjects` VALUES(43,'HIS','HIS 111','U.S. History to 1877',NULL,'American history from the colonial period through Reconstruction. Emphasis on the American Revolution, the National Period, slavery, territorial expansion, the Civil War and Reconstruction.');
INSERT INTO `Subjects` VALUES('Staff',98064);
INSERT INTO `Subjects` VALUES(54,'POL','POL 101','Introduction to Political Science',NULL,'Introduction to theory, organization, politics and administration of government. Includes political theory, comparative systems, political socialization, public administration, political parties and elections, and international relations.');
