Create Table category (
    id int primary key, 
    name varchar(255) not null
);

Create Table products (
    id int primary key,
    name varchar(255) not null, 
    price float default 0.0,
    category_id int not null,
    check (price >= 0.0),
    constraint fk_category 
    Foreign key (category_id) 
    references category(id)
);
