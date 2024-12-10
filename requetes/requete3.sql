SELECT r.name_recipe, c.name_category, r.preparation_time
FROM recipe r
INNER JOIN category c ON r.id_category = c.id_category
WHERE r.preparation_time < 30
ORDER BY r.preparation_time DESC;