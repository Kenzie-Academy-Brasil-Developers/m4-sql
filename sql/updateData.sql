UPDATE products SET price = 320000 WHERE id = 1;

/* Atualização de múltiplas colunas (Sintaxe alternativa) */
UPDATE products SET ("name", "price") = ROW ('Computador X', 300000) WHERE id = 1;

/* Também é possível utilizar returning em queries de atualização */
UPDATE products SET price = 360000 WHERE id = 2 RETURNING *;