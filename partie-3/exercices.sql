--Partie 3

Exercice 1 
SELECT * FROM languages

Exercice 2 
SELECT `language`, `version` 
FROM `languages` 
WHERE `language` = "PHP";

Exercice 3 
SELECT `language`, `version` 
FROM `languages` 
WHERE `language` = "PHP" OR `language` = "JavaScript" ;

Exercice 4
SELECT * FROM `languages`
WHERE `id` =  3 OR `id` = 5 OR `id` = 7 

Exercice 5 
SELECT `language`, `version` 
FROM `languages` 
WHERE `language` = "JavaScript" 
LIMIT 0,2;

Exercice 6 
SELECT `language`, `version` 
FROM `languages` 
WHERE `language` != "PHP";    -- ou  WHERE `language` <> "PHP";   

Exercice 7 
SELECT *
FROM `languages` 
ORDER BY `language`

-- Afficher par ordre alphabétique de language et ordre décroissant de version
SELECT *
FROM `languages` 
ORDER BY `language`, `version` DESC