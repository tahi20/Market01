INSERT INTO category (category_name, description) VALUES
('Напитки', 'Вода, соки и газированные напитки'),
('Молочные продукты', 'Молоко, сыр, йогурт и другие продукты'),
('Бакалея', 'Крупы, макароны и другие продукты длительного хранения'),
('Сладости', 'Шоколад, конфеты и печенье'),
('Бытовая химия', 'Средства для уборки и стирки'),
('Фрукты', 'Яблоки, апельсины, бананы'),
('Овощи','Картофель,огурец,морковь');

INSERT INTO brands (brand_name, country) VALUES
('Coca-Cola', 'USA'),
('Pepsi', 'USA'),
('Nestle', 'Switzerland'),
('Milka', 'Switzerland'),
('Barilla', 'Italy'),
('Danone', 'France'),
('Dole', 'USA'),
('Bonduelle', 'France'),
('Ariel', 'USA');

INSERT INTO products (product_name, category_id, brand_id, sku, purchase_price, selling_price) VALUES
('Coca-Cola 1L', 1, 1, 'DRK-001', 45.00, 65.00),
('Pepsi 1L', 1, 2, 'DRK-002', 42.00, 60.00),
('Nestle Water 1L', 1, 3, 'DRK-003', 25.00, 40.00),
('Milk 1L', 2, 6, 'MLK-001', 55.00, 75.00),
('Yogurt 200g', 2, 6, 'MLK-002', 30.00, 45.00),
('Barilla Pasta 500g', 3, 5, 'GRN-001', 80.00, 110.00),
('Chocolate Milka 100g', 4, 4, 'SWT-001', 70.00, 95.00),
('Ariel Powder 1kg', 5, 9, 'CLN-001', 180.00, 230.00),
('Apple 1kg', 6, 7, 'FRT-001', 60.00, 85.00),
('Banana 1kg', 6, 7, 'FRT-002', 75.00, 100.00),
('Orange 1kg', 6, 7, 'FRT-003', 65.00, 90.00),
('Potato 1kg', 7, 8, 'VEG-001', 25.00, 40.00),
('Carrot 1kg', 7, 8, 'VEG-002', 30.00, 45.00),
('Cucumber 1kg', 7, 8, 'VEG-003', 40.00, 60.00),
('Chocolate Nestle 100g', 4, 3, 'SWT-002', 55.00, 80.00);

insert into stores (store_name, city, address, opening_date) values
('Market Center', 'Bishkek', 'Chuy Avenue 100', '2024-01-15'),
('Market South', 'Bishkek', 'Tokombaeva Street 15', '2024-06-10'),
('Market East', 'Kant', 'Gagarin Street 20', '2025-02-01');

INSERT INTO customers (first_name, last_name, phone, registration_date) values
('Aida', 'Ivanova', '+996700111111', '2026-01-10'),
('Bek', 'Sadykov', '+996700222222', '2026-02-15'),
('Amina', 'Osmonova', '+996700333333', '2026-03-20'),
('Timur', 'Asanov', '+996700444444', '2026-04-05'),
('Aliya', 'Bekova', '+996700555555', '2026-05-12');

INSERT INTO suppliers (supplier_name, contact_name, phone, city) values
('Fresh Trade', 'Azamat', '+996555111111', 'Bishkek'),
('Food Distribution', 'Nurlan', '+996555222222', 'Bishkek'),
('Global Market Supply', 'Elena', '+996555333333', 'Kant');

INSERT INTO employees (first_name, last_name, position, store_id, hire_date) values
('Aida', 'Sadykova', 'Cashier', 1, '2025-01-10'),
('Timur', 'Asanov', 'Manager', 1, '2024-06-15'),
('Aliya', 'Bekova', 'Cashier', 2, '2025-03-20'),
('Nurlan', 'Osmonov', 'Sales Assistant', 2, '2025-05-12'),
('Amina', 'Ivanova', 'Cashier', 3, '2025-08-01'),
('Bek', 'Sadykov', 'Manager', 3, '2024-09-10');

INSERT INTO orders (customer_id, store_id, employee_id, order_date, status) values
(1, 1, 1, '2026-11-01 10:15:00', 'COMPLETED'),
(2, 1, 2, '2026-11-01 11:30:00', 'COMPLETED'),
(3, 2, 3, '2026-11-02 12:10:00', 'COMPLETED'),
(4, 2, 4, '2026-11-03 14:20:00', 'COMPLETED'),
(5, 3, 5, '2026-11-04 16:45:00', 'COMPLETED'),
(1, 1, 1, '2026-11-05 09:30:00', 'COMPLETED'),
(2, 2, 3, '2026-11-06 13:00:00', 'PENDING'),
(3, 3, 5, '2026-11-07 15:25:00', 'COMPLETED'),
(4, 1, 2, '2026-11-08 17:40:00', 'CANCELLED'),
(5, 3, 6, '2026-11-09 18:15:00', 'COMPLETED');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) values
(1, 1, 2, 65.00),
(1, 4, 1, 75.00),
(1, 9, 2, 85.00),
(2, 6, 1, 110.00),
(2, 7, 3, 95.00),
(3, 2, 2, 60.00),
(3, 5, 2, 45.00),
(4, 8, 1, 230.00),
(4, 12, 5, 40.00),
(5, 10, 2, 100.00),
(5, 11, 1, 90.00),
(6, 3, 3, 40.00),
(6, 13, 2, 45.00),
(7, 1, 1, 65.00),
(7, 14, 2, 60.00),
(8, 15, 2, 80.00),
(8, 9, 1, 85.00),
(9, 6, 2, 110.00),
(10, 4, 2, 75.00),
(10, 12, 3, 40.00);

INSERT INTO inventory (store_id, product_id, quantity_in_stock, reorder_level, last_updated) values
(1, 1, 100, 20, current_timestamp),
(1, 2, 80, 20, current_timestamp),
(1, 3, 60, 15, current_timestamp),
(1, 4, 50, 10, current_timestamp),
(1, 5, 70, 15, current_timestamp),
(2, 6, 40, 10, current_timestamp),
(2, 7, 60, 15, current_timestamp),
(2, 8, 30, 10, current_timestamp),
(2, 9, 90, 20, current_timestamp),
(2, 10, 50, 10, current_timestamp),
(3, 11, 45, 10, current_timestamp),
(3, 12, 100, 25, current_timestamp),
(3, 13, 70, 15, current_timestamp),
(3, 14, 55, 10, current_timestamp),
(3, 15, 35, 10, current_timestamp);

INSERT INTO purchase_orders (supplier_id, store_id, order_date, expected_date, received_date, status) values
(1, 1, '2026-10-20', '2026-10-23', '2026-10-23', 'RECEIVED'),
(2, 2, '2026-10-22', '2026-10-26', '2026-10-26', 'RECEIVED'),
(3, 3, '2026-10-25', '2026-10-30', null, 'PENDING'),
(1, 2, '2026-11-01', '2026-11-05', '2026-11-05', 'RECEIVED'),
(2, 1, '2026-11-05', '2026-11-10', null, 'PENDING');

INSERT INTO purchase_order_items (purchase_order_id, product_id, quantity, unit_cost) values
(1, 1, 100, 45.00),
(1, 2, 80, 42.00),
(1, 4, 50, 55.00),
(2, 6, 40, 80.00),
(2, 7, 60, 70.00),
(2, 8, 30, 180.00),
(3, 9, 100, 60.00),
(3, 10, 80, 75.00),
(4, 11, 50, 65.00),
(4, 12, 100, 25.00),
(5, 13, 70, 30.00),
(5, 14, 50, 40.00);

INSERT INTO stock_movements (store_id, product_id, movement_type, quantity, movement_date, order_id, purchase_order_id) values
(1, 1, 'IN', 100, '2026-10-23 10:00:00', null, 1),
(1, 2, 'IN', 80, '2026-10-23 10:30:00', null, 1),
(1, 1, 'OUT', 2, '2026-11-01 10:15:00', 1, null),
(1, 4, 'OUT', 1, '2026-11-01 10:15:00', 1, null),
(1, 9, 'OUT', 2, '2026-11-01 10:15:00', 1, null),
(2, 6, 'IN', 40, '2026-10-26 12:00:00', null, 2),
(2, 7, 'IN', 60, '2026-10-26 12:30:00', null, 2),
(2, 8, 'IN', 30, '2026-10-26 13:00:00', null, 2),
(2, 8, 'OUT', 1, '2026-11-03 14:20:00', 4, null),
(3, 10, 'OUT', 2, '2026-11-04 16:45:00', 5, null),
(3, 12, 'OUT', 3, '2026-11-09 18:15:00', 10, null),
(3, 9, 'ADJUSTMENT', 5, '2026-11-10 09:00:00', null, null);
