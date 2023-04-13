CREATE TABLE students (id INTEGER PRIMARY KEY, firstname VARCHAR(40), lastname VARCHAR(80), age NUMERIC);

-- inserting spec data
INSERT INTO students VALUES 
(1, 'Fred', 'Flintstone', 35),
(2, 'Wilma', 'Flintstone', 29),
(3, 'Barney', 'Rubble', 33),
(4, 'Betty', 'Rubble', 29),
(5, 'Pebbles', 'Flintstone', 1),
(6, 'Bam-Bam', 'Rubble', 1);

-- inserting additional data
INSERT INTO students VALUES 
(7, 'Herman', 'Blume', 48),
(8, 'Royal', 'Tenenbaum', 40),
(9, 'Richie', 'Tenenbaum', 37),
(10, 'Margot', 'Tenenbaum', 33),
(11, 'Eli', 'Cash', 60);