-- SQLite Schema for Match Betting App
-- Generated from Firestore export

PRAGMA foreign_keys = ON;

-- Teams table
CREATE TABLE teams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    abbreviation TEXT NOT NULL
);

-- Users table
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    surname TEXT NOT NULL,
    image TEXT,
    firebase_id TEXT,
    winner_prediction_id INTEGER,
    FOREIGN KEY (winner_prediction_id) REFERENCES teams(id)
);

-- Matches table
CREATE TABLE matches (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    home_team_id INTEGER NOT NULL,
    away_team_id INTEGER NOT NULL,
    home_result INTEGER,
    away_result INTEGER,
    penalties_winner_id INTEGER,
    kick_off_date INTEGER NOT NULL,
    stage TEXT NOT NULL,
    knockout_stage INTEGER NOT NULL DEFAULT 0,
    FOREIGN KEY (home_team_id) REFERENCES teams(id),
    FOREIGN KEY (away_team_id) REFERENCES teams(id),
    FOREIGN KEY (penalties_winner_id) REFERENCES teams(id)
);

-- Bets table
CREATE TABLE bets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    home_goals_prediction INTEGER NOT NULL,
    away_goals_prediction INTEGER NOT NULL,
    penalties_winner_id INTEGER,
    FOREIGN KEY (match_id) REFERENCES matches(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (penalties_winner_id) REFERENCES teams(id)
);

-- Tables (betting groups/leagues)
CREATE TABLE betting_tables (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    owner_id INTEGER NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES users(id)
);

-- Table members (many-to-many relationship)
CREATE TABLE table_members (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    table_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (table_id) REFERENCES betting_tables(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    UNIQUE(table_id, user_id)
);

-- Settings table
CREATE TABLE settings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    key TEXT NOT NULL UNIQUE,
    value TEXT
);

-- Indexes for better query performance
CREATE INDEX idx_bets_match_id ON bets(match_id);
CREATE INDEX idx_bets_user_id ON bets(user_id);
CREATE INDEX idx_matches_kick_off_date ON matches(kick_off_date);
CREATE INDEX idx_table_members_table_id ON table_members(table_id);
CREATE INDEX idx_table_members_user_id ON table_members(user_id);
