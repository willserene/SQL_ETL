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