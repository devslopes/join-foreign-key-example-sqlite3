PRAGMA foreign_keys = ON;
DROP TABLE items;
DROP TABLE menus;

-- Create Menus Table
CREATE TABLE menus (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  description TEXT NOT NULL
);


-- Create Items Table
CREATE TABLE items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  price FLOAT NOT NULL,
  menu_id INTEGER,
  FOREIGN KEY(menu_id) REFERENCES menus(id)
);

--Create Breakfast Menu
INSERT INTO menus (name, description) VALUES ("Breakfast", "Come have some delicious breakfast");

-- Create Eggs and Bacon
INSERT INTO items (name, price, menu_id) VALUES ("Eggs and Bacon", 10.00, 1);

-- Create Eggs Benedict
INSERT INTO items (name, price, menu_id) VALUES ("Eggs Benedict", 12.00, 1);



--Create Lunch Menu
INSERT INTO menus (name, description) VALUES ("Lunch", "We got sandwiches and soup");

-- Create Tomato Panini
INSERT INTO items (name, price, menu_id) VALUES ("Tomato Panini", 12.00, 3);

-- Create Broccoli cheddar soup
INSERT INTO items (name, price, menu_id) VALUES ("Broccoli Cheddar Soup", 8.00, 2);

SELECT items.id, menus.id, items.name FROM items
  JOIN menus ON
  items.menu_id = menus.id;


