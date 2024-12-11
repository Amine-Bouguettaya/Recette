-- Afficher le nombre de recettes par catégories : X entrées, Y plats, Z desserts

SELECT c.name_category , COUNT(r.id_recipe) AS nbRecettes
FROM category c 
INNER JOIN recipe r 
ON r.id_category = c.id_category
GROUP BY c.name_category