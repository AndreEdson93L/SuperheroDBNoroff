/*
ALTER TABLE child_table 
ADD CONSTRAINT constraint_name 
FOREIGN KEY (fk_columns) 
REFERENCES parent_table (parent_key_columns);

--First way to do it
ALTER TABLE assistant
ADD myhero_id int;

ALTER TABLE assistant
ADD CONSTRAINT fk_superhero
FOREIGN KEY (my_hero_id)
REFERENCES superhero (superhero_id);

--Second way to do it
ALTER TABLE assistant
ADD myhero_id int,
ADD FOREIGN KEY (myhero_id) REFERENCES superhero(superhero_id);
*/

--First way to do it

ALTER TABLE assistant 
ADD COLUMN myhero_id INT NOT NULL;

ALTER TABLE assistant 
ADD CONSTRAINT fk_hero_assistant 
FOREIGN KEY (myhero_id) 
REFERENCES superhero (superhero_id);