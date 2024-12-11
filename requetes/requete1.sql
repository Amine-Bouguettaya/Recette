--  Afficher toutes les recettes disponibles (nom de la recette, catégorie et temps de préparation) triées
-- de façon décroissante sur la durée de réalisation

SELECT name_recipe, name_category, preparation_time FROM recipe
INNER JOIN category ON recipe.id_category = category.id_category
ORDER BY preparation_time DESC;