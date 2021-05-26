DROP TABLE IF EXISTS game_officials;
DROP TABLE IF EXISTS game_shifts;

CREATE TABLE game_officials (
		game_id int,
		official_name varchar,
		official_type varchar,
		PRIMARY KEY (game_id)
);


CREATE TABLE game_shifts (
		game_id int,
		player_id int,
		game_period int,
		shift_start int,
		shift_end int,
		FOREIGN KEY (game_id) references game_officials(game_id)
);
