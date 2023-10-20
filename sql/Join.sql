/*
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
/* id, name, email, id, street, number, userId */
*/

/* JOIN */
SELECT * FROM users
/* Todos os usuário com seus respectivos endereços */
JOIN addresses ON users."id" = addresses."userId";

SELECT users."id" AS "userId", 
users."name" AS "userName",
users."email" AS "userEmail",
addresses."id" AS "addressId",
addresses."street",
addresses."number"
FROM users
JOIN addresses ON users."id" = addresses."userId";

/*
CREATE TABLE products (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(150) NOT NULL,
    "price" INTEGER NOT NULL
);

CREATE TABLE categories (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(150) NOT NULL 
);

CREATE TABLE products_categories (
    "id" SERIAL PRIMARY KEY,
    "productId" INTEGER NOT NULL,
    "categoryId" INTEGER NOT NULL,
    FOREIGN KEY ("productId") REFERENCES products("id") ON DELETE CASCADE,
    FOREIGN KEY ("categoryId") REFERENCES categories("id") ON DELETE CASCADE
);
*/

SELECT products."id" AS "productId",
products."name" AS "productName",
products."price" AS "productPrice",
categories."id" AS "categoryId",
categories."name" AS "categoryName"
FROM products 
JOIN products_categories ON products."id" = products_categories."productId"
JOIN categories ON categories."id" = products_categories."categoryId" WHERE products."id" = 2;