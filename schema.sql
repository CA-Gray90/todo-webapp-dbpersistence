CREATE TABLE lists (
    id SERIAL PRIMARY KEY,
    title text NOT NULL UNIQUE
);

CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    complete boolean NOT NULL DEFAULT false,
    list_id integer NOT NULL REFERENCES lists(id) ON DELETE CASCADE
);