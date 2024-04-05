DROP DATABASE IF EXISTS movies_db;
CREATE DATABASE movies_db;

\c movies_db;

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100)
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    movie_id INT,
    review TEXT,
    FOREIGN KEY (movie_id)
    REFERENCES movies(id)
)