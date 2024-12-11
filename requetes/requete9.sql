-- Afficher le détail de la recette n°5 (liste des ingrédients, quantités et prix)

SELECT i.name_ingredient, p.quantity, cast(SUM(Quantity * i.price) AS DECIMAL(10, 2)) AS Total
FROM ingredient i
INNER JOIN possess p ON p.id_ingredient = i.id_ingredient
WHERE p.id_recipe = 5
GROUP BY i.name_ingredient, p.quantity;