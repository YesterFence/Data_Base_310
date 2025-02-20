CREATE TABLE class
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);
INSERT INTO class (name)
VALUES
('Wizard'),
('Priest'),
('Sorcerer'),
('Archer'),
('Rogue'),
('Assassin'),
('Warrior'),
('Knight');

CREATE TABLE weapon 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    type TEXT NOT NULL,
    damage_min INTEGER NOT NULL,
    damage_max INTEGER NOT NULL,
    damage_ave INTEGER NOT NULL,
    proj_shot INTEGER NOT NULL,
    proj_range REAL NOT NULL
);
INSERT INTO weapon (name, type, damage_min, damage_max, damage_ave, proj_shot, proj_range) 
VALUES

('Staff of Destruction',        'Staff',    45,  85,  65.0, 2, 8.55),
('Staff of Horror',             'Staff',    50,  90,  70.0, 2, 8.55),
('Staff of Necrotic Arcana',    'Staff',    50,  95,  72.5, 2, 8.55),
('Staff of Diabolic Secrets',   'Staff',    55,  95,  75.0, 2, 8.55),
('Staff of Astral Knowledge',   'Staff',    55, 100,  77.5, 2, 8.55),
('Staff of the Cosmic Whole',   'Staff',    60, 100,  80.0, 2, 8.55),
('Staff of the Vital Unity',    'Staff',    65, 110,  87.5, 2, 8.55),
('Wand of Arcane Flame',        'Wand',    110, 140, 125.0, 1, 9),
('Wand of Death',               'Wand',    115, 155, 135.0, 1, 9),
('Wand of Deep Sorcery',        'Wand',    120, 160, 140.0, 1, 9),
('Wand of Shadow',              'Wand',    125, 165, 145.0, 1, 9),
('Wand of Warning',             'Wand',    125, 170, 147.5, 1, 9),
('Wand of Recompense',          'Wand',    130, 175, 152.5, 1, 9),
('Wand of Evocation',           'Wand',    145, 180, 162.5, 1, 9),
('Redwood Bow',                 'Bow',     105, 135, 120.0, 3, 7.04),
('Golden Bow',                  'Bow',     125, 155, 140.0, 3, 7.04),
('Verdant Bow',                 'Bow',     135, 165, 150.0, 3, 7.04),
('Fey Magic',                   'Bow',     155, 185, 170.0, 3, 7.04),
('Innocent Blood',              'Bow',     165, 195, 180.0, 3, 7.04),
('Covert Havens',               'Bow',     175, 205, 190.0, 3, 7.04),
('Mystical Energy',             'Bow',     205, 235, 220.0, 3, 7.04),
('Mithril Dagger',              'Dagger',   70, 140, 105.0, 1, 5.6),
('Fire Dagger',                 'Dagger',   85, 155, 120.0, 1, 5.6),
('Ragetalon Dagger',            'Dagger',   95, 165, 130.0, 1, 5.6),
('Emerald Dagger',              'Dagger',  100, 175, 137.0, 1, 5.6),
('Agateclaw Dagger',            'Dagger',  105, 190, 147.0, 1, 5.6),
('Foul Malevolence',            'Dagger',  115, 200, 157.0, 1, 5.6),
('Sinister Deeds',              'Dagger',  125, 220, 172.0, 1, 5.6),
('Golden Sword',                'Sword',   150, 180, 165.0, 1, 3.5),
('Ravenheart Sword',            'Sword',   180, 255, 217.0, 1, 3.5),
('Dragonsoul Sword',            'Sword',   195, 255, 225.0, 1, 3.5),
('Archon Sword',                'Sword',   210, 255, 232.0, 1, 3.5),
('Skysplitter Sword',           'Sword',   210, 270, 240.0, 1, 3.5),
('Sword of Acclaim',            'Sword',   220, 275, 247.0, 1, 3.5),
('Sword of Splendor',           'Sword',   235, 290, 262.0, 1, 3.5);


CREATE TABLE class_weapon 
(
    class_id INTEGER,
    weapon_id INTEGER,
    PRIMARY KEY (class_id, weapon_id),
    FOREIGN KEY (class_id) REFERENCES class(id),
    FOREIGN KEY (weapon_id) REFERENCES weapon(id)
);
INSERT INTO class_weapon (class_id, weapon_id) 
VALUES
(1, 2), -- Wizard uses Staff
(2, 1), -- Priest uses Wand
(3, 1), -- Sorcerer uses Wand
(4, 5), -- Archer uses Bow
(5, 3), -- Rogue uses Dagger
(6, 3), -- Trickster uses Dagger
(7, 4), -- Warrior uses Sword
(8, 4); -- Knight uses Sword