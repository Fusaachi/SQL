Exercice 1 
SELECT `eleves`.`nom`, `prenom`, `note`, `matiere`.`nom` AS `matiere` FROM `eleves` 
INNER JOIN `notes` 
ON `eleves`.`e_id`= `notes`.`e_id` 
INNER JOIN `matieres`  
ON `matieres`.`m_id`= `notes`.`m_id`;

Exercice 2
SELECT `eleves`.`nom`, `prenom`,`matieres`.`nom`, AVG(`note`) FROM `eleves` 
INNER JOIN `notes`
ON `notes`.`e_id` = `eleves`.`e_id`
INNER JOIN `matieres`
ON `matieres`.`m_id` = `notes`.`m_id`
WHERE `eleves`.`nom` LIKE "%Aburame%"
GROUP BY `matieres`.`nom`

Exercice 3 
SELECT `eleves`.`nom`,`eleves`.`prenom`, AVG(`note`), `classes`.`nom`,`niveau`,`professeurs`.`nom`
FROM `eleves`
INNER JOIN `notes` ON `eleves`.`id_eleves` = `notes`.`id_eleves`
INNER JOIN `classes` ON `eleves`.`id_eleves` = `classes`.`id_eleves`
INNER JOIN `professeurs` ON `professeurs`.`id_professeur` = `classes`.`id_professeur`
GROUP BY `eleves`.`id_eleves`

Exercice 4 
SELECT `professeurs`.`nom`, `professeurs`.`prenom`, `classes`.`nom`, `eleves`.`nom`, `eleves`.`prenom` FROM `professeurs` 
INNER JOIN `classes_professeur`
ON `professeurs`.`p_id` =`classes_professeur`.`p_id`
INNER JOIN `classes`
ON `classes`.`c_id` = `classes_professeur`.`c_id` 
INNER JOIN `eleves`
ON `eleves`.`c_id` =`classes`.`c_id`

Exercice 5 
SELECT `eleves`.`nom`, `eleves`.`prenom`, `classes`.`nom`,`professeurs`.`nom` , AVG(`note`) FROM `eleves` 
INNER JOIN `classes`
ON `classes`.`c_id` = `eleves`.`c_id` 
INNER JOIN `professeurs` 
ON `classes`.`p_id` =`professeurs`.`p_id` 
INNER JOIN `notes` 
ON `notes`.`e_id` = `eleves`.`e_id` 
WHERE `classes`.`nom` = "A" AND `classes`.`niveau` = 6 
GROUP BY `eleves`.`e_id` 
ORDER BY AVG (`note`) DESC;