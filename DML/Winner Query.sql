SELECT *
FROM players
WHERE winnings = (SELECT MAX(winnings) 
                  FROM players);