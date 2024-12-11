-- Mettez à jour toutes les recettes en diminuant leur temps de préparation de 5 minutes

UPDATE recipe r
SET r.preparation_time = r.preparation_time + 5;