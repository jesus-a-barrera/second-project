-- ********************** INICIALIZING ********************** 


-- Reseting tables
TRUNCATE TABLE squares;
TRUNCATE TABLE secretletters;
TRUNCATE TABLE hangedmen;
TRUNCATE TABLE boards;
TRUNCATE TABLE hangman_turns;
TRUNCATE TABLE tictactoe_turns;
TRUNCATE TABLE players_turns;
TRUNCATE TABLE players;
TRUNCATE TABLE players_types;
TRUNCATE TABLE turns;
TRUNCATE TABLE games;

SET TRANSACTION NAME 'INITIAL_DATA_INSERTION';

-- Creating games
INSERT INTO games VALUES (001, 'TicTacToe', 2, 2);
INSERT INTO games VALUES (002, 'MangMan', 2, 2);

-- Creating players types
INSERT INTO players_types VALUES (001, 'HUMAN');
INSERT INTO players_types VALUES (002, 'BOT');

-- Creating players
INSERT INTO players VALUES (001, 001, 'Antonio', 0, 0);
INSERT INTO players VALUES (002, 001, 'Oliver', 0, 0);
INSERT INTO players VALUES (003, 001, 'Daniela', 0, 0);
INSERT INTO players VALUES (004, 001, 'Linda', 0, 0);
INSERT INTO players VALUES (005, 001, 'Jesus', 0, 0);
INSERT INTO players VALUES (006, 001, 'Carlos', 0, 0);
INSERT INTO players VALUES (007, 001, 'Fernanda', 0, 0);
INSERT INTO players VALUES (008, 001, 'Estuardo', 0, 0);
INSERT INTO players VALUES (009, 001, 'Eduardo', 0, 0);
INSERT INTO players VALUES (010, 001, 'Pamela', 0, 0);

COMMIT;

-- ********************** PLAYING ********************** 


-- Creating turns

-- Turn 001

SET TRANSACTION NAME 'TICTACTOE_TURN_1';

-- Creating TicTacToe turn
INSERT INTO turns VALUES (001, 001, 1);

-- Creating players 001 turn
INSERT INTO players_turns VALUES (001, 001, 001, 3, 1, 1);

-- Updating player 001 statistics
UPDATE players SET winnings = winnings + 1 WHERE id = 001;

-- Creating players 002 turn
INSERT INTO players_turns VALUES (003, 001, 002, 4, 0, 0);

-- Updating player 002 statistics
UPDATE players SET losses = losses + 1 WHERE id = 002;

-- Player 001 vrs player 002
INSERT INTO tictactoe_turns VALUES (001, 001, 003);

-- Creating board
INSERT INTO boards VALUES (001, 001, 0);

-- Creating squares
INSERT INTO squares VALUES (001, 1, 1, 'X');
INSERT INTO squares VALUES (001, 1, 2, 'X');
INSERT INTO squares VALUES (001, 1, 3, 'X');
INSERT INTO squares VALUES (001, 2, 1, 'O');
INSERT INTO squares VALUES (001, 2, 2, 'O');
INSERT INTO squares VALUES (001, 2, 3, null);
INSERT INTO squares VALUES (001, 3, 1, 'O');
INSERT INTO squares VALUES (001, 3, 2, null);
INSERT INTO squares VALUES (001, 3, 3, 'O');

COMMIT;

-- Turn 002

SET TRANSACTION NAME 'TICTACTOE_TURN_2';

-- Creating turn TicTacToe
INSERT INTO turns VALUES (002, 001, 1);

-- Creating players 001 turn
INSERT INTO players_turns VALUES (002, 002, 001, 4, 1, 1);

-- Updating player 001 statistics
UPDATE players SET winnings = winnings + 1 WHERE id = 001;

-- Creating players 002 turn
INSERT INTO players_turns VALUES (004, 002, 002, 3, 0, 0);

-- Updating player 002 statistics
UPDATE players SET losses = losses + 1 WHERE id = 002;

-- Player 001 vrs player 002
INSERT INTO tictactoe_turns VALUES (002, 004, 002);

-- Creating board
INSERT INTO boards VALUES (002, 002, 0);

-- Creating squares
INSERT INTO squares VALUES (002, 1, 1, 'O');
INSERT INTO squares VALUES (002, 1, 2, 'O');
INSERT INTO squares VALUES (002, 1, 3, 'O');
INSERT INTO squares VALUES (002, 2, 1, 'X');
INSERT INTO squares VALUES (002, 2, 2, 'X');
INSERT INTO squares VALUES (002, 2, 3, null);
INSERT INTO squares VALUES (002, 3, 1, 'X');
INSERT INTO squares VALUES (002, 3, 2, null);
INSERT INTO squares VALUES (002, 3, 3, 'X');

COMMIT;

-- Turn 003

SET TRANSACTION NAME 'HANGMAN_TURN_1';

-- Creating turn HangMan
INSERT INTO turns VALUES (003, 002, 1);

-- Creating players 001 turn
INSERT INTO players_turns VALUES (005, 003, 001, null, 0, 0);

-- Updating player 001 statistics
UPDATE players SET losses = losses + 1 WHERE id = 001;

-- Creating players 002 turn
INSERT INTO players_turns VALUES (007, 003, 002, 8, 1, 1);

-- Updating player 002 statistics
UPDATE players SET winnings = winnings + 1 WHERE id = 002;

-- Player 001 vrs player 002
INSERT INTO hangman_turns VALUES (001, 005, 007);

-- Creating hanged man
INSERT INTO hangedmen VALUES (001, 001, 0, 1);

-- Creating secret word
INSERT INTO secretletters VALUES (001, 'h', 1, 1);
INSERT INTO secretletters VALUES (001, 'e', 2, 1);
INSERT INTO secretletters VALUES (001, 'l', 3, 1);
INSERT INTO secretletters VALUES (001, 'l', 4, 1);
INSERT INTO secretletters VALUES (001, 'o', 5, 1);

COMMIT;

-- Turn 004

SET TRANSACTION NAME 'HANGMAN_TURN_2';

-- Creating turn HangMan
INSERT INTO turns VALUES (004, 002, 1);

-- Creating players 001 turn
INSERT INTO players_turns VALUES (006, 004, 001, null, 1, 1);

-- Updating player 001 statistics
UPDATE players SET winnings = winnings + 1 WHERE id = 001;

-- Creating players 002 turns
INSERT INTO players_turns VALUES (008, 004, 002, 11, 0, 0);

-- Updating player 002 statistics
UPDATE players SET losses = losses + 1 WHERE id = 002;

-- Player 001 vrs player 002
INSERT INTO hangman_turns VALUES (002, 006, 008);

-- Creating hanged man
INSERT INTO hangedmen VALUES (002, 002, 1, 0);

-- Creating secret word
INSERT INTO secretletters VALUES (002, 'g', 1, 1);
INSERT INTO secretletters VALUES (002, '0', 2, 0);
INSERT INTO secretletters VALUES (002, 'a', 3, 1);
INSERT INTO secretletters VALUES (002, 'l', 4, 1);
INSERT INTO secretletters VALUES (002, 's', 5, 0);

COMMIT;

-- Turn 5

SET TRANSACTION NAME 'HANGMAN_TURN_3';

-- Creating turn HangMan
INSERT INTO turns VALUES (005, 002, 1);

-- Creating players 003 turn
INSERT INTO players_turns VALUES (009, 005, 003, null, 1, 0);

-- Updating player 003 statistics
UPDATE players SET losses = losses + 1 WHERE id = 003;

-- Creating players 010 turn
INSERT INTO players_turns VALUES (010, 005, 010, 15, 0, 1);

-- Updating player 010 statistics
UPDATE players SET winnings = winnings + 1 WHERE id = 010;

-- Player 003 vrs player 010
INSERT INTO hangman_turns VALUES (003, 009, 010);

-- Creating hanged man
INSERT INTO hangedmen VALUES (003, 003, 0, 1);

-- Creating secret word
INSERT INTO secretletters VALUES (003, 'f', 1, 1);
INSERT INTO secretletters VALUES (003, 'o', 2, 1);
INSERT INTO secretletters VALUES (003, 'o', 3, 1);
INSERT INTO secretletters VALUES (003, 't', 4, 1);
INSERT INTO secretletters VALUES (003, 'b', 5, 1);
INSERT INTO secretletters VALUES (003, 'a', 6, 1);
INSERT INTO secretletters VALUES (003, 'l', 7, 1);
INSERT INTO secretletters VALUES (003, 'l', 8, 1);

COMMIT;

-- Turn 006

SET TRANSACTION NAME 'TICTACTOE_TURN_3';

-- Creating turn TicTacToe
INSERT INTO turns VALUES (006, 001, 1);

-- Creating players 006 turn
INSERT INTO players_turns VALUES (011, 006, 006, 3, 0, 1);

-- Updating player 006 statistics
UPDATE players SET winnings = winnings + 1 WHERE id = 006;

-- Creating players 001 turn
INSERT INTO players_turns VALUES (012, 006, 001, 4, 1, 0);

-- Updating player 001 statistics
UPDATE players SET losses = losses + 1 WHERE id = 001;

-- Player 006 vrs player 001
INSERT INTO tictactoe_turns VALUES (003, 011, 012);

-- Creating board
INSERT INTO boards VALUES (003, 003, 0);

-- Creating squares
INSERT INTO squares VALUES (003, 1, 1, 'X');
INSERT INTO squares VALUES (003, 1, 2, 'X');
INSERT INTO squares VALUES (003, 1, 3, 'X');
INSERT INTO squares VALUES (003, 2, 1, 'O');
INSERT INTO squares VALUES (003, 2, 2, null);
INSERT INTO squares VALUES (003, 2, 3, 'O');
INSERT INTO squares VALUES (003, 3, 1, 'O');
INSERT INTO squares VALUES (003, 3, 2, null);
INSERT INTO squares VALUES (003, 3, 3, 'O');

