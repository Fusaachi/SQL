--Partie 4 

Exercice 1 

DELETE FROM `languages`
WHERE `language` = "HTML"
;

Exercice 2 
UPDATE `frameworks`
SET `name` = "Symfony2"
WHERE `name` = "Symfony"
;

Exercice 3 

UPDATE `languages`
SET `version` = 5.1 
WHERE `version` = 5 AND `language` = "JavaScript";