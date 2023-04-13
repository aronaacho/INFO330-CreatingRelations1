-- creating timeslots table
CREATE TABLE timeslots (start TIME, end TIME, id PRIMARY KEY);

-- creating alternations to rooms table by creating and renaming temp table
CREATE TABLE temprooms (number INTEGER, buildingid REFERENCES buildings(id), seating INTEGER, id INTEGER PRIMARY KEY);
INSERT INTO temprooms (number, buildingid, seating) SELECT * FROM rooms;
DROP TABLE rooms;
ALTER TABLE temprooms RENAME TO rooms;

-- creating schedule table
CREATE TABLE schedule (coursecode, roomid, timeslotid, UNIQUE(roomid, timeslotid));