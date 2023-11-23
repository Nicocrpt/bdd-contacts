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
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(70) NOT NULL,
    prenom VARCHAR(70) NOT NULL,
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT NOT NULL,
    cp VARCHAR(10) NOT NULL,
    ville VARCHAR(70) NOT NULL,
    pays_iso_3 VARCHAR(3) NOT NULL,
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
);

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, adresse, cp, ville, pays_iso_3) VALUES
("Pierre", "Dupont", "1987-01-08", "Homme", "123 rue de la Rue", "84070", "Avignon", "FRA"),
("Hanz", "Schruder", "1992-03-12", "Homme", "Kundendienst Hauptstraße 5", "01234", "Berlin", "DEU"),
("Marie","Wallone", "1980-07-03", "Femme", "Rue du Chat Botté 42", "1000", "Bruxelles", "BEL"),
("Dave", "Howard", "1996-03-01", "Homme", "31 avenue de Westminster", "W1A 1AA", "Londres", "GBR"),
("Aysha", "Maré", "1986-11-11", "Femme", "15, Lagos Street", "FCT 100001", "Abuja", "NGA"),
("Hinoki", "Mori", "2000-01-01", "Femme", "1-12-34 Sakura-dori, Chuo-ku", "123-4567", "Tokyo", "JPN"),
("Szavik", "Rjevk", "1960-04-05", "Homme", "Bakari 22", "123", "Reykjavik", "ISL"),
("Asuno", "Kuo", "2002-05-05", "Homme", "56 rue des Lanternes", "100010", "Pekin", "CHN"),
("Dalaï", "Lama", "0000-00-01", "Homme", "Boudha Marg, Ward No. 7", "44600", "Kathmandu", "NPL"),
("Trevor", "McDundee", "1980-01-02", "Homme", "12 Koala Avenue", "NSW 2000", "Sydney", "AUS");

SELECT * FROM contacts ;

