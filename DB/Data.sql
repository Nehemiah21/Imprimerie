------------------------- NIVEAU ----------------------------

INSERT INTO Niveau VALUES (DEFAULT,'Initialisation');
INSERT INTO Niveau VALUES (DEFAULT,'Moyen');
INSERT INTO Niveau VALUES (DEFAULT,'Expert');


----------------------- SPECIALITE (11) ----------------------------


INSERT INTO Specialite VALUES (DEFAULT,'Maquettiste');
INSERT INTO Specialite VALUES (DEFAULT,'Composition');
INSERT INTO Specialite VALUES (DEFAULT,'Mise en pages');
INSERT INTO Specialite VALUES (DEFAULT,'Photogravure');
INSERT INTO Specialite VALUES (DEFAULT,'Flashage');
INSERT INTO Specialite VALUES (DEFAULT,'Épreuve');
INSERT INTO Specialite VALUES (DEFAULT,'Bon à graver');
INSERT INTO Specialite VALUES (DEFAULT,'Imposition');
INSERT INTO Specialite VALUES (DEFAULT,'Création des plaques');
INSERT INTO Specialite VALUES (DEFAULT,'Impression');
INSERT INTO Specialite VALUES (DEFAULT,'Façonnage');


---------------------- EMPLOYER (10) ------------------------------

INSERT INTO Emp VALUES (DEFAULT,3,'RANDRIANANTENAINA','Fenohasina','Femme','01-01-2000');
INSERT INTO Emp VALUES (DEFAULT,2,'RABETOKONTANY','Hasina','Homme','01-01-2000');
INSERT INTO Emp VALUES (DEFAULT,1,'ANDRIAMAHOLY','Miantsa','Femme','01-01-2000');
INSERT INTO Emp VALUES (DEFAULT,3,'MIALIHERISOA','Rian`ala','Femme','01-01-2000');
INSERT INTO Emp VALUES (DEFAULT,1,'ANDRIANAIVOSOA','Johan','Homme','01-01-2000');
INSERT INTO Emp VALUES (DEFAULT,3,'RAKOTOMALALA','Denis','Homme','01-01-2000');
INSERT INTO Emp VALUES (DEFAULT,2,'RATEFIARIVONY','Jaona','Homme','01-01-2000');
INSERT INTO Emp VALUES (DEFAULT,1,'FANAMBONY','Benjamin','Homme','01-01-2000');
INSERT INTO Emp VALUES (DEFAULT,1,'RAJAOBELINA','Andoniaina','Femme','01-01-2000');

 
---------------------- EMPLOYER SPECIALITE (10) -------------------

INSERT INTO EmpSpecialite VALUES (1,1);
INSERT INTO EmpSpecialite VALUES (2,2);
INSERT INTO EmpSpecialite VALUES (3,3);
INSERT INTO EmpSpecialite VALUES (4,4);
INSERT INTO EmpSpecialite VALUES (5,5);
INSERT INTO EmpSpecialite VALUES (6,6);
INSERT INTO EmpSpecialite VALUES (7,7);
INSERT INTO EmpSpecialite VALUES (8,8);
INSERT INTO EmpSpecialite VALUES (8,9);
INSERT INTO EmpSpecialite VALUES (9,10);
INSERT INTO EmpSpecialite VALUES (9,11);

----------------------------- SALAIRE (10) ---------------------------------

INSERT INTO Salaire VALUES (DEFAULT,1,1000,'19-01-2023');
INSERT INTO Salaire VALUES (DEFAULT,2,2000,'19-01-2023');
INSERT INTO Salaire VALUES (DEFAULT,3,3000,'19-01-2023');
INSERT INTO Salaire VALUES (DEFAULT,4,4000,'19-01-2023');
INSERT INTO Salaire VALUES (DEFAULT,5,5000,'19-01-2023');
INSERT INTO Salaire VALUES (DEFAULT,6,6000,'19-01-2023');
INSERT INTO Salaire VALUES (DEFAULT,7,7000,'19-01-2023');
INSERT INTO Salaire VALUES (DEFAULT,8,8000,'19-01-2023');
INSERT INTO Salaire VALUES (DEFAULT,9,9000,'19-01-2023');
INSERT INTO Salaire VALUES (DEFAULT,10,10000,'19-01-2023');


---------------------------- Service (7) -----------------------------------

INSERT INTO Service VALUES (DEFAULT,'Calendriers',5,'calendar.jpg');
INSERT INTO Service VALUES (DEFAULT,'Cartes de voeux',5,'carteDeVoeux.jpg');
INSERT INTO Service VALUES (DEFAULT,'Chemises à rabats',15,'chemiseRabat.jpg');
INSERT INTO Service VALUES (DEFAULT,'Dépliants',15,'depliant.jpg');   
INSERT INTO Service VALUES (DEFAULT,'Flyers',20,'flyers.jpg');
INSERT INTO Service VALUES (DEFAULT,'Set de table et menu',20,'tableMenu.jpg');
INSERT INTO Service VALUES (DEFAULT,'Affiches offset, grand format',25,'affiche.jpg');

---------------------------- SpecialiteService ------------------------
 
INSERT INTO SpecialiteService VALUES (1,1);
INSERT INTO SpecialiteService VALUES (1,2);
INSERT INTO SpecialiteService VALUES (1,3);

INSERT INTO SpecialiteService VALUES (2,4);
INSERT INTO SpecialiteService VALUES (2,5);

INSERT INTO SpecialiteService VALUES (3,6);
INSERT INTO SpecialiteService VALUES (3,7);
INSERT INTO SpecialiteService VALUES (3,8);

INSERT INTO SpecialiteService VALUES (4,9);
INSERT INTO SpecialiteService VALUES (4,8);

INSERT INTO SpecialiteService VALUES (5,7);
INSERT INTO SpecialiteService VALUES (5,6);
INSERT INTO SpecialiteService VALUES (5,5);

INSERT INTO SpecialiteService VALUES (6,4);
INSERT INTO SpecialiteService VALUES (6,3);

INSERT INTO SpecialiteService VALUES (7,2);
INSERT INTO SpecialiteService VALUES (7,10);
INSERT INTO SpecialiteService VALUES (7,11);









/* -------------------------------------- Texte d` introduction -----------------------------------


Fourni’Tout propose une large gamme de produits, classiques, originaux, numérotés, personnalisés…

Nous composons et fabriquons tous les documents imprimés en technique d’impression dite de « feuille à feuille » cela signifie une impression sur des presses offset ou numérique.

De la carte de visite, jusqu’au catalogue de 200 pages, ainsi que les plans de ville, calendriers, imprimés commerciaux…

Tout ce qui est imprimable sur un support papier allant de 60g à 400g d’épaisseur et dans un format de papier de 52x74cm maximum.

Fourni’Tout imprime également du grand format sur traceur.

*/
 
 
 
 
 
 
 

