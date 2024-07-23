/* CREATING TABLE 1 */
CREATE TABLE famous(id INTEGER PRIMARY KEY, name TEXT, birth_year INTEGER, marital_status VARCHAR(5) CHECK (marital_status IN("M","S")));

/*CREATING TABLE 2 */
CREATE TABLE movie_detail(movie_id INTEGER PRIMARY KEY auto_increment,number_of_movies_acted VARCHAR(10), most_popular_movie TEXT); 

/* QUERYING TABLES */
SELECT * FROM famous;
select * from movie_detail;

/* INSERTING VALUES*/
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (1,"Chris Rock",1965,"M");
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (2,"Tyler James",1992,"S");
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (3,"Danai Gurira",1978,"S");
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (4,"Chadwick Boseman",1976, "M");
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (5,"Samuel Jackson",1948,"M");
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (6,"Viola Davis",1965,"M");
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (7,"Will Smith",1968,"M");
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (8,"Martin Lawrence",1965,"M");
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (9,"Eddy Murphy",1961,"M");
INSERT INTO famous (id, name,birth_year,marital_status) VALUES (10,"Terry Crews",1968,"M");

CREATE TABLE movie_detail(movie_id INTEGER PRIMARY KEY auto_increment,number_of_movies_acted VARCHAR(10), most_popular_movie TEXT);
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 56, "Madagascar");
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 13, "Let it Shine");
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 15, "Black Panther");
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 16, "Black Panther");
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 173, "Hitmans Bodyguard");
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 50, "How to get away with murder");
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 37, "Pursuit of Happiness");
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 29, "Blue Streak");
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 57, "Coming to America");
INSERT INTO movie_detail(movie_id, number_of_movies_acted,most_popular_movie) VALUES (movie_id, 45, "White Chicks");

/* JOINING TABLES TOGETHER */
SELECT *
FROM famous
JOIN movie_detail
ON famous.id = movie_detail.movie_id;

/* NAME AND MOST POPULAR MOVIE AND NUMBER OF MOVIES */
SELECT famous.name,movie_detail.number_of_movies_acted,movie_detail.most_popular_movie
FROM famous
JOIN movie_detail
ON famous.id = movie_detail.movie_id;

/* PERSON WITH THE HIGHEST NUMBER AND LOWEST OF MOVIES */
SELECT max(number_of_movies_acted) FROM movie_detail;  

SELECT min(number_of_movies_acted) FROM movie_detail;

select * from movie_detail;

SELECT famous.name, COUNT(movie_detail.number_of_movies_acted)
FROM famous
JOIN movie_detail
ON famous.id = movie_detail.movie_id
GROUP BY famous.name;




