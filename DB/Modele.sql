-- DROP DATABASE imprimerie;

-- CREATE DATABASE imprimerie;
-- \c imprimerie;

CREATE TABLE Niveau(
    idNiv SERIAL PRIMARY KEY,
    nom VARCHAR(30)
);

CREATE TABLE Specialite(
    idSpe SERIAL PRIMARY KEY,
    nom VARCHAR(30)
);

CREATE TYPE Genre AS ENUM('Homme','Femme');

CREATE TABLE Emp(
    idEmp SERIAL PRIMARY KEY,
    idNiveau INT,
    nom VARCHAR(30),
    prenom VARCHAR(30),
    genre Genre,
    dtn DATE,
    FOREIGN KEY (idNiveau) REFERENCES Niveau(idNiv)
);

CREATE TABLE EmpSpecialite(
    idEmp INT,
    idSpe INT,
    FOREIGN KEY (idEmp) REFERENCES Emp(idEmp),
    FOREIGN KEY (idSpe) REFERENCES Specialite(idSpe)
);
ALTER TABLE EmpSpecialite ADD CONSTRAINT UQ_ES UNIQUE(idEmp,idSpe);

CREATE TABLE Salaire(
    idSalaire SERIAl PRIMARY KEY,
    idEmployer INT,
    montant FLOAT,
    dateSalaire DATE
);

CREATE TABLE Service(
    idService SERIAL PRIMARY KEY,
    nom VARCHAR(30),
    marge FLOAT,
    image VARCHAR(50)
);

CREATE TABLE SpecialiteService(
    idService INT,
    idSpe INT,
    FOREIGN KEY (idService) REFERENCES Service(idService),
    FOREIGN KEY (idSpe) REFERENCES Specialite(idSpe)
);
ALTER TABLE SpecialiteService ADD CONSTRAINT UQ_SS UNIQUE(idService, idSpe);

