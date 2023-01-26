DROP TABLE IF EXISTS hero_power;

--Create Hero Table
CREATE TABLE hero_power();

--Adding superhero id column
ALTER TABLE hero_power 
ADD COLUMN superhero_id INT NOT NULL;

--Adding power id column
ALTER TABLE hero_power 
ADD COLUMN power_id INT NOT NULL;

--Setting fk superhero id
ALTER TABLE hero_power 
ADD CONSTRAINT fk_superhero_id
FOREIGN KEY (superhero_id) REFERENCES superhero;

--Setting fk power id
ALTER TABLE hero_power 
ADD CONSTRAINT fk_power_id
FOREIGN KEY (power_id) REFERENCES power;

--Adding composite primary key
ALTER TABLE hero_power ADD PRIMARY KEY (superhero_id, power_id);