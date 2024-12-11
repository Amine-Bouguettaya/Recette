-- Afficher les recettes dont le nom contient le mot « Salade » (peu importe où est situé le mot en
-- question)

SELECT r.name_recipe, c.name_category, r.preparation_time
FROM recipe r
INNER JOIN category c ON r.id_category = c.id_category
WHERE r.name_recipe LIKE '%Salade%'
