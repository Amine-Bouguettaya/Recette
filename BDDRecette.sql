-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour recette_amine
CREATE DATABASE IF NOT EXISTS `recette_amine` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recette_amine`;

-- Listage de la structure de table recette_amine. category
CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `name_category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table recette_amine.category : ~0 rows (environ)
INSERT INTO `category` (`id_category`, `name_category`) VALUES
	(1, 'entrée'),
	(2, 'plat'),
	(3, 'dessert');

-- Listage de la structure de table recette_amine. ingredient
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` int NOT NULL AUTO_INCREMENT,
  `name_ingredient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `unity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table recette_amine.ingredient : ~69 rows (environ)
INSERT INTO `ingredient` (`id_ingredient`, `name_ingredient`, `unity`, `price`) VALUES
	(1, 'farine', 'g', 2),
	(2, 'oeuf', 'unité', 0.5),
	(3, 'mozzarella', 'g', 4),
	(4, 'tomate', 'unité', 2),
	(5, 'basilic', 'botte', 3),
	(6, 'huile d\'olive', 'ml', 10),
	(7, 'vinaigre de balsamique', 'ml', 5),
	(8, 'sel', 'pincée', 0.3),
	(9, 'poivre', 'pincée', 0.2),
	(10, 'spaghetti', 'g', 4),
	(11, 'ail', 'unité', 3),
	(12, 'piment', 'g', 2.5),
	(13, 'parmesan', 'g', 4),
	(14, 'persil', 'g', 3),
	(15, 'pain complet', 'unité', 3),
	(16, 'avocat', 'g', 2),
	(17, 'poulet grillé', 'g', 6),
	(18, 'laitue', 'g', 3),
	(19, 'sauce yaourt', 'g', 2),
	(20, 'courgette', 'g', 2),
	(21, 'oignon', 'g', 4),
	(22, 'pois chiche', 'g', 2),
	(23, 'lait de coco', 'ml', 4),
	(24, 'pâte de curry', 'g', 5),
	(25, 'cumin', 'g', 6),
	(26, 'curcuma', 'g', 7),
	(27, 'paprika', 'pincée', 6),
	(28, 'pâte brisée', 'unité', 4),
	(29, 'poivron', 'g', 5),
	(30, 'fromage de chèvre', 'g', 5),
	(31, 'herbe de provence', 'g', 4),
	(32, 'quinoa', 'g', 6.4),
	(33, 'courge', 'g', 4.2),
	(34, 'chou-fleur', 'g', 8),
	(35, 'pomme de terre', 'g', 3.2),
	(36, 'brocoli', 'g', 2),
	(37, 'crème', 'g', 4),
	(38, 'fromage rapé', 'g', 2),
	(39, 'muscade', 'g', 9),
	(40, 'poulet entier', 'unité', 5),
	(41, 'citron', 'unité', 3),
	(42, 'thym', 'unité', 5),
	(43, 'viande hachée', 'g', 9),
	(44, 'chaplure', 'g', 5),
	(45, 'sauce tomate', 'ml', 5),
	(47, 'moutarde', 'cuillère à café', 5),
	(48, 'sel de guérande', 'pincée', 6),
	(49, 'lardons', 'g', 7),
	(50, 'parmesan râpé', 'g', 10),
	(51, 'pecorino râpé', 'g', 11),
	(52, 'romarin', 'unité', 7),
	(53, 'beurre fondu', 'g', 5),
	(54, 'pomme', 'unité', 5),
	(55, 'sucre', 'g', 2),
	(56, 'beurre', 'g', 2.1),
	(57, 'Lait', 'ml', 0.01),
	(58, 'Poulet', 'g', 0.05),
	(59, 'Riz', 'g', 0.02),
	(60, 'Carotte', 'unité', 0.3),
	(61, 'tabasco', 'unité', 4),
	(62, 'pâte de sésame', 'g', 5),
	(63, 'échalotte', 'unité', 5.2),
	(64, 'sucre vanillé', 'unité', 4.2),
	(65, 'chocolat noir', 'g', 6),
	(66, 'sucre glace', 'g', 2),
	(67, 'jaune d\'oeuf', 'unité', 4),
	(68, 'blanc d\'oeuf', 'unité', 4),
	(69, 'coulis de tomate', 'ml', 4),
	(70, 'Poivre', 'cuillère à café', 2.5);

-- Listage de la structure de table recette_amine. possess
CREATE TABLE IF NOT EXISTS `possess` (
  `quantity` float DEFAULT NULL,
  `id_ingredient` int DEFAULT NULL,
  `id_recipe` int DEFAULT NULL,
  KEY `FK_possess_recipe` (`id_recipe`),
  KEY `FK_possess_ingredient` (`id_ingredient`),
  CONSTRAINT `FK_possess_ingredient` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`),
  CONSTRAINT `FK_possess_recipe` FOREIGN KEY (`id_recipe`) REFERENCES `recipe` (`id_recipe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table recette_amine.possess : ~0 rows (environ)
INSERT INTO `possess` (`quantity`, `id_ingredient`, `id_recipe`) VALUES
	(4, 4, 1),
	(300, 3, 1),
	(1, 5, 1),
	(1, 8, 1),
	(1, 9, 1),
	(1, 48, 1),
	(1, 47, 1),
	(1, 7, 1),
	(1, 6, 1),
	(250, 10, 2),
	(150, 49, 2),
	(3, 2, 2),
	(50, 50, 2),
	(50, 51, 2),
	(1, 8, 2),
	(1, 9, 2),
	(1, 40, 3),
	(1, 41, 3),
	(4, 11, 3),
	(1, 42, 3),
	(1, 52, 3),
	(50, 53, 3),
	(1, 6, 3),
	(1, 8, 3),
	(1, 9, 3),
	(200, 59, 5),
	(500, 57, 5),
	(50, 55, 5),
	(1, 61, 6),
	(500, 22, 6),
	(1, 41, 6),
	(60, 62, 6),
	(3, 63, 6),
	(1, 27, 6),
	(1, 6, 6),
	(30, 56, 4),
	(1, 28, 4),
	(6, 54, 4),
	(1, 64, 4),
	(1, 8, 7),
	(80, 66, 7),
	(100, 53, 7),
	(500, 65, 7),
	(6, 67, 7),
	(10, 68, 7),
	(60, 38, 8),
	(1000, 20, 8),
	(120, 57, 8),
	(6, 2, 8),
	(1, 5, 8),
	(40, 50, 8),
	(50, 38, 9),
	(1, 21, 9),
	(1, 8, 9),
	(1, 9, 9),
	(200, 20, 9),
	(600, 43, 9),
	(200, 69, 9),
	(50, 6, 9);

-- Listage de la structure de table recette_amine. recipe
CREATE TABLE IF NOT EXISTS `recipe` (
  `id_recipe` int NOT NULL AUTO_INCREMENT,
  `name_recipe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `preparation_time` int DEFAULT NULL,
  `instructions` text,
  `id_category` int DEFAULT NULL,
  PRIMARY KEY (`id_recipe`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `FK_id_catagory` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table recette_amine.recipe : ~0 rows (environ)
INSERT INTO `recipe` (`id_recipe`, `name_recipe`, `preparation_time`, `instructions`, `id_category`) VALUES
	(1, 'Salade de tomate et de mozzarella', 20, 'Etape 1: Découper la mozzarella en tranches de 2 à 3 mm d\'épaisseur. Emincer et découper les tomates en tranches. Etape 2: Ranger les tomates sur le plat de service en les chevauchant; garnir tout le plat. Intercaler les tranches de mozzarella entre les tranches de tomates. Etape 3: Préparer une vinaigrette avec l\'huile d\'olive, le vinaigre, la moutarde, le sel et le poivre. Etape 4: Asperger les tomates et la mozzarella de vinaigrette. Prélever des feuilles de basilic frais et les émincer finement, puis parsemer la surface des tomates de pignons de pins ou de noix hachées. Etape 5: Je rajoute, en dernier, une pincée de sel de Guérande; il réhaussera le goût de la tomate et rendra ce plat bien plus rafraîchissant.  ', 1),
	(2, 'pâte à la carbonara', 15, 'Faites cuire les spaghetti dans une grande casserole d\'eau salée selon les indications du paquet.\nPendant ce temps, faites revenir les lardons ou la pancetta dans une poêle avec un peu d\'huile jusqu\'à ce qu\'ils soient dorés et croustillants.\nDans un bol, battez les œufs, ajoutez les fromages râpés, salez et poivrez.\nÉgouttez les pâtes et réservez un peu d\'eau de cuisson.\nMélangez les pâtes chaudes avec les lardons dans la poêle, puis hors du feu, ajoutez les œufs et mélangez rapidement pour éviter que les œufs ne cuisent trop.\nAjoutez un peu d\'eau de cuisson si nécessaire pour obtenir une sauce crémeuse.\nServez immédiatement, saupoudré de parmesan et de poivre noir.', 2),
	(3, 'Poulet rôti au citron et aux herbes', 105, 'Préchauffez votre four à 200°C.\nRincez le poulet et séchez-le bien avec du papier absorbant.\nFrottez-le avec l\'ail haché, le sel, le poivre, le beurre fondu et un peu d\'huile d\'olive.\nCoupez le citron en deux et insérez-le à l\'intérieur du poulet avec quelques brins de thym et de romarin.\nPlacez le poulet dans un plat de cuisson et enfournez pendant 1h15 à 1h30, en le retournant à mi-cuisson pour une dorure uniforme.\nLaissez reposer 10 minutes avant de découper et servir.', 2),
	(4, 'Tarte aux pommes', 50, 'Étape 1 Éplucher et découper en morceaux 4 Golden. Étape 2 Faire une compote : les mettre dans une casserole avec un peu d\'eau (1 verre ou 2). Bien remuer. Quand les pommes commencent à ramollir, ajouter un sachet ou un sachet et demi de sucre vanillé. Ajouter un peu d\'eau si nécessaire. Étape 3 Vous saurez si la compote est prête une fois que les pommes ne seront plus dures du tout. Ce n\'est pas grave s\'il reste quelques morceaux. Étape 4 Pendant que la compote cuit, éplucher et couper en quatre les deux dernières pommes, puis, couper les quartiers en fines lamelles (elles serviront à être posées sur la compote). Étape 5 Préchauffer le four à 210°C (thermostat 7). Étape 6 Laisser un peu refroidir la compote et étaler la pâte brisée dans un moule et la piquer avec une fourchette. Étape 7 Verser la compote sur la pâte et placer les lamelles de pommes en formant une spirale ou plusieurs cercles, au choix ! Disposer des lamelles de beurre dessus. Ét\npour caraméliser un peu.', 3),
	(5, 'Riz au lait', 45, '1. Cuire le riz dans du lait avec du sucre. 2. Laisser refroidir avant de servir.', 3),
	(6, 'Hoummous à l\'échalote', 5, 'Égoutter les pois chiches et réserver le liquide. Rincer. Étape 2 Dans le bol du mixeur, verser 2 cuillères à soupe de liquide, les pois chiches, 7 cuillères à soupe de jus de citron, le tahini, les échalotes et la sauce au piment. Étape 3 Mixer jusqu\'à obtenir une pâte homogène (elle ne sera pas totalement lisse). Étape 4 Ajouter un peu plus de liquide des pois chiches si c\'est trop épais. Étape 5 Goûter et rectifier l\'assaisonnement avec sel, poivre, jus de citron et sauce au piment. Étape 6 Verser dans un bol. Étape 7 Vous pouvez le faire un jour à l\'avance. Couvrir et réfrigérer. Étape 8 Porter à température ambiante avant de servir. Étape 9 Verser une cuillère à café d\'huile d\'olive à la surface et saupoudrer de paprika. Étape 10 Servir avec des triangles de pita toastés.', 1),
	(7, 'Mousse au chocolat', 30, 'Étape 1 Mettre les 10 blancs d\'oeufs dans le bol où on va les monter en neige et les mettre au congélateur le temps de la préparation. Étape 2 Mélanger les 6 jaunes avec le sucre glace jusqu\'à ce que le mélange devienne clair. Étape 3 Pendant ce temps, faire fondre doucement le chocolat avec le beurre, au micro-onde ou dans une casserole à feu très doux. Étape 4 Un fois fondus, les retirer du feu et les laisser refroidir 1 min. Étape 5 Au mélange jaunes d\'oeufs-sucre glace, ajouter le mélange chocolat-beurre, pas trop chaud. Étape 6 Mélanger les deux. Étape 7 Sortir du congélateur les blancs d\'oeufs et leur bol et les battre en neige très, très ferme. Étape 8 Incorporer les blancs d\'oeufs au mélange chocolaté, en enroulant le chocolat autour des blancs. Étape 9 Si pendant la montée des blancs le mélange au chocolat a un peu durci, ne pas hésiter à rajouter 5 cl de lait. Étape 10 Verser dans un plat. Étape 11 Décorer de quelques copeaux de chocolat réalisés avec un économe. Étape 12 Mettre au réfrigérateur quelques heures (2 heures minimum). Étape 13 Si c\'est pour la servir le lendemain, la mettre au congélateur et 6 heures avant de la servir la mettre au réfrigérateur, elle sera bien prise et se remettra doucement, sans retomber.', 3),
	(8, 'Flan de courgette', 50, 'Étape 1 Couper les courgettes en très fines rondelles. Les faire revenir dans de l\'huile d\'olive. Saler, poivrer, cuire environ 10 mm à petit feu. Étape 2 Battre les oeufs et ajouter le fromage + sel + poivre + basilic + lait. Étape 3 Jeter la préparation sur les courgettes. Remuer. NE PAS FAIRE PRENDRE "L\'OMELETTE". Étape 4 Mettre au four 180°C pendant 35 mn. Étape 5 SERVIR FROID OU CHAUD avec une sauce mayonnaise + ketchup hot.', 1),
	(9, 'Courgettes farcies', 70, 'Étape 1 Laver les courgettes, ne pas les peler. Les couper en deux dans le sens de la longueur pour obtenir 4 barquettes. Evider chaque barquette avec une petite cuillère et conserver la chair à part. Étape 2 Faire revenir la chair de courgette dans la moitié d\'huile d\'olive avec l\'oignon émincé. Ajouter ensuite la viande hachée et faire revenir à nouveau en mélangeant avec une fourchette afin de bien égrener la viande hachée. Étape 3 Dans un plat allant au four, disposer les barquettes de courgettes l\'une à côté de l\'autre, les remplir de la farce courgette - viande et arroser le tout avec le coulis de tomate ou une boîte de tomates pelées (selon que l\'on désire plus ou moins de jus). Étape 4 Mettre au four 200°C pendant environ 30 à 40 minutes. Étape 5 Quelques minutes avant la fin de la cuisson, parsemer le plat avec le fromage râpé et poursuivre les dernières minutes de cuisson (le fromage fond). Pour un véritable doré, passer le plat au grill quelques instants.', 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
