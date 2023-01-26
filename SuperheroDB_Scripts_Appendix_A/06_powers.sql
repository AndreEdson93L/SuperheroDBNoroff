INSERT INTO power (power_name, power_description) VALUES ('Money','It has a lot of resources to build his equipment.');
INSERT INTO power (power_name, power_description) VALUES ('Training','It trained in a Temple, where he learned how to fight in the dark.');
INSERT INTO power (power_name, power_description) VALUES ('Spider Instinct','It developed this power after being bitten by a spider.');
INSERT INTO power (power_name, power_description) VALUES ('Force','When he transforms he became powerful, green and angry. It has also a super natural force.');
INSERT INTO power (power_name, power_description) VALUES ('Combat Skill','The hero that has this skill is gifted in fighting.');

/*Script assigning powers
//Heroes
//1 Batman
//2 Spiderman´
//3 Hulk

//Powers
//1 Money
//2 Training
//3 Spider Instinct
//4 Force
//5 Combat Skill
*/

--Shared_power
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