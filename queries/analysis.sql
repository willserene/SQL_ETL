/*
Top 10 Goalies by Save Rate, having played at least 250 Games
*/
SELECT
  pi."firstName" || ' ' || pi."lastName" as "Goalie Name",
  pi.nationality as "Nationality",
  count(distinct ggs.game_id) as "Games Played",
  round((avg(ggs.saves)/avg(shots))*100, 2) as "Save Percentage"
FROM game_goalie_stats ggs
LEFT JOIN player_info pi ON pi.player_id = ggs.player_id
GROUP BY pi."firstName" || ' ' || pi."lastName", pi.nationality
HAVING count(distinct game_id) > 250
ORDER BY round((avg(ggs.saves)/avg(shots))*100, 2) DESC
LIMIT 10
;


/*
Wins by Coach (for each team coached)
*/
SELECT 
	gts.head_coach as "Head Coach",
	ti."shortName" || ' ' || ti."teamName" as "Team",
	count(gts.won) filter (where gts.won) as "Games Won",
	count(gts.won) as "Total Games"
FROM game_teams_stats gts
JOIN team_info ti on ti.team_id = gts.team_id
WHERE gts.head_coach is not null
GROUP BY gts.head_coach, ti."shortName" || ' ' || ti."teamName"
ORDER BY gts.head_coach
;



/*
Top 10 Nations for Total Goals Made by Players (all history)
*/
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