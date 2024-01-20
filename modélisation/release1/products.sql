DROP DATABASE IF EXISTS e_coffee_db;
CREATE DATABASE e_coffee_db;
USE e_coffee_db ;


CREATE TABLE IF NOT EXISTS categories (
id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS products (
id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  sku VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(500),
  unit_price DOUBLE NOT NULL,
  image_url VARCHAR(255) ,
  active BOOLEAN DEFAULT true,
  units_in_stock INT,
   production_date DATETIME,
  updated_date DATETIME,
  categories_id BIGINT NOT NULL,
  CONSTRAINT fk_categories FOREIGN KEY (categories_id) REFERENCES categories(id)
);


-- add data----------------------------------------------------------------------------------

INSERT INTO categories (name) 
VALUES 
('BEANS'),
('COFFEE MACHINES');


INSERT INTO products (sku,name,description,unit_price,image_url,units_in_stock,production_date,categories_id)
VALUES
('ETHIOP-BEAN-STRONG-45','Ethiopian beans','Ethiopian coffee beans are not just a beverage but a journey through the diverse landscapes and rich traditions of Ethiopia, offering a sensory experience that transcends the ordinary.',
14.50,'https://images.unsplash.com/photo-1501492673258-2bcfc17241fd?q=80&w=988&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
25,NOW(),1),
('HAITIA-BEAN-SOFT-65','Haitian beans','In a cup of Haitian coffee, one can taste the richness of the island’s soil and the resilience of its people. Every sip is a tribute to Haiti’s enduring spirit and a testament to the potential of its coffee. Haitian coffee beans offer a remarkable and enriching experience, inviting coffee connoisseurs to explore a less-traveled path in the coffee world.',
26.50,'https://images.unsplash.com/photo-1501492673258-2bcfc17241fd?q=80&w=988&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
56,NOW(),1),

('DELONG-COFFEE-CAPS-141','Delonghi Machine','What sets Delonghi apart is its integrated grinding technology, ensuring that each cup is made from freshly ground beans, maximizing flavor and aroma. The machines efficient thermoblock heating system ensures a quick and even temperature control, which is essential for the perfect cup of coffee.',
350.50,'https://images.unsplash.com/photo-1637029436347-e33bf98a5412?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
121,NOW(),2),
('LAVAZZ-COFFEE-BARIST-45','Lavazza Machine','Lavazza s machines often feature simple one-touch operation and pre-programmed settings for various coffee types, ensuring consistent results every time. What makes the Lavazza machine stand out is its ability to extract the rich and full-bodied flavor characteristic of Lavazza coffee.',
455.50,'https://images.unsplash.com/photo-1637029436347-e33bf98a5412?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
72,NOW(),2);


