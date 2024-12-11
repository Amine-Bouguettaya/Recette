-- - Trouver les recettes qui ne nécessitent aucun ingrédient (par exemple la recette de la tasse d’eau
-- chaude qui consiste à verser de l’eau chaude dans une tasse)

SELECT r.name_recipe
FROM recipe r
LEFT JOIN possess p ON p.id_recipe = r.id_recipe
WHERE p.id_recipe IS NULL;