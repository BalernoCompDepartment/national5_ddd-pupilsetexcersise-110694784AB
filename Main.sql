/* do not change the following three lines! */
.header on
.mode column
.read PupilSet.sql
/* do not change the above three lines! */

/* Task One: Select all male pupils. This should only display the following fields: Forename, Surname, Gender and FormClass. */
SELECT Forename, Surname, Gender, FormClass FROM PupilSet WHERE Gender = "male"

/* Task Two: Select all pupils in form class 2N. This should only display the following fields: Forename, Surname and FormClass. Sort by Forename then Surname ascending order. */
SELECT Forename, Surname, FormClass FROM PupilSet WHERE FormClass = "2N" ORDER BY Forename, Surname ASC

/* Task Three: Select all F pupils in form class 3N. Forename, Surname, Gender and FormClass. */
SELECT Forename, Surname, Gender, FormClass FROM PupilSet WHERE FormClass = "3N" /* F pupils? What table would that be under? And how would I have 2 WHERE statements, would I just do it with a comma? Sorry I've forgotten how.

/* Task Four: Select all pupils doing subject Astronomy or Computing Science. This should display the fields: Forename, Surname and Subject. */
SELECT Pupilset.Forename, Pupilset.Surname, ClassSet.Subject FROM PupilSet, ClassSet WHERE  ClassSet.Subject = Astronomy OR Computing Science

/* Task Five: Select all pupils in set PHY67. This should only display the following fields: Forename, Surname and Set. */
SELECT Pupilset.Forename, Pupilset.Surname, ClassSet.SetCode FROM PupilSet, ClassSet WHERE ClassSet.SetCode = "PHY67"

/* Task Six: Select all pupils who are over 14 years in age who are taking Chemistry. This should only display the following fields: Forename, Surname, Age and Subject */
SELECT PupilSet.Forename, PupilSet.Surname, PupilSet.Age, ClassSet.Subject FROM PupilSet, ClassSet, WHERE PupilSet.Age > 14 AND ClassSet.Subject = "Chemistry"

/* Task Seven : A new male pupil (code JOH003) has joined the school going into class 4N. He is called Michael Johnston, is 15 years old and his DOB is 23/06/2002. His address details are 23 Bell Meadow, Aberdeen, AB10 1ZP and phone number is 01224 741693.*/
INSERT INTO PupilSet ("JOH003", "Michael", "Johnston", "Male", "4N", "23 Bell Meadow", "Aberdeen", "AB10 1ZP", 01224741693, 23/06/2002, 15)
VALUES (1,2,3,4,5,6,7,8,9,10,11)

/* Task Eight: After speaking to Mr Warnock, head of Biology, Michael Johnston has joined Miss Black’s Biology set BIO47 in room B1. */
UPDATE PupilSet SET FormClass = "B1" WHERE PupilID = "JOH003"

/* Task Nine: Katy Budge’s (ID BUD002) gender is incorrect. Change this to female */
UPDATE PupilSet SET Gender = "female" WHERE PupilID = "BUD002"

/* Task Ten: SUM004’s DOB is incorrect. Change this to 17/08/2003 and his age to 14. */
UPDATE PupilSet SET DOB = "17/08/2003", Age = 14 WHERE PupilID = "SUM004"

/* Task Eleven: Ross Morrison has dropped Astronomy with SetID 58. Delete this set. */
DELETE SetID WHERE SetID = 58, PupilID = "MOR002"

/* Hopefully thats right? If there's anything wrong feel free to put it here and i'll try fix it :) ty
