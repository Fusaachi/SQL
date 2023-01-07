Exercice 1 
SELECT `g_name`
FROM `games`

Exercice 2 
SELECT DISTINCT `g_name` 
FROM `games`

Exercice 3 
SELECT `g_name`, `g_mode`, `g_published_at`, `g_pegi`
FROM `games` 
ORDER BY `g_name`

Exercice 4 
SELECT `g_name`, `g_mode`,`g_published_at`,`g_pegi` 
FROM `games` 
ORDER BY `g_published_at` DESC 
LIMIT 0, 10;

Exercice 5 
SELECT `g_name`, `g_mode`
FROM `games`
WHERE `g_mode` NOT LIKE "%/%"

Exercice 6 
SELECT `g_name`,`g_published_at`,
FROM `games` 
WHERE `g_published_at` >= '2015-01-01' AND `g_published_at` < "2021-01-01"  -- WHERE YEAR(`g_published_at`) BETWEEN 2015 AND 2020 
ORDER BY `g_published_at`

Exercice 7 
SELECT `g_name`, `g_mode`
FROM `games`
WHERE `g_name` LIKE "%Solo%"

Exercice 8 
SELECT *
FROM `games`
WHERE `g_name` LIKE "%Witcher%"

Exercice 9 
SELECT *
FROM `games`
WHERE `g_name` NOT LIKE "%Halo%"

Exercice 10
SELECT *
FROM `games`
WHERE YEAR(`g_published_at`) = 2012 OR  YEAR(`g_published_at`) = 2016 OR  YEAR(`g_published_at`) = 2020

Exercice 11 
SELECT `g_name`, `s_name`
FROM `games`
INNER JOIN `studios` ON `studios`.`s_id` = `games`.`s_id`           -- OR NATURAL JOIN `studios`

Exercice 12 
SELECT `g_name`, `s_name`, `s_nationality`
FROM `games`
INNER JOIN `studios`
ON `studios`.`s_id` = `games`.`s_id`

Exercice 13 
SELECT `g_name`, `g_mode`, `g_pegi` , `p_name`
FROM `games`
INNER JOIN `games_platforms`
ON `games`.`g_id` = `games_platforms`.`g_id`
INNER JOIN `platforms`
ON `games_platforms`.`p_id` = `platforms`.`p_id`
WHERE 
    `g_pegi` < 16 
    AND `p_name`!= "PC"
    AND `p_name`!= "MAC"
ORDER BY `g_pegi`

Exercice 14 
SELECT `g_name`, `p_name`
FROM `games`
INNER JOIN `games_platforms`
ON `games`.`g_id` = `games_platforms`.`g_id`
INNER JOIN `platforms`
ON `games_platforms`.`p_id` = `platforms`.`p_id`
ORDER BY `g_name`

Exercice 15
SELECT COUNT(`g_name`) FROM `games`

Exercice 16 
SELECT COUNT(DISTINCT `g_name`) FROM `games`

Exercice 17
SELECT `s_name`, COUNT(`g_name`) 
FROM `games`
INNER JOIN `studios`
ON `games`.`s_id` = `studios`.`s_id`
GROUP BY `s_name`

Exercice 18 
SELECT `s_name`, `p_name`, COUNT(*) 
FROM `games`
INNER JOIN `studios`
ON `games`.`s_id` = `studios`.`s_id`
INNER JOIN `games_platforms`
ON `games`.`g_id` = `games_platforms`.`g_id`
INNER JOIN `platforms`
ON `games_platforms`.`p_id` = `platforms`.`p_id`
GROUP BY `s_name`, `p_name`

Exercice 19 
SELECT `g_name`, COUNT(`games`.`g_id`) FROM `games`
INNER JOIN `games_platforms`
ON `games`.`g_id` = `games_platforms`.`g_id`
GROUP BY `games`.`g_id`
HAVING COUNT(`games`.`g_id`) >= 4 

Exercice 20 
SELECT AVG(`g_id`)
FROM `games_platforms`





SELECT `platforms`.`p_name`, COUNT(`games`.`g_name`) FROM `platforms`
INNER JOIN `games_platforms`
ON `platforms`.`p_id` = `games_platforms`.`p_id`
INNER JOIN `games`
ON `games`.`g_id` = `games_platforms`.`p_id` 
GROUP BY `games`.`g_name` 
ORDER BY `platforms`.`p_name`


SELECT `les_eleves`.`nom`, `les_eleves`.`prenom`, `notes`.`note`, `notes`.`m_id` FROM `les_eleves` 
INNER JOIN `eleves_notes` 
ON `les_eleves`.`e_id`= `eleves_notes`.`e_id` 
INNER JOIN `notes` 
ON `eleves_notes`.`n_id`= `notes`.`n_id` 
INNER JOIN `matieres` 
ON `matieres`.`m_id`= `notes`.`m_id`;

SELECT `les_eleves`.`nom`, `les_eleves`.`prenom`, FROM `les_eleves` 
SELECT AVG (`e_id`) FROM `les_eleves` 

