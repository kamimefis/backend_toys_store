CREATE DATABASE toys_store;
USE toys_store;

CREATE TABLE categories(
id INT AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(70) NOT NULL
);

CREATE TABLE products(
id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(70) NOT NULL,
image_url VARCHAR(400) NOT NULL,
price FLOAT NOT NULL,
discount INT,
category_id INT NOT NULL,
FOREIGN KEY(category_id) REFERENCES categories(id)
);

INSERT INTO categories (category_name) VALUES('Random'), ('Robots'), ('Dolls');
SELECT * FROM categories;
INSERT INTO categories (category_name) VALUES('Paper dolls');

INSERT INTO products(product_name, image_url, price, discount, category_id) VALUES 
('Finger puppets', 'https://i.pinimg.com/564x/ba/e4/e1/bae4e15b232d47ab51b562161eeebd33.jpg', 15.00, 0, 1),
('AquaPets', 'https://i.pinimg.com/564x/9a/ac/94/9aac94d2a2dfa1badb35df8730aaa6a4.jpg', 20.00, 10, 1),
('ALF plush', 'https://i.pinimg.com/236x/78/62/04/786204450ef1b8d58a1204dc483f4e70.jpg', 49.99, 0, 1);

INSERT INTO products(product_name, image_url, price, discount, category_id) VALUES 
('Mr. Roboto #1', 'https://i.pinimg.com/236x/ac/3a/45/ac3a45c65de6892e29ddad9be13883ed.jpg', 300.50, 0, 2),
('Mr. Roboto #2', 'https://i.pinimg.com/236x/6f/b2/d6/6fb2d6ab5287080916a318380f091e55.jpg', 299.99, 10, 2),
('Mr. Roboto #3', 'https://i.pinimg.com/236x/fb/59/48/fb59482adad84d4c360180ace50564cd.jpg', 329.99, 0, 2),
('Mr. Roboto #4', 'https://i.pinimg.com/236x/a5/12/71/a51271e3dca927641964c875b34fff86.jpg', 250.99, 30, 2),
('Mr. Roboto #5', 'https://i.pinimg.com/236x/e0/0a/a6/e00aa6b03aee42d676a0d51c4bce43a0.jpg', 330.00, 0, 2),
('Mr. Roboto #6', 'https://i.pinimg.com/236x/2f/48/c6/2f48c612b3f1b7cd095e3035bb5f0b82.jpg', 300.00, 0, 2);

INSERT INTO products(product_name, image_url, price, discount, category_id) VALUES 
('Paper doll #1', 'https://i.pinimg.com/564x/f0/ab/c5/f0abc5ac870a09b4e6c8cb14c81b5995.jpg', 10.50, 0, 4),
('Paper doll #2', 'https://i.pinimg.com/236x/1b/d3/fd/1bd3fd140e6d264117ab6198fdd23c41.jpg', 9.99, 5, 4),
('Paper doll #3', 'https://i.pinimg.com/236x/4a/dc/a4/4adca40896706c256d4f125cb3580570.jpg', 15.00, 0, 4),
('Paper doll #4', 'https://i.pinimg.com/236x/11/fc/8e/11fc8e1b3775e9f0df4cf97636788939.jpg', 13.99, 0, 4),
('Paper doll #5', 'https://i.pinimg.com/236x/e8/16/6d/e8166df079b356f6491afbe31e001fb6.jpg', 10.50, 0, 4),
('Paper doll #6', 'https://i.pinimg.com/236x/65/77/4d/65774de7fcc77c2830049a3f79c2dc94.jpg', 15.50, 0, 4);

SELECT * FROM products WHERE category_id= 1;