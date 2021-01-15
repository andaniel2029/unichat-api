DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS tutors CASCADE;
DROP TABLE IF EXISTS programs CASCADE;



CREATE TABLE users (
  id VARCHAR(255) PRIMARY KEY NOT NULL,
  email VARCHAR(255) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  program VARCHAR(255),
  is_active boolean DEFAULT true,
  is_tutor boolean DEFAULT false
);

CREATE TABLE courses (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  color_main VARCHAR(7),
  color_gradient VARCHAR(7)
);


CREATE TABLE tutors (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id VARCHAR(255) REFERENCES users(id),
  course_list text[]
);

CREATE TABLE programs (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL
)

