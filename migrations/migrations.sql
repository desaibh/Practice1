-- These migrations are to be performed manually using
 -- the psql console

DROP DATABASE IF EXISTS checkin_app;
CREATE DATABASE checkin_app;

\c checkin_app;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR NOT NULL,
  password VARCHAR NOT NULL
);

CREATE TABLE checkins (
  id SERIAL PRIMARY KEY,
  note VARCHAR NOT NULL,
  latitude VARCHAR NOT NULL,
  longitude VARCHAR NOT NULL,
  streetaddress VARCHAR(555) NOT NULL,
  user_id INTEGER REFERENCES users (id)
);
