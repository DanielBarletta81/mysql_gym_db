



CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL DEFAULT 0,
    name VARCHAR(255) NOT NULL,
    age INT);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY NOT NULL,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members ( id, name, age)
VALUES
(1, 'Jane Doe', 37),
(2, 'Barry Sanders', 27),
(3, 'Jeff Hostetler', 25),
(4, 'Jackie Joyner', 21);

INSERT INTO WorkoutSessions ( session_id, member_id, session_date, session_time, activity)
VALUES
(1, 1,  "2024-08-20" , "9:30a.m.", "yoga");

SELECT * FROM Members;

SELECT * FROM WorkoutSessions;

UPDATE WorkoutSessions
SET session_time = "5:00p.m."
WHERE member_id = 1;

SELECT * FROM WorkoutSessions
WHERE session_id = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE Members
SET name = "John Smith"
WHERE id = 3;
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Members WHERE name = "John Smith";
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Members

