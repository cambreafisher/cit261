CREATE TABLE USR(
  usr_id SERIAL PRIMARY KEY
  ,f_name VARCHAR(30) NOT NULL
  ,l_name VARCHAR(30) NOT NULL
  ,pantry_list INTEGER 
  ,shop_list INTEGER
  ,usr_list INTEGER 
  ,FOREIGN KEY (pantry_list) REFERENCES PANTRY(pantry_id)
  ,FOREIGN KEY (shop_list) REFERENCES SHOPPING(item_id)
  ,FOREIGN KEY (usr_list) REFERENCES LIST(list_id)
);

CREATE TABLE PANTRY(
    pantry_id SERIAL PRIMARY KEY
    ,food_name VARCHAR(50)
    ,quantity INTEGER 
);

CREATE TABLE LIST(
    list_id SERIAL PRIMARY KEY
    ,list_name VARCHAR(50)
    ,food_id INTEGER
    ,quantity INTEGER
);

CREATE TABLE FOOD(
    food_id SERIAL PRIMARY KEY
    ,food_name varchar(50)
    ,expiration_date DATE 
);

CREATE TABLE SHOPPING(
    item_id serial PRIMARY KEY
    ,food_name varchar(50)
    ,quantity INTEGER
)