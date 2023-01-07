Exercice 1 
SELECT `livres`.`titre`, `clients`.`nom`, `clients`.`prenom`, `registre`.`date_de_sortie`, `registre`.`date_de_rentree`  FROM `registre`
INNER JOIN `clients`
ON `clients`.`client_id` = `registre`.`client_id`
INNER JOIN `livres`
ON `livres`.`livre_id` = `registre`.`livre_id`;

Exercice 2
SELECT `livres`.`titre`, `livres`.`genre`, `auteurs`.`nom`,`auteurs`.`prenom`, `stock` FROM `livres`
INNER JOIN `genre`
ON `genre`.`genre_id` = `livres`.`genre`
INNER JOIN `auteurs`
ON `auteurs`.`auteur_id` = `livres`.`auteur`
INNER JOIN `registre`
ON `stock` = `livres`.`livre_id`;
