CREATE TABLE users (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(250) NOT NULL,
    "email" VARCHAR(100) NOT NULL
);

CREATE TABLE addresses (
    "id" SERIAL PRIMARY KEY,
    "street" VARCHAR(250) NOT NULL,
    "number" INTEGER,
    "userId" INTEGER NOT NULL,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE CASCADE
);

INSERT INTO addresses ("street", "number", "userId") VALUES ('Rua Exemplo', 123, 1), ('Rua Exemplo 2', 123, 1);