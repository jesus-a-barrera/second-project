-- Creating games
INSERT INTO games VALUES (001, 'TicTacToe', 2, 2);
INSERT INTO games VALUES (002, 'MangMan', 2, 2);

-- Creating players types
INSERT INTO players_types VALUES (001, 'HUMAN');
INSERT INTO players_types VALUES (002, 'BOT');

-- Creating players
INSERT INTO players VALUES (001, 001, 'Antonio', 0, 0);
INSERT INTO players VALUES (002, 001, 'Oliver', 0, 0);

-- Creating finished TicTacToe turns
INSERT INTO turns VALUES (001, 001, 1);
INSERT INTO turns VALUES (002, 001, 1);

-- Creating finished HangMan turns
INSERT INTO turns VALUES (003, 002, 1);
INSERT INTO turns VALUES (004, 002, 1);

-- Creating players 001 TicTacToe turns
INSERT INTO players_turns VALUES (001, 001, 001, 1, 1);
INSERT INTO players_turns VALUES (002, 002, 001, 1, 1);

-- Updating player 001 statistics
UPDATE players SET winnings = 2 WHERE id = 001;

-- Creating players 002 TicTacToe turns
INSERT INTO players_turns VALUES (003, 001, 002, 0, 0);
INSERT INTO players_turns VALUES (004, 002, 002, 0, 0);

-- Updating player 002 statistics
UPDATE players SET losses = 2 WHERE id = 002;

-- Creating players 001 HangMan turns
INSERT INTO players_turns VALUES (005, 003, 001, 0, 1);
INSERT INTO players_turns VALUES (006, 004, 001, 1, 0);

-- Updating player 001 statistics
UPDATE players SET losses = 1 WHERE id = 001;
UPDATE players SET winnings = 3 WHERE id = 001;

-- Creating players 002 HangMan turns
INSERT INTO players_turns VALUES (007, 003, 002, 1, 0);
INSERT INTO players_turns VALUES (008, 004, 002, 0, 1);

-- Updating player 002 statistics
UPDATE players SET winnings = 1 WHERE id = 002;
UPDATE players SET losses = 2 WHERE id = 003;

-- Crating TicTacToe turns
INSERT INTO tictactoe_turns VALUES (001, 001, 003);
INSERT INTO tictactoe_turns VALUES (002, 002, 004);

-- Crating HangMan turns
INSERT INTO hangman_turns VALUES (001, 005, 007);
INSERT INTO hangman_turns VALUES (002, 006, 008);

-- Creating hangedmen
INSERT INTO hangedmen VALUES (001, 001, 0, 1);
INSERT INTO hangedmen VALUES (002, 002, 1, 0);

-- Creating hangedmen 001 secret words
INSERT INTO secretletters VALUES (001, 'h', 1, 1);
INSERT INTO secretletters VALUES (001, 'e', 2, 1);
INSERT INTO secretletters VALUES (001, 'l', 3, 1);
INSERT INTO secretletters VALUES (001, 'l', 4, 1);
INSERT INTO secretletters VALUES (001, 'o', 5, 1);

-- Creating hangedmen 002 secret words
INSERT INTO secretletters VALUES (002, 'g', 1, 1);
INSERT INTO secretletters VALUES (002, '0', 2, 0);
INSERT INTO secretletters VALUES (002, 'a', 3, 1);
INSERT INTO secretletters VALUES (002, 'l', 4, 1);
INSERT INTO secretletters VALUES (002, 's', 5, 0);

-- Creating boards
INSERT INTO boards VALUES (001, 001, 0);
INSERT INTO boards VALUES (002, 001, 0);

-- Creating board 001 squares
INSERT INTO squares VALUES (001, 1, 1, 'X');
INSERT INTO squares VALUES (001, 1, 2, 'X');
INSERT INTO squares VALUES (001, 1, 3, 'X');
INSERT INTO squares VALUES (001, 2, 1, 'O');
INSERT INTO squares VALUES (001, 2, 2, 'O');
INSERT INTO squares VALUES (001, 2, 3, null);
INSERT INTO squares VALUES (001, 3, 1, 'O');
INSERT INTO squares VALUES (001, 3, 2, null);
INSERT INTO squares VALUES (001, 3, 3, null);

-- Creating board 002 squareS
INSERT INTO squares VALUES (002, 1, 1, 'O');
INSERT INTO squares VALUES (002, 1, 2, 'O');
INSERT INTO squares VALUES (002, 1, 3, 'O');
INSERT INTO squares VALUES (002, 2, 1, 'X');
INSERT INTO squares VALUES (002, 2, 2, 'X');
INSERT INTO squares VALUES (002, 2, 3, null);
INSERT INTO squares VALUES (002, 3, 1, 'X');
INSERT INTO squares VALUES (002, 3, 2, null);
INSERT INTO squares VALUES (002, 3, 3, null);


/*truncate table squares;
truncate table secretletters;
truncate table hangedmen;
truncate table boards;
truncate table hangman_turns;
truncate table tictactoe_turns;
truncate table players_turns;
truncate table players;
truncate table players_types;
truncate table turns;
truncate table games;*/
