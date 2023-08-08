-- 1. Add 3 new artists to the artist table (use the \d command to look at the schema and find which fields you need to specify!)
INSERT INTO artist(
    name
)
VALUES
('Eminem'),
('Ed Sheeran'),
('Tom Cruise');

-- 2. Select 10 artists in reverse alphabetical order.
SELECT name FROM artist
ORDER BY name DESC
LIMIT 10;

-- 3. Select 5 artists in alphabetical order.
SELECT name FROM artist
ORDER BY name ASC
LIMIT 5;

-- 4. Select all artists that start with the word 'Black'.
SELECT name FROM artist WHERE name LIKE 'Black%';

-- 5. Select all artists that contain the word 'Black'.
SELECT name FROM artist WHERE name LIKE '%Black%';