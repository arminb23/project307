CREATE DATABASE scouting_report
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE scouting_report;

CREATE TABLE players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age TINYINT UNSIGNED NOT NULL,
    nationality VARCHAR(100),
    club VARCHAR(150),
    strong_foot ENUM('Rechts', 'Links', 'Beidfüssig'),
    position ENUM(
        'Torwart',
        'Innenverteidiger',
        'Aussenverteidiger',
        'Defensives Mittelfeld',
        'Zentrales Mittelfeld',
        'Offensives Mittelfeld',
        'Flügelspieler',
        'Stürmer'
    ) NOT NULL,

    pace TINYINT UNSIGNED,
    shooting TINYINT UNSIGNED,
    passing TINYINT UNSIGNED,
    dribbling TINYINT UNSIGNED,
    defending TINYINT UNSIGNED,
    physical TINYINT UNSIGNED,
    technique TINYINT UNSIGNED,

    market_value VARCHAR(100),
    potential ENUM('Sehr hoch', 'Hoch', 'Mittel', 'Begrenzt'),
    transfer_interest ENUM('Sehr hoch', 'Mittel', 'Gering'),

    strengths TEXT,
    weaknesses TEXT,
    recommendation ENUM(
        'Unbedingt verpflichten',
        'Weiter beobachten',
        'Nur bei passendem Preis',
        'Nicht verpflichten'
    ),
    notes TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CHECK (age BETWEEN 5 AND 99),
    CHECK (pace BETWEEN 1 AND 99),
    CHECK (shooting BETWEEN 1 AND 99),
    CHECK (passing BETWEEN 1 AND 99),
    CHECK (dribbling BETWEEN 1 AND 99),
    CHECK (defending BETWEEN 1 AND 99),
    CHECK (physical BETWEEN 1 AND 99),
    CHECK (technique BETWEEN 1 AND 99)
);