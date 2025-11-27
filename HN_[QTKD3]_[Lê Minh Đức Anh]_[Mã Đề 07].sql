CREATE DATABASE library;
USE library;

CREATE TABLE books (
bookid VARCHAR(10) PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(100),
price DECIMAL(10,2),
quantity INT
);

CREATE TABLE readers (
readerid VARCHAR(10) PRIMARY KEY,
readername VARCHAR(100),
phonenumber VARCHAR(15),
address VARCHAR(255)
);

CREATE TABLE borrowrecords (
readerid VARCHAR(10),
bookid VARCHAR(10),
borrowdate DATE,
returndate DATE,
borrowedquantity INT,
FOREIGN KEY (readerid) REFERENCES readers(readerid),
FOREIGN KEY (bookid) REFERENCES books(bookid)
);
-- Phần 2  THAO TÁC DỮ LIỆU (DML)--
INSERT INTO books(bookid, title, author, price, quantity) VALUES 
('S001', 'Dac Nhan Tam', 'Dale Carnegie', 80000, 20),
('S002', 'Nha Gia Kim', 'Paulo Coelho', 75000, 15),
('S003', 'De Men Phieu Luu Ky', 'To Hoai', 50000, 30);
INSERT INTO readers(readerid, readername, phonenumber, address) VALUES 
('DG01', 'Nguyen Thi Hue', '0987654321', 'Ha Noi'),
('DG02', 'Tran Van Nam', '0981122334', 'Hai Duong'),
('DG03', 'Le Thi Lan', '0989988776', 'Ha Noi'),
('DG04', 'Pham Minh Khoi', '0912345678', 'Da Nang'),
('DG05', 'Hoang Van Dat', '0905123456', 'Ha Noi');
INSERT INTO borrowrecords(readerid, bookid, borrowdate, returndate, borrowedquantity) VALUES
('DG01', 'S001', '2023-11-01', '2023-11-08', 1),
('DG01', 'S002', '2023-11-05', '2023-11-12', 2),
('DG02', 'S001', '2023-11-10', NULL, 1),
('DG03', 'S003', '2023-11-15', '2023-11-20', 3),
('DG04', 'S002', '2023-11-15', NULL, 1),
('DG04', 'S003', '2023-11-18', NULL, 2),
('DG05', 'S001', '2023-11-20', '2023-11-25', 1);
UPDATE books 
SET price = 90000
WHERE bookid = 'S001';
UPDATE borrowrecords
SET returndate = '2023-11-20'
WHERE readerid = 'DG02' AND bookid = 'S001';
DELETE FROM borrowrecords
WHERE readerid = 'DG05' AND bookid = 'S001';
 -- PHẦN 3: TRUY VẤN DỮ LIỆU --
 
select 
from  books(bookId, Title, Author)
set title = 'To Hoai'
SELECT readerid, bookid, borrowdate
FROM borrowrecords;
