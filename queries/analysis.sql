SELECT pi.* 
FROM player_info pi
;

SELECT gss.player_id, sum(gss.goals)
FROM game_skater_stats gss
GROUP BY gss.player_id
;

SELECT 
  pi.nationality, 
  sum(gss.goals) AS total_goals
FROM player_info pi
LEFT JOIN game_skater_stats gss ON gss.player_id = pi.player_id
WHERE gss.goals IS NOT NULL 
  AND pi.nationality IS NOT NULL
GROUP BY pi.nationality
ORDER BY SUM(gss.goals) DESC
LIMIT 10
;