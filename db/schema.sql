DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  cp INT NOT NULL,
  poke_type VARCHAR,
  trainer_id INT,
  img_url VARCHAR
);

CREATE TABLE trainers(
  id SERIAl PRIMARY KEY,
  name VARCHAR NOT NULL,
  team_id INT,
  img_url VARCHAR
);

CREATE TABLE teams(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL
);
