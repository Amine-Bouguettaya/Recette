SELECT name_recipe, name_category, preparation_time FROM recipe
INNER JOIN category ON recipe.id_category = category.id_category
ORDER BY preparation_time DESC;