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
Wins by Coach (for each team coached) having played at least 50 games
*/
WITH game_coaches as (
	SELECT 
	  gts.head_coach,
	  ti."shortName" || ' ' || ti."teamName" as team_name,
	  sum(CASE WHEN gts.won = 'true' THEN 1 ELSE 0 END) as games_won,
	  count(gts.won) as games_played
	FROM game_teams_stats gts
	JOIN team_info ti on ti.team_id = gts.team_id
	WHERE gts.head_coach is not null
	GROUP BY gts.head_coach, ti."shortName" || ' ' || ti."teamName"
)
SELECT
  *,
  (games_won::real / games_played::real) as win_percent
FROM game_coaches
WHERE games_played > 50
ORDER BY (games_won::real / games_played::real) DESC
LIMIT 10
;



/*
Top 10 Nations for Total Goals Made by Players
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