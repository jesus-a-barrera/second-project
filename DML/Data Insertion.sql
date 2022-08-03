-- Creating games
INSERT INTO games VALUES (001, 'TicTacToe', 2, 2);
INSERT INTO games VALUES (002, 'MangMan', 2, 2);

-- Creating players
INSERT INTO players VALUES (001, 'Antonio', 0, 0);
INSERT INTO players VALUES (002, 'Oliver', 0, 0);

-- Creating finished TicTacToe turns
INSERT INTO turns VALUES (001, 001, 1);
INSERT INTO turns VALUES (002, 001, 1);

-- Creating finished HangMan turns
INSERT INTO turns VALUES (003, 002, 1);
INSERT INTO turns VALUES (004, 002, 1);

-- Creating players 001 TicTacToe turns
INSERT INTO players_turns VALUES ('X', 1, 1, 001, 001);
INSERT INTO players_turns VALUES ('O', 1, 1, 001, 002);

-- Updating player 001 statistics
UPDATE players SET winnings = 3 WHERE id = 001;

-- Creating players 002 TicTacToe turns
INSERT INTO players_turns VALUES ('O', 0, 0, 002, 001);
INSERT INTO players_turns VALUES ('X', 0, 0, 002, 002);

-- Updating player 002 statistics
UPDATE players SET losses = 3 WHERE id = 002;

-- Creating players 001 HangMan turns
INSERT INTO players_turns VALUES ('GIVER', 0, 1, 001, 003);
INSERT INTO players_turns VALUES ('GUESSER', 1, 0, 001, 004);

-- Updating player 001 statistics
UPDATE players SET losses = 1 WHERE id = 001;

-- Creating players 002 HangMan turns
INSERT INTO players_turns VALUES ('GUESSER', 1, 0, 002, 003);
INSERT INTO players_turns VALUES ('GIVER', 0, 1, 002, 004);

-- Updating player 002 statistics
UPDATE players SET winnings = 1 WHERE id = 002;

-- Creating hangedmen
INSERT INTO hangedmen VALUES (001, 0, 1, 003);
INSERT INTO hangedmen VALUES (002, 1, 0, 004);

-- Creating turn 003 secret words
INSERT INTO secretletters VALUES ('h', 1, 1, 001);
INSERT INTO secretletters VALUES ('e', 2, 1, 001);
INSERT INTO secretletters VALUES ('l', 3, 1, 001);
INSERT INTO secretletters VALUES ('l', 4, 1, 001);
INSERT INTO secretletters VALUES ('o', 5, 1, 001);

-- Creating turn 004 secret words
INSERT INTO secretletters VALUES ('g', 1, 1, 002);
INSERT INTO secretletters VALUES ('0', 2, 0, 002);
INSERT INTO secretletters VALUES ('a', 3, 1, 002);
INSERT INTO secretletters VALUES ('l', 4, 1, 002);
INSERT INTO secretletters VALUES ('s', 5, 0, 002);

-- Creating boards
INSERT INTO boards VALUES (001, 0, 001);
INSERT INTO boards VALUES (002, 0, 002);

-- Creating board 001 squares
INSERT INTO squares VALUES (1, 1, 'X', 001);
INSERT INTO squares VALUES (1, 2, 'X', 001);
INSERT INTO squares VALUES (1, 3, 'X', 001);
INSERT INTO squares VALUES (2, 1, 'O', 001);
INSERT INTO squares VALUES (2, 2, 'O', 001);
INSERT INTO squares VALUES (2, 3, null, 001);
INSERT INTO squares VALUES (3, 1, 'O', 001);
INSERT INTO squares VALUES (3, 2, null, 001);
INSERT INTO squares VALUES (3, 3, null, 001);

-- Creating board 002 squareS
INSERT INTO squares VALUES (1, 1, 'O', 002);
INSERT INTO squares VALUES (1, 2, 'O', 002);
INSERT INTO squares VALUES (1, 3, 'O', 002);
INSERT INTO squares VALUES (2, 1, 'X', 002);
INSERT INTO squares VALUES (2, 2, 'X', 002);
INSERT INTO squares VALUES (2, 3, null, 002);
INSERT INTO squares VALUES (3, 1, 'X', 002);
INSERT INTO squares VALUES (3, 2, null, 002);
INSERT INTO squares VALUES (3, 3, null, 002);



