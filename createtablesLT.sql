DROP TABLE IF EXISTS game_plays_players;
DROP TABLE IF EXISTS player_info;
DROP TABLE IF EXISTS game_goalie_stats;

CREATE TABLE game_goalie_stats (
	game_id	int,
	player_id int,
	team_id int,
	timeOnIce int,
	assists int,
	goals int,
	pim int,
	shots int,
	saves int,
	powerPlaysSaves int,
	shortHandedSaves int,
	evenSaves int,
	shortHandedShotsAgainst int,
	evenShots int,
	powerPlay int,
	decision int,
	savePercentage int,
	powerPlaySavePercentage int,
	evenStrengthSavePercentage int,
	PRIMARY KEY (game_id)
);

CREATE TABLE player_info (
	player_id int,
	firstName varchar,
	lastName varchar,
	nationality varchar(3),
	birthCity varchar(30),
	primaryPosition varchar(3),
	birthDate timestamp,
	birthState varchar(3),
	height varchar,
	height_cm int,
	weight int,
	shootsCatches varchar(3),
	PRIMARY KEY (player_id)
);

CREATE TABLE game_plays_players (
	play_id int,
	game_id int,
	player_id int,
	playerType varchar(30),
	PRIMARY KEY (play_id)
);
