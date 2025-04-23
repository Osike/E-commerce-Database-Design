-- Product Images Table
CREATE TABLE product_image (
    product_image_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    image_url VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Sample Data for Product Images Table
INSERT INTO product_image (product_id, image_url) VALUES 
(1, 'https://example.com/images/airmax97.png'),
(2, 'https://example.com/images/iphone14pro.png'),
(3, 'https://example.com/images/galaxys21.png'),
(4, 'https://example.com/images/adidastshirt.png');


-- Color Table
CREATE TABLE color (
    color_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

-- Sample Data for Color Table
INSERT INTO color (name) VALUES 
('Red'), 
('Black'), 
('White'), 
('Blue'), 
('Green');


-- Product Categories Table
CREATE TABLE product_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- Sample Data for Product Categories Table
INSERT INTO product_category (name) VALUES 
('Shoes'), 
('Electronics'), 
('Clothing'), 
('Accessories');


-- Product Table
CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    base_price DECIMAL(10, 2) NOT NULL,
    brand_id INT,
    category_id INT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- Sample Data for Product Table
INSERT INTO product (name, base_price, brand_id, category_id) VALUES 
('Air Max 97', 120.00, 1, 1),  -- Nike Shoes
('iPhone 14 Pro', 999.00, 2, 2),  -- Apple Electronics
('Galaxy S21', 799.00, 3, 2),  -- Samsung Electronics
('Adidas T-Shirt', 29.99, 4, 3);  -- Adidas Clothing
