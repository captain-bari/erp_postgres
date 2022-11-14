CREATE TYPE user_role AS ENUM('ADMIN', 'READ', 'ADD','EDIT');
CREATE TYPE material_type AS ENUM('RAW', 'INTER', 'FIANL');

CREATE TABLE IF NOT EXISTS users (
  user_hash TEXT NOT NULL,
  role user_role,
  name TEXT,
  id TEXT UNIQUE,
  PRIMARY KEY (id)
);

INSERT INTO users (id, name, role, user_hash) VALUES ('admin', 'Barinder', 'ADMIN', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');

CREATE TABLE materials(
    id SERIAL,
    e_type material_type,
    name TEXT,
    properties TEXT [],
    linked_processes TEXT [],
    linked_purchase TEXT [],
    linked_sell TEXT [],
    PRIMARY KEY (id)
);