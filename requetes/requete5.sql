-- Insérer une nouvelle recette : « Pâtes à la carbonara » dont la durée de réalisation est de 20 min avec
-- les instructions de votre choix. Pensez à alimenter votre base de données en conséquence afin de
-- pouvoir lister les détails de cette recettes (ingrédients)

INSERT INTO recipe (name_recipe, preparation_time, instructions, id_category)
VALUES ('Pâtes à la carbonara', 20, "Faites cuire les spaghetti dans une grande casserole d'eau salée selon les indications du paquet. Pendant ce temps faites revenir les lardons ou la pancetta dans une poêle avec un peu d'huile jusqu'à ce qu'ils soient dorés et croustillants. Dans un bol, battez les œufs, ajoutez les fromages râpés, salez et poivrez. gouttez les pâtes et réservez un peu d'eau de cuisson. Mélangez les pâtes chaudes avec les lardons dans la poêle puis hors du feu ajoutez les œufs et mélangez rapidement pour éviter que les œufs ne cuisent trop. Ajoutez un peu d'eau de cuisson si nécessaire pour obtenir une sauce crémeuse. Servez immédiatement, saupoudré de parmesan et de poivre noir.", 2);