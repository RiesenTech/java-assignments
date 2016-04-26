DROP TABLE IF EXISTS movies.ratings;
DROP TABLE IF EXISTS movies.users;
DROP TABLE IF EXISTS movies.movies;

CREATE TABLE IF NOT EXISTS movies.users (
    userID INT PRIMARY KEY,
    age INT,
    gender TEXT,
    occupation TEXT,
    zipcode TEXT 
    );
CREATE TABLE IF NOT EXISTS movies.movies (
    itemID INT PRIMARY KEY NOT NULL,
    title TEXT,
    releaseDate DATE
    );
CREATE TABLE IF NOT EXISTS movies.ratings (
    userID INT ,
    itemID INT ,
    rating INT,
    timestamp INT,
    FOREIGN KEY (userID) REFERENCES users(userID),
    FOREIGN KEY (itemID) REFERENCES movies(itemID)
    );
