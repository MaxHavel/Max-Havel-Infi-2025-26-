-- Hausübung vom 19. März – DDL & Constraints
-- Aufgabe 3: Foreign Keys testen

-- 1. Foreign Keys aktivieren
PRAGMA foreign_keys = ON;

-- 2. Kategorie einfügen (als gültige Referenz)
INSERT INTO category (id, name) VALUES (1, 'Elektronik');

-- 3. Produkt mit gültiger category_id einfügen (soll funktionieren)
INSERT INTO products (id, name, price, category_id) VALUES (1, 'Laptop', 999.0, 1);

-- 4. Produkt mit ungültiger category_id versuchen (soll fehlschlagen)
INSERT INTO products (id, name, price, category_id) VALUES (2, 'Tablet', 499.0, 999);

-- Erwartete Fehlermeldung:
-- FOREIGN KEY constraint failed
-- Da Kategorie mit id=999 nicht existiert, wird der INSERT durch den
-- Foreign-Key-Constraint blockiert.
