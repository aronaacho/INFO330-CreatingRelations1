-- buildings table
CREATE TABLE buildings (name VARCHAR(80) NOT NULL, shortname VARCHAR(10) UNIQUE, id INTEGER PRIMARY KEY);

INSERT INTO buildings (name, shortname) VALUES 
('Mary Gates Hall', 'MGH'),
('Kane Hall', 'KNE'),
('Bagley Hall', 'BAG'),
('Denny Hall', 'DEN');

-- rooms table
CREATE TABLE rooms (number INTEGER, buildingid REFERENCES buildings(id), seating INTEGER);

INSERT INTO rooms VALUES 
(400, (SELECT id FROM buildings WHERE name='Mary Gates Hall'), 40),
(202, (SELECT id FROM buildings WHERE name='Bagley Hall'), 120),
(354, (SELECT id FROM buildings WHERE name='Kane Hall'), 350),
(199, (SELECT id FROM buildings WHERE name='Denny Hall'), 35);
