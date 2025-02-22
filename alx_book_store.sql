CREATE DATABASE alx_book_store;

USE alx_book_store;

CREATE TABLE BOOKS (
  BOOK_ID INT PRIMARY KEY AUTO_INCREMENT,
  TITLE VARCHAR(130) NOT NULL,
  AUTHOR_ID INT,
  PRICE DOUBLE,
  PUBLICATION_DATE DATE,
  FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID)
);

CREATE TABLE AUTHORS (
  AUTHOR_ID INT PRIMARY KEY AUTO_INCREMENT,
  AUTHOR_NAME VARCHAR(215) NOT NULL
);

CREATE TABLE CUSTOMERS (
  CUSTOMER_ID INT PRIMARY KEY AUTO_INCREMENT,
  CUSTOMER_NAME VARCHAR(215) NOT NULL,
  EMAIL VARCHAR(215) UNIQUE,
  ADDRESS TEXT
);

CREATE TABLE ORDERS (
  ORDER_ID INT PRIMARY KEY AUTO_INCREMENT,
  CUSTOMER_ID INT,
  ORDER_DATE DATE,
  FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)  

);

CREATE TABLE ORDER_DETAILS  
 (
  ORDERDETAILID INT PRIMARY KEY AUTO_INCREMENT,
  ORDER_ID INT,
  BOOK_ID INT,
  QUANTITY DOUBLE,
  FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
  FOREIGN KEY (BOOK_ID) REFERENCES BOOKS(BOOK_ID)
);

