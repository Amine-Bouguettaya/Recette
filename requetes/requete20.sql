-- Bonus : Trouver la recette la plus coûteuse de la base de données (il peut y avoir des ex aequo, il est
-- donc exclu d’utiliser la clause LIMIT)

SELECT r.name_recipe, SUM(p.quantity * i.price) AS coutRecette
FROM recipe r
INNER JOIN possess p ON r.id_recipe = p.id_recipe
INNER JOIN ingredient i ON p.id_ingredient = i.id_ingredient
GROUP BY r.id_recipe
HAVING coutRecette >= ALL (
    SELECT SUM(p_sub.quantity * i_sub.price)
        FROM recipe r_sub
        INNER JOIN possess p_sub     ON r_sub.id_recipe = p_sub.id_recipe
        INNER JOIN ingredient i_sub ON p_sub.id_ingredient = i_sub.id_ingredient
        GROUP BY r_sub.id_recipe
)