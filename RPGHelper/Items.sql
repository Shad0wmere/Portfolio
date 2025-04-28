CREATE DATABASE dnd_database;

USE dnd_database;


DROP TABLE IF EXISTS `magic_items`;
CREATE TABLE magic_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    charactertier VARCHAR(255) NOT NULL
    );

INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Fire', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Ring of Invisibility', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Healing', 'Barbarian,Paladin,Ranger,Fighter,Bard,Rogue,Sorcerer,Warlock,Wizard,Cleric,Druid,Monk,Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Amulet of Protection+1', 'Barbarian,Paladin,Ranger,Fighter,Bard,Rogue,Sorcerer,Warlock,Wizard,Cleric,Druid,Monk,Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Fire+1', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Ring of Protection+1', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Minor Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Amulet of Protection+2', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Fire+2', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Ring of Protection+2', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Major Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Amulet of Protection+3', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Fire+3', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Ring of Protection+3', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Amulet of Protection', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Fire+4', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Ring of Protection+4', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Amulet of Protection+4', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Fire+5', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Ring of Protection+5', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Amulet of Protection+5', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Frost', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Ring of Invisibility', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Elixir of Health', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Ice', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Ring of Invisibility', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Cloak of Silence', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Elvish boots', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Longsword of Speed', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Boots of Jumping', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Boots of Striding', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Ring of Speed/Haste', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Frost+1', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Necklace of Protection+1', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Minor Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Mace+2', 'Barbarian, Paladin, Ranger, Fighter, Bard, Sorcerer, Warlock, Cleric, Druid, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Frost+2', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Necklace of Protection+2', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Major Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Mace+3', 'Barbarian, Paladin, Ranger, Fighter, Bard, Sorcerer, Warlock, Cleric, Druid, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Frost+3', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Necklace of Protection+3', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Mace+1', 'Barbarian, Paladin, Ranger, Fighter, Bard, Sorcerer, Warlock, Cleric, Druid, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Frost+4', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Necklace of Protection+4', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Mace+4', 'Barbarian, Paladin, Ranger, Fighter, Bard, Sorcerer, Warlock, Cleric, Druid, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Sword of Frost+5', 'Barbarian, Paladin, Ranger, Fighter, Bard');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Scimitar+5', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Cleric, Druid');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Healing', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Longbow+5', 'Barbarian, Paladin, Ranger, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Scimitar+4', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Cleric, Druid');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Longbow+4', 'Barbarian, Paladin, Ranger, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Scimitar+3', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Cleric, Druid');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Longbow+3', 'Barbarian, Paladin, Ranger, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Scimitar+2', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Cleric, Druid');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Longbow+2', 'Barbarian, Paladin, Ranger, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Potion of Longetivity', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Sorcerer, Warlock, Wizard, Cleric, Druid, Monk, Artificer');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Scimitar+1', 'Barbarian, Paladin, Ranger, Fighter, Bard, Rogue, Cleric, Druid');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Chainmail+1', 'Paladin, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Plate+5', 'Paladin, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Chainmail+4', 'Paladin, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Plate+4', 'Paladin, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Chainmail+3', 'Paladin, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Plate+3', 'Paladin, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Chainmail+2', 'Paladin, Fighter');
INSERT INTO magic_items (item_name, charactertier) VALUES ('Plate+2', 'Paladin, Fighter');


DROP TABLE IF EXISTS archgroup;
CREATE TABLE archgroup (
    id INT AUTO_INCREMENT PRIMARY KEY,
    archtype VARCHAR(15) NOT NULL
);

INSERT INTO archgroup (archtype) VALUES ('Barbarian');
INSERT INTO archgroup (archtype) VALUES ('Paladin');
INSERT INTO archgroup (archtype) VALUES ('Ranger');
INSERT INTO archgroup (archtype) VALUES ('Fighter');
INSERT INTO archgroup (archtype) VALUES ('Bard');
INSERT INTO archgroup (archtype) VALUES ('Rogue');
INSERT INTO archgroup (archtype) VALUES ('Sorcerer');
INSERT INTO archgroup (archtype) VALUES ('Warlock');
INSERT INTO archgroup (archtype) VALUES ('Wizard');
INSERT INTO archgroup (archtype) VALUES ('Cleric');
INSERT INTO archgroup (archtype) VALUES ('Druid');
INSERT INTO archgroup (archtype) VALUES ('Monk');
INSERT INTO archgroup (archtype) VALUES ('Artificer');

DROP TABLE IF EXISTS description;
CREATE TABLE description (
    id INT AUTO_INCREMENT PRIMARY KEY,         
    itemid INT NOT NULL,                       
    detailedinfo VARCHAR(255) NOT NULL,        
    FOREIGN KEY (itemid) REFERENCES magic_items(id) 
);


INSERT INTO description (itemid, detailedinfo) VALUES ('1', 'a metal sword, can generate flames by thought for extra fire damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('2', 'a brass ring, allows the user to become invisible when wearing');
INSERT INTO description (itemid, detailedinfo) VALUES ('3', 'potion of green liquid, heals 1d4 damage after drinking');
INSERT INTO description (itemid, detailedinfo) VALUES ('4', 'an amulet, adds +1 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('5', 'a metal sword, can generate flames by thought for extra fire damage, +1 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('6', 'a ring with blue stone, adds +1 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('7', 'potion of red liquid, heals 1d3 damage after drinking');
INSERT INTO description (itemid, detailedinfo) VALUES ('8', 'an amulet, adds +2 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('9', 'a metal sword, can generate flames by thought for extra fire damage, +2 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('10', 'a ring with yellow stone, adds +2 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('11', 'a long vial of liquid in glass, heals 1d10 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('12', 'an amulet, adds +3 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('13', 'a metal sword, can generate flames by thought for extra fire damage, +3 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('14', 'a ring of oynx, adds +3 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('15', 'a potion liquid, heals 1d6 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('16', 'an amulet, adds +1 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('17', 'a metal sword, can generate flames by thought for extra fire damage, +4 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('18', 'a ring of your favorite color, adds +4 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('19', 'a a potion liquid, heals 1d6 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('20', 'an amulet, adds +4 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('21', 'a metal sword with Lion art, can generate flames by thought for extra fire damage, +5 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('22', 'a ring of your favorite color, adds +5 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('23', 'a a potion liquid, heals 1d6 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('24', 'an amulet of your favorite design, adds +5 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('25', 'a metal sword, can generate freezing frost by thought for extra cold damage, +1 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('26', 'a brass ring, allows the user to become invisible when wearing');
INSERT INTO description (itemid, detailedinfo) VALUES ('27', 'a a potion liquid, heals 1d6 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('28', 'an ornate elixir bottle 10 inches tall of glasswork, heals 3d12 damage when drank');
INSERT INTO description (itemid, detailedinfo) VALUES ('29', 'a metal sword, can generate ice by thought for extra cold damage, +1 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('30', 'a brass ring, allows the user to become invisible when wearing');
INSERT INTO description (itemid, detailedinfo) VALUES ('31', 'an expertly tailored cloak with silver specks, 95% chance of moving silently');
INSERT INTO description (itemid, detailedinfo) VALUES ('32', 'boots of elvish design, 95% chance of moving silently in all terrain');
INSERT INTO description (itemid, detailedinfo) VALUES ('33', 'longsword that increases speed, wielder has first initiative');
INSERT INTO description (itemid, detailedinfo) VALUES ('34', 'boots, increases jumping distance to 100 feet');
INSERT INTO description (itemid, detailedinfo) VALUES ('35', 'boots, increases movement rate x3 every round');
INSERT INTO description (itemid, detailedinfo) VALUES ('36', 'a gold ring, user goes first on all initiative checks');
INSERT INTO description (itemid, detailedinfo) VALUES ('37', 'a glowing blue and white sword that deals frost damage, +1 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('38', 'necklace, adds +1 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('39', 'potion of red liquid, heals 1d3 damage after drinking');
INSERT INTO description (itemid, detailedinfo) VALUES ('40', 'Mace, does +2 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('41', 'a glowing blue and white sword that deals frost damage, +2 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('42', 'necklace, adds +2 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('43', 'a long vial of liquid in glass, heals 1d10 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('44', 'Mace, does +3 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('45', 'a glowing blue and white sword that deals frost damage, +3 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('46', 'necklace, adds +3 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('47', 'potion of green liquid, heals 1d4 damage after drinking');
INSERT INTO description (itemid, detailedinfo) VALUES ('48', 'Mace, does +1 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('49', 'a glowing blue and white sword that deals frost damage, +4 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('50', 'necklace, adds +4 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('51', 'potion of green liquid, heals 1d4 damage after drinking');
INSERT INTO description (itemid, detailedinfo) VALUES ('52', 'Mace, does +4 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('53', 'a glowing blue and white sword that deals frost damage, +5 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('54', 'an ornate scimitar, +5 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('55', 'potion of green liquid, heals 1d4 damage after drinking');
INSERT INTO description (itemid, detailedinfo) VALUES ('56', 'a longbow, +5 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('57', 'a scimitar of rare quality, does +4 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('58', 'a longbow, +4 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('59', 'a scimitar, +3 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('60', 'a longbow, +3 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('61', 'a scimitar, +2 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('62', 'a longbow, +2 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('63', 'a common looking potion, reduces age by 1d20 years');
INSERT INTO description (itemid, detailedinfo) VALUES ('64', 'a scimitar, +1 damage');
INSERT INTO description (itemid, detailedinfo) VALUES ('65', 'a suit of fine quality chainmail, +1 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('66', 'a suit of plate mail, +5 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('67', 'a suit of rare quality chainmail, +4 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('68', 'a suit of rare quality plate mail, +4 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('69', 'a suit of expert quality chainmail, +3 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('70', 'a suit of expert quality plate mail, +3 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('71', 'a suit of good quality chainmail, +2 to armor class');
INSERT INTO description (itemid, detailedinfo) VALUES ('72', 'a suit of good quality plate mail, +2 to armor class');



