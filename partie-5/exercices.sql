Exercice 1 
SELECT * 
FROM `languages` 
LEFT JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languageId`

Exercice 2 
SELECT * 
FROM `languages` 
INNER JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languageId`

SELECT `name`,`frameworks`.`version` AS `framework_version`,`language` , `languages`.`version`AS `languages_version`
FROM `languages` 
INNER JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languageId`

Exercice 3
SELECT `languages`.`language`,`languages`.`version`, COUNT(`frameworks`.`id`) 
FROM `languages` 
INNER JOIN `frameworks` 
ON `languages`.`id` = `frameworks`.`languageId` 
GROUP BY `frameworks`.`languageId`;