-- Afficher les recettes qui ne nécessitent pas d’ingrédients coûtant plus de 2€ par unité de mesure

SELECT r.name_recipe
FROM recipe r
WHERE r.id_recipe NOT IN (
	SELECT r.id_recipe
	FROM recipe r
	INNER JOIN possess p ON p.id_recipe = r.id_recipe
	INNER JOIN ingredient i ON p.id_ingredient = i.id_ingredient
	WHERE p.id_recipe = r.id_recipe AND i.price > 2
);