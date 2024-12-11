-- Trouver les ingrédients qui sont utilisés dans au moins 3 recettes

SELECT i.name_ingredient, COUNT(id_recipe) AS nbrecette
FROM possess p
INNER JOIN ingredient i ON i.id_ingredient = p.id_ingredient
GROUP BY i.name_ingredient
HAVING COUNT(id_recipe) > 3;