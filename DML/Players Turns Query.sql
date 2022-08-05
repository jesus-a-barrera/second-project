SELECT p.id, p.name, pt.is_winner
FROM players p
INNER JOIN players_turns pt
ON p.id = pt.players_id;