DROP TABLE IF EXISTS game_plays;
DROP TABLE IF EXISTS game_teams_stats;
DROP TABLE IF EXISTS game;


CREATE TABLE game (
	game_id int,
	season int,
	type varchar(1),
	date_time_gmt timestamp,
	away_team_id int,
	home_team_id int,
	away_goals int,
	home_goals int,
	outcome varchar(255),
	home_rink_side_start varchar(5),
	venue varchar(255),
	vanue_link varchar(255),
	venue_time_zone_id varchar(100),
	venue_time_zone_offset int,
	venue_time_zone_tz varchar(3),
	PRIMARY KEY (game_id)
);


CREATE TABLE game_plays (
	play_id varchar(20),  -- foreign key (needs table created before assigning it)
	game_id int,  -- foreign key
	team_id_for int,  -- foreign key (needs table created before assigning it)
	team_id_against int,    -- foreign key (needs table created before assigning it)
	event varchar(50),
	secondaryType varchar(50),
	x int,
	y int,
	period int,
	periodType int,
	periodTime int,
	periodTimeRemaining int,
	dateTime timestamp,
	goals_away int,
	goals_home int,
	description varchar(255),
	st_x int,
	st_y int,
	FOREIGN KEY (game_id) REFERENCES game(game_id)
);


CREATE TABLE game_teams_stats (
	game_id int,  -- foreign key
	team_id int,  -- foreign key (needs table created before assigning it)
	HoA varchar(4),
	won boolean,
	settled_in varchar(3),
	head_coach varchar(80),
	goals int,
	shots int,
	hits int,
	pim int,
	powerPlayOpportunities int,
	powerPlayGoals int,
	faceOffWinPercentage float,
	giveaways int,
	takeaways int,
	blocked int,
	starRinkSide varchar(5),
	FOREIGN KEY (game_id) REFERENCES game(game_id)
);
