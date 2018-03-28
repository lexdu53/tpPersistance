-- Creator:       MySQL Workbench 6.3.8/ExportSQLite Plugin 0.1.0
-- Author:        Arnaud RIDE
-- Caption:       New Model
-- Project:       Name of the project
-- Changed:       2018-03-28 10:43
-- Created:       2018-03-20 16:00
PRAGMA foreign_keys = OFF;

-- Schema: platformeCom
ATTACH "platformeCom.sdb" AS "platformeCom";
BEGIN;
CREATE TABLE "platformeCom"."commerciaux"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "nom" VARCHAR(45),
  "prenom" VARCHAR(45)
);
INSERT INTO "commerciaux"("id","nom","prenom") VALUES(1, 'TRAVERSA', 'Thomas');
INSERT INTO "commerciaux"("id","nom","prenom") VALUES(2, 'MORIN', 'Thymoté');
INSERT INTO "commerciaux"("id","nom","prenom") VALUES(3, 'RIDE', 'Arnaud');
INSERT INTO "commerciaux"("id","nom","prenom") VALUES(4, 'DUGOUARD', 'Jean-Michel');
INSERT INTO "commerciaux"("id","nom","prenom") VALUES(5, 'PERRIN', 'Coralie');
INSERT INTO "commerciaux"("id","nom","prenom") VALUES(6, 'GOUGEON', 'Pierre');
CREATE TABLE "platformeCom"."magasins"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "denomination" VARCHAR(55),
  "adresse" VARCHAR(255)
);
INSERT INTO "magasins"("id","denomination","adresse") VALUES(1, 'Leclerc Saint Berthevin', '62 Boulevard Louis Armand CS 54239, 53942 Saint Berthevin Les Laval');
INSERT INTO "magasins"("id","denomination","adresse") VALUES(2, 'Leclerc Laval', '60 Avenue de la Communauté Européenne, 53000 Laval');
INSERT INTO "magasins"("id","denomination","adresse") VALUES(3, 'Hyper U Mayenne', '550 Boulevard Jean Monnet, 53100 Mayenne');
INSERT INTO "magasins"("id","denomination","adresse") VALUES(4, 'U Express', ' Zone Artisanale de l''Aubepin, 53970 L''Huisserie');
INSERT INTO "magasins"("id","denomination","adresse") VALUES(5, 'Super U Évron', 'Route de Laval, 53600 Évron');
INSERT INTO "magasins"("id","denomination","adresse") VALUES(6, 'Liddle Laval', '24 Rue Saint-Mélaine, 53000 Laval');
CREATE TABLE "platformeCom"."visites"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "date" DATETIME,
  "magasins_id" INTEGER NOT NULL,
  "commerciaux_id" INTEGER NOT NULL,
  CONSTRAINT "fk_visite_magasins1"
    FOREIGN KEY("magasins_id")
    REFERENCES "magasins"("id"),
  CONSTRAINT "fk_visite_commerciaux1"
    FOREIGN KEY("commerciaux_id")
    REFERENCES "commerciaux"("id")
);
CREATE INDEX "platformeCom"."visites.fk_visite_magasins1_idx" ON "visites" ("magasins_id");
CREATE INDEX "platformeCom"."visites.fk_visite_commerciaux1_idx" ON "visites" ("commerciaux_id");
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(1, '28-03-2018 09:00:00', 1, 2);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(2, '28-03-2018 10:00:00', 3, 4);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(3, '28-03-2018 09:00:00', 2, 1);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(4, '28-03-2018 14:00:00', 6, 1);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(5, '28-03-2018 09:00:00', 5, 3);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(6, '28-03-2018 11:00:00', 2, 2);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(7, '28-03-2018 13:30:00', 4, 3);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(8, '28-03-2018 16:00:00', 6, 4);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(9, '28-03-2018 09:00:00', 4, 6);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(10, '28-03-2018 09:00:00', 1, 5);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(11, '28-03-2018 13:00:00', 3, 6);
INSERT INTO "visites"("id","date","magasins_id","commerciaux_id") VALUES(12, '28-03-2018 14:00:00', 5, 5);
CREATE TABLE "platformeCom"."produits"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "denomination" TEXT
);
INSERT INTO "produits"("id","denomination") VALUES(1, 'Spaghetti lustucru');
INSERT INTO "produits"("id","denomination") VALUES(2, 'Conserve Bonduel Haricots Vert');
INSERT INTO "produits"("id","denomination") VALUES(3, 'Steak Haché Marque Repert');
INSERT INTO "produits"("id","denomination") VALUES(4, 'Mayonnaise Amora');
INSERT INTO "produits"("id","denomination") VALUES(5, 'Eau ');
INSERT INTO "produits"("id","denomination") VALUES(6, 'Lait');
INSERT INTO "produits"("id","denomination") VALUES(7, 'Clé usb 32GO');
INSERT INTO "produits"("id","denomination") VALUES(8, 'Javel 1L');
INSERT INTO "produits"("id","denomination") VALUES(9, 'Jambon');
INSERT INTO "produits"("id","denomination") VALUES(10, 'Lardon');
INSERT INTO "produits"("id","denomination") VALUES(11, 'Saumon');
INSERT INTO "produits"("id","denomination") VALUES(12, 'Fromage de Chevre');
INSERT INTO "produits"("id","denomination") VALUES(13, 'Brie Bon Mayennais');
CREATE TABLE "platformeCom"."produitsVisites"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "visite_id" INTEGER NOT NULL,
  "produit_id" INTEGER NOT NULL,
  CONSTRAINT "fk_produitAChecker_visite1"
    FOREIGN KEY("visite_id")
    REFERENCES "visites"("id"),
  CONSTRAINT "fk_produitAChecker_produits1"
    FOREIGN KEY("produit_id")
    REFERENCES "produits"("id")
);
CREATE INDEX "platformeCom"."produitsVisites.fk_produitAChecker_visite1_idx" ON "produitsVisites" ("visite_id");
CREATE INDEX "platformeCom"."produitsVisites.fk_produitAChecker_produits1_idx" ON "produitsVisites" ("produit_id");
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(1, 1, 1);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(2, 1, 2);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(3, 1, 3);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(4, 1, 4);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(5, 1, 5);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(6, 1, 6);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(7, 1, 7);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(8, 1, 8);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(9, 1, 9);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(10, 2, 1);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(11, 2, 2);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(12, 2, 4);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(13, 2, 3);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(14, 2, 8);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(15, 2, 12);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(16, 2, 6);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(17, 2, 9);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(18, 3, 1);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(19, 3, 2);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(20, 3, 4);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(21, 3, 6);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(22, 3, 9);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(23, 3, 10);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(24, 3, 11);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(25, 3, 3);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(26, 4, 1);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(27, 4, 3);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(28, 4, 2);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(29, 4, 4);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(30, 4, 7);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(31, 4, 8);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(32, 5, 3);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(33, 5, 4);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(34, 5, 2);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(35, 5, 7);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(36, 5, 6);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(37, 5, 9);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(38, 6, 11);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(39, 6, 2);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(40, 6, 3);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(41, 6, 4);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(42, 6, 13);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(43, 6, 12);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(44, 6, 8);
INSERT INTO "produitsVisites"("id","visite_id","produit_id") VALUES(45, 6, 9);
CREATE TABLE "platformeCom"."produitsMagasins"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "facet" INTEGER,
  "etagere" INTEGER,
  "presence" BOOLEAN,
  "magasin_id" INTEGER NOT NULL,
  "produit_id" INTEGER NOT NULL,
  "visite_id" INTEGER NOT NULL,
  CONSTRAINT "fk_produitInMagasin_Magasins"
    FOREIGN KEY("magasin_id")
    REFERENCES "magasins"("id"),
  CONSTRAINT "fk_produitInMagasin_produits1"
    FOREIGN KEY("produit_id")
    REFERENCES "produits"("id"),
  CONSTRAINT "fk_produitMagasin_visite1"
    FOREIGN KEY("visite_id")
    REFERENCES "visites"("id")
);
CREATE INDEX "platformeCom"."produitsMagasins.fk_produitInMagasin_Magasins_idx" ON "produitsMagasins" ("magasin_id");
CREATE INDEX "platformeCom"."produitsMagasins.fk_produitInMagasin_produits1_idx" ON "produitsMagasins" ("produit_id");
CREATE INDEX "platformeCom"."produitsMagasins.fk_produitMagasin_visite1_idx" ON "produitsMagasins" ("visite_id");
COMMIT;
