-- Таблица orders
CREATE TABLE orders (
    order_id UUID PRIMARY KEY, 
    customer_id UUID NOT NULL, 
    purchase_timestamp TIMESTAMP NOT NULL, 
    delivered_customer_date TIMESTAMP
);
-- Таблица products_category
CREATE TABLE products_category (
    product_id UUID PRIMARY KEY, 
    product_category_name VARCHAR NOT NULL 
); 

-- Таблица order_items
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY, 
    order_id UUID NOT NULL, 
    delivery_time INT,
    product_id UUID NOT NULL, 
    seller_id UUID NOT null,
    price NUMERIC,
    sales_value NUMERIC,
    freight_value NUMERIC,
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES orders(order_id), 
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products_category(product_id) 
);

