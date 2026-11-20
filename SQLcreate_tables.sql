Create table category(
category_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
category_name varchar(100) not null,
description text
) 
Create table brands (
    brand_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    brand_name varchar(100) not null unique,
    country varchar(100)
);

Create table stores (
    store_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    store_name varchar(150) not null,
    city varchar(100) not null,
    address varchar(255) not null,
    opening_date date,
    is_active boolean not null default true
);

Create table customers (
    customer_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name varchar(100) not null,
    last_name varchar(100),
    phone varchar(30),
    registration_date date not null
);

Create table suppliers (
    supplier_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    supplier_name varchar(150) not null,
    contact_name varchar(150),
    phone varchar(30),
    city varchar(100)
);

Create table products (
    product_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_name varchar(150) not null,
    category_id int not null references category(category_id),
    brand_id int not null references brands(brand_id),
    sku varchar(50) not null unique,
    purchase_price numeric(10,2) not null,
    selling_price numeric(10,2) not null,
    is_active boolean not null default true
);

Create table employees (
    employee_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    position varchar(100) not null,
    store_id int not null references stores(store_id),
    hire_date date not null
);

Create table orders (
    order_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customer_id int not null references customers(customer_id),
    store_id int not null references stores(store_id),
    employee_id int not null references employees(employee_id),
    order_date timestamp not null,
    status varchar(20) not null
);

Create table order_items (
    order_item_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_id int not null references orders(order_id),
    product_id int not null references products(product_id),
    quantity int not null,
    unit_price numeric(10,2) not null
);


Create table inventory (
    store_id int not null references stores(store_id),
    product_id int not null references products(product_id),
    quantity_in_stock int not null,
    reorder_level int not null,
    last_updated timestamp,
    primary key (store_id, product_id)
);

Create table purchase_orders (
    purchase_order_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    supplier_id int not null references suppliers(supplier_id),
    store_id int not null references stores(store_id),
    order_date date not null,
    expected_date date,
    received_date date,
    status varchar(20) not null
);

Create table purchase_order_items (
    purchase_order_item_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    purchase_order_id int not null references purchase_orders(purchase_order_id),
    product_id int not null references products(product_id),
    quantity int not null,
    unit_cost numeric(10,2) not null
);
Create table stock_movements (
    movement_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    store_id int not null references stores(store_id),
    product_id int not null references products(product_id),
    movement_type varchar(20) not null,
    quantity int not null,
    movement_date timestamp not null,
    order_id int references orders(order_id),
    purchase_order_id int references purchase_orders(purchase_order_id)
);

