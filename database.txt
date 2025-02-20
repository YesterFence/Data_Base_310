--------------------------------- TABLES --------------------------------
CREATE TABLE IF NOT EXISTS class 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL UNIQUE,
    hp INTEGER,
    mp INTEGER,
    att INTEGER,
    def INTEGER,
    spd INTEGER,
    dex INTEGER,
    vit INTEGER,
    wis INTEGER
);

CREATE TABLE IF NOT EXISTS weapon_types 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type_name TEXT NOT NULL UNIQUE
);


CREATE TABLE IF NOT EXISTS weapon 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    weapon_name TEXT NOT NULL,
    weapon_type_id INTEGER NOT NULL,
    FOREIGN KEY (weapon_type_id) REFERENCES weapon_types(id)
);

CREATE TABLE IF NOT EXISTS class_weapon_type
(
    class_id INTEGER,
    weapon_type_id INTEGER,
    FOREIGN KEY(class_id) REFERENCES class(id),
    FOREIGN KEY(weapon_id) REFERENCES weapon(id),
    PRIMARY KEY (class_id, weapon_id)
);



-------------------------------- INSERTS --------------------------------

INSERT INTO class (name, hp, mp, att, def, spd, dex, vit, wis) 
VALUES
('Wizard',      700, 385, 75, 25, 50, 75, 40, 60),
('Necromancer', 700, 385, 75, 25, 50, 60, 40, 75),
('Mystic',      700, 385, 65, 25, 60, 65, 40, 75),
('Priest',      700, 385, 55, 25, 55, 60, 40, 75),
('Sorcerer',    700, 385, 70, 25, 60, 60, 75, 60),
('Summoner',    700, 385, 60, 25, 60, 75, 40, 75),
('Archer',      750, 252, 75, 25, 55, 50, 40, 50),
('Huntress',    750, 305, 65, 25, 50, 60, 40, 60),
('Bard',        750, 385, 55, 25, 55, 70, 45, 75),
('Rogue',       750, 252, 55, 25, 65, 75, 40, 50),
('Assassin',    750, 305, 65, 25, 65, 75, 40, 60),
('Trickster',   750, 252, 65, 25, 75, 75, 40, 60),
('Warrior',     800, 252, 75, 25, 50, 50, 75, 50),
('Knight',      800, 252, 50, 40, 50, 50, 75, 50),
('Paladin',     800, 252, 55, 30, 55, 55, 60, 75);

INSERT INTO weapon_types (type_name) VALUES
('Staff'), 
('Wand'), 
('Bow'), 
('Dagger'), 
('Sword');

INSERT INTO weapon (weapon_name, weapon_type_id) VALUES

('Staff of Destruction', 1),
('Staff of Horror', 1),
('Staff of Necrotic Arcana', 1),
('Staff of Diabolic Secrets', 1),
('Staff of Astral Knowledge', 1),
('Staff of the Cosmic Whole', 1),
('Staff of the Vital Unity', 1),
('Staff of Extreme Prejudice', 1),
('Staff of Unholy Sacrifice', 1),
('Edictum Praetoris', 1),

('Wand of Arcane Flame', 2),
('Wand of Death', 2),
('Wand of Deep Sorcery', 2),
('Wand of Shadow', 2),
('Wand of Warning', 2),
('Wand of the Fallen', 2),
('Conducting Wand', 2),
('Abomination Wrath', 2),
('Theurgy Wand', 2),

('Redwood Bow', 3),
('Golden Bow', 3),
('Verdant Bow', 3),
('Bow of Fey Magic', 3),
('Bow of Innocent Blood', 3),
('Bow of Covert Havens', 3),
('Bow of Mystical Energy', 3),
('Leaf Bow', 3),
('Thousand Shot', 3),
('Bergenia Bow', 3),


('Mithril Dagger', 4),
('Fire Dagger', 4),
('Ragetalon Dagger', 4),
('Emeraldshard Dagger', 4),
('Agateclaw Dagger', 4),
('Dagger of Foul Malevolence', 4),
('Dagger of Sinister Deeds', 4),
('Spirit Dagger', 4),
('Corruption Cutter', 4),
('Toxin Tooth', 4),

('Golden Sword', 5),
('Ravenheart Sword', 5),
('Dragonsoul Sword', 5),
('Archon Sword', 5),
('Skysplitter Sword', 5),
('Sword of Acclaim', 5),
('Sword of Splendor', 5),
('Demon Blade', 5),
('Pirate Cutlass', 5),
('Indomptable', 5);


INSERT INTO class_weapon (class_id, weapon_id) VALUES
((SELECT id FROM class WHERE name = 'Wizard'), (SELECT id FROM weapon WHERE weapon_type = 1)),
((SELECT id FROM class WHERE name = 'Necromancer'), (SELECT id FROM weapon WHERE weapon_type = 1)),
((SELECT id FROM class WHERE name = 'Mystic'), (SELECT id FROM weapon WHERE weapon_type = 1)),
((SELECT id FROM class WHERE name = 'Priest'), (SELECT id FROM weapon WHERE weapon_type = 2)),
((SELECT id FROM class WHERE name = 'Sorcerer'), (SELECT id FROM weapon WHERE weapon_type = 2)),
((SELECT id FROM class WHERE name = 'Summoner'), (SELECT id FROM weapon WHERE weapon_type = 2)),
((SELECT id FROM class WHERE name = 'Archer'), (SELECT id FROM weapon WHERE weapon_type = 3)),
((SELECT id FROM class WHERE name = 'Huntress'), (SELECT id FROM weapon WHERE weapon_type = 3)),
((SELECT id FROM class WHERE name = 'Bard'), (SELECT id FROM weapon WHERE weapon_type = 3)),
((SELECT id FROM class WHERE name = 'Rogue'), (SELECT id FROM weapon WHERE weapon_type = 4)),
((SELECT id FROM class WHERE name = 'Assassin'), (SELECT id FROM weapon WHERE weapon_type = 4)),
((SELECT id FROM class WHERE name = 'Trickster'), (SELECT id FROM weapon WHERE weapon_type = 4)),
((SELECT id FROM class WHERE name = 'Warrior'), (SELECT id FROM weapon WHERE weapon_type = 5)),
((SELECT id FROM class WHERE name = 'Knight'), (SELECT id FROM weapon WHERE weapon_type = 5)),
((SELECT id FROM class WHERE name = 'Paladin'), (SELECT id FROM weapon WHERE weapon_type = 5));

INSERT INTO weapon (weapon_name, weapon_type) VALUES

('Wand of Arcane Flame', 'Wand'),
('Wand of Death', 'Wand'),
('Wand of Deep Sorcery', 'Wand'),
('Wand of Shadow', 'Wand'),
('Wand of Warning', 'Wand'),
('Wand of Recompense', 'Wand'),
('Wand of Evocation', 'Wand'),
('Crystal Wand', 'Wand'),
('Wand of the Fallen', 'Wand'),
('Conducting Wand', 'Wand'),
('Abomination Wrath', 'Wand'),
('Theurgy Wand', 'Wand'),

('Staff of Destruction', 'Staff'),
('Staff of Horror', 'Staff'),
('Staff of Necrotic Arcana', 'Staff'),
('Staff of Diabolic Secrets', 'Staff'),
('Staff of Astral Knowledge', 'Staff'),
('Staff of the Cosmic Whole', 'Staff'),
('Staff of the Vital Unity', 'Staff'),
('Staff of Extreme Prejudice', 'Staff'),
('Staff of Unholy Sacrifice', 'Staff'),
('Edictum Praetoris', 'Staff'),

('Mithril Dagger', 'Dagger'),
('Fire Dagger', 'Dagger'),
('Ragetalon Dagger', 'Dagger'),
('Emeraldshard Dagger', 'Dagger'),
('Agateclaw Dagger', 'Dagger'),
('Dagger of Foul Malevolence', 'Dagger'),
('Dagger of Sinister Deeds', 'Dagger'),
('Spirit Dagger', 'Dagger'),
('Corruption Cutter', 'Dagger'),
('Toxin Tooth', 'Dagger'),

('Redwood Bow', 'Bow'),
('Golden Bow', 'Bow'),
('Verdant Bow', 'Bow'),
('Bow of Fey Magic', 'Bow'),
('Bow of Innocent Blood', 'Bow'),
('Bow of Covert Havens', 'Bow'),
('Bow of Mystical Energy', 'Bow'),
('Leaf Bow', 'Bow'),
('Thousand Shot', 'Bow'),
('Bergenia Bow', 'Bow'),

('Golden Sword', 'Sword'),
('Ravenheart Sword', 'Sword'),
('Dragonsoul Sword', 'Sword'),
('Archon Sword', 'Sword'),
('Skysplitter Sword', 'Sword'),
('Sword of Acclaim', 'Sword'),
('Sword of Splendor', 'Sword'),
('Demon Blade', 'Sword'),
('Pirate Cutlass', 'Sword'),
('Indomptable', 'Sword');





CREATE TABLE IF NOT EXISTS stave 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);

INSERT INTO stave (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Staff of Destruction',         '45-85',  65,     18,   100, 2, 8.55, 0),
('2', 'Staff of Horror',              '50-90',  70,     18,   100, 2, 8.55, 0),
('3', 'Staff of Necrotic Arcana',     '50-95',  72.5,   18,   100, 2, 8.55, 0),
('4', 'Staff of Diabolic Secrets',    '55-95',  75,     18,   100, 2, 8.55, 0),
('5', 'Staff of Astral Knowledge',    '55-100', 77.5,   18,   100, 2, 8.55, 0),
('6', 'Staff of the Cosmic Whole',    '60-100', 80,     18,   95,  2, 8.55, 0),
('7', 'Staff of the Vital Unity',     '65-110', 87.5,   18,   100, 2, 8.55, 0),
('UT', 'Staff of Extreme Prejudice',  '80-95',  87.5,   11,   40,  10, 0, 0),
('UT', 'Staff of Unholy Sacrifice', '130-155',  570,    11.5, 55,  4, 8.05, 1),
('ST', 'Edictum Praetoris',          '40-105',  217.5,  15,   75,  3, 8.55, 0);


CREATE TABLE IF NOT EXISTS wand 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);

INSERT INTO wand (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Wand of Arcane Flame',   '110-140', 125,   18,   100, 1, 9, 1),
('2', 'Wand of Death',          '115-155', 135,   18,   100, 1, 9, 1),
('3', 'Wand of Deep Sorcery',   '120-160', 140,   18,   100, 1, 9, 1),
('4', 'Wand of Shadow',         '125-165', 145,   18,   100, 1, 9, 1),
('5', 'Wand of Warning',        '125-170', 147.5, 18,   100, 1, 9, 1),
('6', 'Wand of Recompense',     '130-175', 152.5, 18,   100, 1, 9, 1),
('7', 'Wand of Evocation',      '145-180', 162.5, 18,   100, 1, 9, 1),
('UT', 'Crystal Wand',          '105-150', 127.5, 15,   110, 1, 9, 0),
('UT', 'Wand of the Fallen',    '205-240', 222.5, 14.4,  85, 1, 9, 0),
('UT', 'Conducting Wand',       '100-175', 137.5, 17,   125, 1, 9, 0),
('ST', 'Abomination Wrath',     '300-335', 317.5, 11,    55, 1, 9, 0),
('ST', 'Theurgy Wand',          '125-130', 255,   20,    75, 2, 7.5, 1)

CREATE TABLE IF NOT EXISTS bow 
(
   id INTEGER PRIMARY KEY AUTOINCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);

INSERT INTO bow (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Redwood Bow',    '105-135',  120, 16, 100, 3, 7.04, 1),
('2', 'Golden Bow',     '125-155',  140, 16, 100, 3, 7.04, 1),
('3', 'Verdant Bow',    '135-165',  150, 16, 100, 3, 7.04, 1),
('4', 'Fey Magic',      '155-185',  170, 16, 100, 3, 7.04, 1),
('5', 'Innocent Blood', '165-195',  180, 16, 100, 3, 7.04, 1),
('6', 'Covert Havens',  '175-205',  190, 16, 100, 3, 7.04, 1),
('7', 'Mystical Energy', '205-235', 220, 16, 100, 3, 7.04, 1),
('UT', 'Leaf Bow',      '120-175',  147.5, 12, 140, 1, 7.2, 0),
('UT', 'Thousand Shot', '65-130',   97.5, 16.5, 200, 1, 7.59, 1),
('ST', 'Bergenia Bow',  '160-195',  177.5, 15, 100, 1, 8, 0);


CREATE TABLE IF NOT EXISTS dagger 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);

INSERT INTO dagger (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Mithril Dagger',     '70-140',   105, 14, 105, 1, 5.6, 0),
('2', 'Fire Dagger',        '85-155',   120, 14, 105, 1, 5.6, 0),
('3', 'Ragetalon Dagger',   '95-165',   130, 14, 105, 1, 5.6, 0),
('4', 'Emerald Dagger',     '100-175', 137.5, 14, 105, 1, 5.6, 0),
('5', 'Agateclaw Dagger',   '105-190',  147.5, 14, 105, 1, 5.6, 0),
('6', 'Foul Malevolence',   '115-200', 157.5, 14, 105, 1, 5.6, 0),
('7', 'Sinister Deeds',     '125-220', 172.5, 14, 105, 1, 5.6, 0),
('UT', 'Spirit Dagger',     '50-280',   165, 13, 105, 1, 5.2, 0),
('UT', 'Corruption Cutter', '85-100',   185, 14, 120, 2, 5.6, 0),
('ST', 'Toxin Tooth',       '265-320',  292.5, 10, 70, 1, 3.5, 0);

CREATE TABLE IF NOT EXISTS sword 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);

INSERT INTO sword (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Golden Sword',       '150-180', 165,     10, 100, 1, 3.5, 0),
('2', 'Ravenheart Sword',   '180-255', 217.5,   10, 100, 1, 3.5, 0),
('3', 'Dragonsoul Sword',   '195-255', 225,     10, 100, 1, 3.5, 0),
('4', 'Archon Sword',       '210-255', 232.5,   10, 100, 1, 3.5, 0),
('5', 'Skysplitter Sword',  '210-270', 240,     10, 100, 1, 3.5, 0),
('6', 'Sword of Acclaim',   '220-275', 247.5,   10, 100, 1, 3.5, 0),
('7', 'Sword of Splendor',  '235-290', 262.5,   10, 100, 1, 3.5, 0),
('UT', 'Demon Blade',       '150-175', 325,     13, 100, 2, 3.38, 0),
('UT', 'Pirate Cutlass',    '180-230', 205,     15, 130, 1, 3.3, 0),
('ST', 'Indomptable',       '550-600', 575,     8,   33, 1, 4.5, 1);



-- Armor Table
CREATE TABLE IF NOT EXISTS armor 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    armor_name TEXT NOT NULL,
    armor_type TEXT NOT NULL
);


CREATE TABLE IF NOT EXISTS class_armor
(
    class_id INTEGER,
    armor_id INTEGER,
    FOREIGN KEY(class_id) REFERENCES class(id),
    FOREIGN KEY(armor_id) REFERENCES armor(id),
    PRIMARY KEY (class_id, armor_id)
);


INSERT INTO class_armor (class_id, armor_id) VALUES
((SELECT id FROM class WHERE name = 'Priest'),      (SELECT id FROM armor WHERE armor_type = 'Robe')),
((SELECT id FROM class WHERE name = 'Sorcerer'),    (SELECT id FROM armor WHERE armor_type = 'Robe')),
((SELECT id FROM class WHERE name = 'Summoner'),    (SELECT id FROM armor WHERE armor_type = 'Robe')),
((SELECT id FROM class WHERE name = 'Bard'),        (SELECT id FROM armor WHERE armor_type = 'Robe')),
((SELECT id FROM class WHERE name = 'Wizard'),      (SELECT id FROM armor WHERE armor_type = 'Robe')),
((SELECT id FROM class WHERE name = 'Necromancer'), (SELECT id FROM armor WHERE armor_type = 'Robe')),
((SELECT id FROM class WHERE name = 'Mystic'),      (SELECT id FROM armor WHERE armor_type = 'Robe')),
((SELECT id FROM class WHERE name = 'Archer'),      (SELECT id FROM armor WHERE armor_type = 'Light Armor')),
((SELECT id FROM class WHERE name = 'Huntress'),    (SELECT id FROM armor WHERE armor_type = 'Light Armor')),
((SELECT id FROM class WHERE name = 'Rogue'),       (SELECT id FROM armor WHERE armor_type = 'Light Armor')),
((SELECT id FROM class WHERE name = 'Assassin'),    (SELECT id FROM armor WHERE armor_type = 'Light Armor')),
((SELECT id FROM class WHERE name = 'Trickster'),   (SELECT id FROM armor WHERE armor_type = 'Light Armor')),
((SELECT id FROM class WHERE name = 'Warrior'),     (SELECT id FROM armor WHERE armor_type = 'Heavy Armor')),
((SELECT id FROM class WHERE name = 'Knight'),      (SELECT id FROM armor WHERE armor_type = 'Heavy Armor')),
((SELECT id FROM class WHERE name = 'Paladin'),     (SELECT id FROM armor WHERE armor_type = 'Heavy Armor'));
