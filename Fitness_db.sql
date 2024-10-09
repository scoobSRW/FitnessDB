Create DATABASE Fitness_db;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age) VALUES (1, 'Jane Doe', 30);
INSERT INTO Members (id, name, age) VALUES (2, 'John Smith', 25);
INSERT INTO Members (id, name, age) VALUES (3, 'Scotty White', 20);
INSERT INTO Members (id, name, age) VALUES (4, 'Daniel Marks', 23);
INSERT INTO Members (id, name, age) VALUES (5, 'Ronaldo Dotti', 41);
INSERT INTO Members (id, name, age) VALUES (6, 'Tony Soprano', 58);

SELECT * FROM Members;

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES (1, 1, '2024-10-08', '10:00 AM', 'Yoga');

SELECT * FROM WorkoutSessions;

UPDATE WorkoutSessions
SET session_time = '10:00 PM'
WHERE session_id = 1;

DELETE FROM Members WHERE id = 6;