-- Afficher la / les recette(s) les plus rapides à préparer

SELECT r.name_recipe, r.preparation_time
FROM recipe r
WHERE r.preparation_time = (
	SELECT MIN(preparation_time)
	FROM recipe
);