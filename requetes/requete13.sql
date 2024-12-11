-- Afficher les recettes qui contiennent l’ingrédient « Poulet »

SELECT r.name_recipe
FROM recipe r
INNER JOIN possess p
ON p.id_recipe = r.id_recipe
INNER JOIN ingredient i
ON p.id_ingredient = i.id_ingredient
WHERE i.name_ingredient LIKE '%poivre%';