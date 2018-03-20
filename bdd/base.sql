-- Creator:       MySQL Workbench 6.3.8/ExportSQLite Plugin 0.1.0
-- Author:        Arnaud RIDE
-- Caption:       New Model
-- Project:       Name of the project
-- Changed:       2018-03-20 16:57
-- Created:       2018-03-20 16:00
PRAGMA foreign_keys = OFF;

-- Schema: mydb
ATTACH "mydb.sdb" AS "mydb";
BEGIN;
CREATE TABLE "mydb"."commerciaux"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "nom" VARCHAR(45),
  "prenom" VARCHAR(45)
);
CREATE TABLE "mydb"."magasins"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "denomination" VARCHAR(55),
  "adresse" VARCHAR(255),
  "Magasinscol" VARCHAR(45)
);
CREATE TABLE "mydb"."visites"(
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
CREATE INDEX "mydb"."visites.fk_visite_magasins1_idx" ON "visites" ("magasins_id");
CREATE INDEX "mydb"."visites.fk_visite_commerciaux1_idx" ON "visites" ("commerciaux_id");
CREATE TABLE "mydb"."produits"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "denomination" DOUBLE
);
CREATE TABLE "mydb"."produitsVisites"(
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
CREATE INDEX "mydb"."produitsVisites.fk_produitAChecker_visite1_idx" ON "produitsVisites" ("visite_id");
CREATE INDEX "mydb"."produitsVisites.fk_produitAChecker_produits1_idx" ON "produitsVisites" ("produit_id");
CREATE TABLE "mydb"."produitsMagasins"(
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
CREATE INDEX "mydb"."produitsMagasins.fk_produitInMagasin_Magasins_idx" ON "produitsMagasins" ("magasin_id");
CREATE INDEX "mydb"."produitsMagasins.fk_produitInMagasin_produits1_idx" ON "produitsMagasins" ("produit_id");
CREATE INDEX "mydb"."produitsMagasins.fk_produitMagasin_visite1_idx" ON "produitsMagasins" ("visite_id");
COMMIT;
