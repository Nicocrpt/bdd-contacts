CREATE DATABASE IF NOT EXISTS exo_contacts CHARACTER SET = "utf8" COLLATE = "utf8_general_ci" ;

USE exo_contacts ;

CREATE TABLE IF NOT EXISTS pays (
    iso_3 VARCHAR(3) PRIMARY KEY NOT NULL,
    nom VARCHAR(70) NOT NULL,
    iso_2 VARCHAR(2) NOT NULL,
    nationalité VARCHAR(50) NOT NULL
);
