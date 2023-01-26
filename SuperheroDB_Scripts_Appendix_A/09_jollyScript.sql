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


--Script superhero
INSERT INTO superhero(superhero_name, superhero_alias, superhero_origin) VALUES ('Batman','The Dark Knight','Gotham City');
INSERT INTO superhero(superhero_name, superhero_alias, superhero_origin) VALUES ('Spiderman','Spidey','New York');
INSERT INTO superhero(superhero_name, superhero_alias, superhero_origin) VALUES ('Hulk','Green Monster','Dayton, Ohio');

--Script assistant
INSERT INTO assistant (assistant_name, myhero_id) VALUES ('Catwoman', 1);
INSERT INTO assistant (assistant_name, myhero_id) VALUES ('Mary Jane', 2);
INSERT INTO assistant (assistant_name, myhero_id) VALUES ('Betty Ross', 3);

--Script powers
INSERT INTO power (power_name, power_description) VALUES ('Money','It has a lot of resources to build his equipment.');
INSERT INTO power (power_name, power_description) VALUES ('Training','It trained in a Temple, where he learned how to fight in the dark.');
INSERT INTO power (power_name, power_description) VALUES ('Spider Instinct','It developed this power after being bitten by a spider.');
INSERT INTO power (power_name, power_description) VALUES ('Force','When he transforms he became powerful, green and angry. It has also a super natural force.');
INSERT INTO power (power_name, power_description) VALUES ('Combat Skill','The hero that has this skill is gifted in fighting.');

--Script assigning powers
--Heroes
--1 Batman
--2 Spiderman´
--3 Hulk

--Powers
--1 Money
--2 Training
--3 Spider Instinct
--4 Force
--5 Combat Skill

--Shared power
INSERT INTO hero_power (superhero_id, power_id) VALUES (1,5);
INSERT INTO hero_power (superhero_id, power_id) VALUES (2,5);
INSERT INTO hero_power (superhero_id, power_id) VALUES (3,5);

--Batman
INSERT INTO hero_power (superhero_id, power_id) VALUES (1,1);
INSERT INTO hero_power (superhero_id, power_id) VALUES (1,2);

--Spiderman
INSERT INTO hero_power (superhero_id, power_id) VALUES (2,3);

--Hulk
INSERT INTO hero_power (superhero_id, power_id) VALUES (3,4);

--Script Update Superhero
UPDATE superhero
SET superhero_name = 'Bruce Wayne'
WHERE superhero_id = 1;

--Script Delete Assistant
DELETE FROM assistant WHERE assistant_name = 'Mary Jane';