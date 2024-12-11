-- Afficher le prix total de la recette n°5

SELECT name_recipe, cast(SUM(Quantity * i.price) AS DECIMAL(10, 2)) AS prixTotal
FROM recipe r
INNER JOIN possess p ON r.id_recipe = p.id_recipe
INNER JOIN ingredient i ON p.id_ingredient = i.id_ingredient
WHERE r.id_recipe = 5;