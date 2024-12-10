SELECT name_recipe, name_category, preparation_time, COUNT(p.id_ingredient) AS nbIngredients
FROM recipe r
INNER JOIN category c ON r.id_category = c.id_category
INNER JOIN possess p ON p.id_recipe = r.id_recipe
GROUP BY name_recipe, name_category, preparation_time
ORDER BY preparation_time DESC;