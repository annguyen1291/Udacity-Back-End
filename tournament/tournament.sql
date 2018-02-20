-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament;

CREATE TABLE players (
	id serial primary key,
    name text
);

CREATE TABLE matches (
	id serial primary key,
    winner int references players(id),
    loser int references players(id)
);

CREATE VIEW winnings AS SELECT players.id AS id, count(matches.id) as wins FROM players LEFT JOIN matches ON players.id = matches.winner GROUP BY players.id;

CREATE VIEW losings AS SELECT players.id AS id, count(matches.id) as loses FROM players LEFT JOIN matches ON players.id = matches.loser GROUP BY players.id;

CREATE VIEW played AS SELECT winnings.id AS id, winnings.wins + losings.loses AS matches FROM winnings JOIN losings ON winnings.id = losings.id;

CREATE VIEW standings AS 
	SELECT players.id AS id, players.name as name, winnings.wins AS wins, played.matches as matches 
	FROM players, winnings, played WHERE players.id = winnings.id AND players.id = played.id
	ORDER BY wins DESC;