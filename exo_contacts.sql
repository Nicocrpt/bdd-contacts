CREATE DATABASE IF NOT EXISTS exo_contacts CHARACTER SET = "utf8" COLLATE = "utf8_general_ci" ;

USE exo_contacts ;

CREATE TABLE IF NOT EXISTS pays (
    iso_3 VARCHAR(3) PRIMARY KEY NOT NULL,
    nom VARCHAR(70) NOT NULL,
    iso_2 VARCHAR(2) NOT NULL,
    nationalité VARCHAR(50) NOT NULL
);

INSERT INTO pays (iso_3, nom, iso_2, nationalité) VALUES
("FRA", "France", "FR", "Francais"),
("ISL", "Islande", "IS", "Islandais"),
("JPN", "Japon", "JP", "Japonais"),
("AUS", "Australie", "AU", "Australien"),
("CHN", "Chine", "CN", "Chinois"),
("NPL", "Nepal", "NP", "Nepalais"),
("DEU", "Allemagne", "DE", "Allemand"),
("BEL", "Belgique", "BE", "Belge"),
("GBR", "Royaume-Uni", "GB", "Anglais"),
("NGA", "Nigeria", "NG", "Nigerien");

SELECT * FROM pays ;

CREATE TABLE IF NOT EXISTS contacts (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom VARCHAR(70) NOT NULL,
    prenom(70) NOT NULL,
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    cp VARCHAR(10) NOT NULL,
    ville VARCHAR(70) NOT NULL,
    pays_iso_3 VARCHAR(3) NOT NULL,
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
);

