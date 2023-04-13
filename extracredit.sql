-- creating timeslots table
CREATE TABLE timeslots (start TIME, end TIME, id PRIMARY KEY);
INSERT INTO timeslots VALUES 
('12:00:00', '13:00:00', 1),
('14:00:00', '15:30:00', 2),
('09:00:00', '11:00:00', 3);

-- creating alternations to rooms table by creating and renaming temp table
CREATE TABLE temprooms (number INTEGER, buildingid REFERENCES buildings(id), seating INTEGER, id INTEGER PRIMARY KEY);
INSERT INTO temprooms (number, buildingid, seating) SELECT * FROM rooms;
DROP TABLE rooms;
ALTER TABLE temprooms RENAME TO rooms;

-- creating schedule table
CREATE TABLE schedule (coursecode, roomid, timeslotid, UNIQUE(roomid, timeslotid));
INSERT INTO schedule VALUES 
('CMS303B', 1, 1),
('INFO201A', 2, 3),
('CSE122B', 4, 3),
('INFO330A', 2, 4);