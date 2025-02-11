PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "workshop" (
"Workshop_ID" int,
"Date" text,
"Venue" text,
"Name" text,
PRIMARY KEY ("Workshop_ID")
);
INSERT INTO workshop VALUES(1,'August 18, 2007','London UK','ABC 2007');
INSERT INTO workshop VALUES(2,'August 21, 2007','London UK','Conference 2007');
INSERT INTO workshop VALUES(3,'August 25, 2007','New Jersey USA','Workshop 2007');
INSERT INTO workshop VALUES(4,'October 8, 2007','New York USA','2007 qualification');
INSERT INTO workshop VALUES(5,'January 14, 2008','New York USA','2008 qualification');
INSERT INTO workshop VALUES(6,'July 5, 2011','Istanbul Turkey','Anual Workshop 2011');
CREATE TABLE IF NOT EXISTS "submission" (
"Submission_ID" int,
"Scores" real,
"Author" text,
"College" text,
PRIMARY KEY ("Submission_ID")
);
INSERT INTO submission VALUES(1,72.0,'Steve Niehaus','Notre Dame');
INSERT INTO submission VALUES(2,79.0,'Sammy Green','Florida');
INSERT INTO submission VALUES(3,78.0,'Sherman Smith','Miami (OH)');
INSERT INTO submission VALUES(4,79.0,'Steve Raible','Georgia Tech');
INSERT INTO submission VALUES(5,82.0,'Jeff Lloyd','West Texas State');
INSERT INTO submission VALUES(6,89.0,'Rick Engles','Tulsa');
INSERT INTO submission VALUES(7,92.0,'Don Bitterlich','Temple');
INSERT INTO submission VALUES(8,93.0,'Steve Myer','New Mexico');
INSERT INTO submission VALUES(9,82.0,'Randy Johnson','Georgia');
INSERT INTO submission VALUES(10,83.0,'Andy Bolton','Fisk');
CREATE TABLE IF NOT EXISTS "Acceptance" (
"Submission_ID" int,
"Workshop_ID" int,
"Result" text,
PRIMARY KEY ("Submission_ID","Workshop_ID"),
FOREIGN KEY ("Submission_ID") REFERENCES `submission`("Submission_ID"),
FOREIGN KEY ("Workshop_ID") REFERENCES `workshop`("Workshop_ID")
);
INSERT INTO Acceptance VALUES(2,5,'Accepted');
INSERT INTO Acceptance VALUES(2,3,'Rejected');
INSERT INTO Acceptance VALUES(3,2,'Rejected');
INSERT INTO Acceptance VALUES(4,6,'Rejected');
INSERT INTO Acceptance VALUES(5,6,'Rejected');
INSERT INTO Acceptance VALUES(1,1,'Accepted');
COMMIT;
