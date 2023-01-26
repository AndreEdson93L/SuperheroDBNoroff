DROP TABLE IF EXISTS assistant;
DROP TABLE IF EXISTS hero_power;
DROP TABLE IF EXISTS superhero;
DROP TABLE IF EXISTS power;


CREATE TABLE superhero (
superhero_id serial PRIMARY KEY,
superhero_name varchar(50) NOT NULL,
superhero_alias varchar(20) NOT NULL,
superhero_origin varchar(20) NOT NULL
);

CREATE TABLE assistant (
assistant_id serial PRIMARY KEY,
assistant_name varchar(50) NOT NULL,
myhero_id int NOT NULL REFERENCES superhero(superhero_id)
);

CREATE TABLE power(
power_id serial PRIMARY KEY,
power_name varchar(50) NOT NULL,
power_description text NOT NULL
);

CREATE TABLE hero_power(
superhero_id int REFERENCES superhero,
power_id int REFERENCES power,
PRIMARY KEY(superhero_id, power_id)
);