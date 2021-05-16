CREATE SCHEMA IF NOT EXISTS PUBLIC;
CREATE DATABASE development_db WITH OWNER postgres;

COMMENT ON SCHEMA PUBLIC IS 'development schem for dev-hw-3';

ALTER SCHEMA PUBLIC OWNER TO postgres;

CREATE TABLE companies (
	name VARCHAR(50) NOT NULL,
	website VARCHAR(50),
	city VARCHAR(50),
	id SERIAL PRIMARY KEY,
	UNIQUE (name)
);

CREATE TABLE developers (
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	age INT,
	gender VARCHAR(6),
	company_id INT,
	id SERIAL PRIMARY KEY,
	FOREIGN KEY (company_id)
		REFERENCES companies (id),
	CHECK (age>18)
);

CREATE TYPE P_LANGUAGES AS ENUM ('JAVA', 'C#', 'C++', 'JavaScript', 'Pyton');
CREATE TYPE GRADES AS ENUM ('junior', 'middle', 'senior');
CREATE TABLE skills (
	programming_lang P_LANGUAGES NOT NULL,
	grade GRADES NOT NULL,
	id SERIAL PRIMARY KEY
);

CREATE TABLE customers (
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	id SERIAL PRIMARY KEY,
	UNIQUE(phone),
	UNIQUE(email)
);

CREATE TABLE projects (
	name VARCHAR(100) NOT NULL,
	description VARCHAR(250),
	term DATE NOT NULL,
	customer_id INT,
	id SERIAL PRIMARY KEY,
	UNIQUE(name),
	FOREIGN KEY (customer_id)
		REFERENCES customers(id)
);

CREATE TABLE developers_into_projects (
	project_id INT,
	developer_id INT,
	FOREIGN KEY (project_id)
		REFERENCES projects(id),
	FOREIGN KEY (developer_id)
		REFERENCES developers(id)
);

CREATE TABLE developers_skills (
	developer_id INT,
	skills_id INT,
	FOREIGN KEY (developer_id)
		REFERENCES developers(id),
	FOREIGN KEY (skills_id)
		REFERENCES skills(id)
);




