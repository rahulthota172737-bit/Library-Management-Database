INSERT INTO authors(AUTHOR_ID,AUTHOR_NAME,COUNTRY,DATEOFBIRTH)
VALUES
(84321,'Elena Rostova','Russia','1982-04-14'),
(84322,'Julian Martinez','France','1975-09-23'),
(84323,'Chloe Dubois','India','1990-12-05'),
(84324,'Priya Sharma','United Kingdom','1980-01-25'),
(84325,'Arthur Pendelton','Nigeria','1993-08-11'),
(84326,'Marcus Adebayo','China','1964-06-30'),
(84327,'Mei Lin','Spain','1988-02-17');

INSERT INTO CATEGORIES(CATEGORY_ID,CATEGORY_NAME,DESCRIPTION)
VALUES
(1,'Animation','Movies, cartoons, and visual stories'),
(2,'Education','Learning, skills, and knowledge growth'),
(3,'Vehicles','Cars, bikes, and vehicle content'),
(4,'How to Style','Tips, guides, and lifestyle ideas'),
(5,'Crime','Crime stories, cases, and investigations'),
(6,'Fantasy','Magical worlds, myths, and imagination');

INSERT INTO BOOKS
(BOOK_ID, TITLE, ISBN, PUBLICATION_YEAR, PUBLISHER, AUTHOR_ID, CATEGORY_ID, LANGUAGE, EDITION, TOTAL_PAGES)
VALUES
(1, 'Dragon Realm', '9781234567890', '2015', 'Fantasy House', 84321, 6, 'English', 1, 350),
(2, 'Learn SQL Basics', '9781234567891', '2020', 'Tech Books', 84322, 2, 'English', 2, 280),
(3, 'Modern Cars', '9781234567892', '2018', 'Auto World', 84323, 3, 'English', 1, 220),
(4, 'Style Guide', '9781234567893', '2019', 'Life Press', 84324, 4, 'English', 3, 190),
(5, 'Hidden Crimes', '9781234567894', '2017', 'Mystery House', 84325, 5, 'English', 1, 410),
(6, 'Magic Kingdom', '9781234567895', '2016', 'Fantasy House', 84326, 6, 'English', 2, 520),
(7, 'Animation World', '9781234567896', '2021', 'Media Books', 84327, 1, 'English', 1, 300),
(8, 'Advanced Learning', '9781234567897', '2022', 'Education Press', 84321, 2, 'English', 1, 450),
(9, 'Vehicle Technology', '9781234567898', '2023', 'Auto World', 84322, 3, 'English', 2, 370),
(10, 'Crime Investigation', '9781234567899', '2020', 'Detective Books', 84323, 5, 'English', 1, 390);

INSERT INTO MEMBERS
(MEMBER_ID, FIRST_NAME, LAST_NAME, GENDER, DATE_OF_BIRTH, PHONE, EMAIL, ADDRESS, MEMBERSHIP_DATE, MEMBERSHIP_STATUS)
VALUES
(1001, 'Aarav', 'Sharma', 'Male', '1998-05-12', 9876543210, 'aarav.sharma@gmail.com', 'Hyderabad', '2024-01-15', 'Active'),
(1002, 'Ananya', 'Patel', 'Female', '2000-08-22', 9876543211, 'ananya.patel@gmail.com', 'Mumbai', '2024-02-10', 'Active'),
(1003, 'Rohan', 'Verma', 'Male', '1995-03-18', 9876543212, 'rohan.verma@gmail.com', 'Delhi', '2023-11-20', 'Active'),
(1004, 'Priya', 'Reddy', 'Female', '1997-07-30', 9876543213, 'priya.reddy@gmail.com', 'Chennai', '2024-03-05', 'Expired'),
(1005, 'Vikram', 'Singh', 'Male', '1992-11-25', 9876543214, 'vikram.singh@gmail.com', 'Bangalore', '2023-09-12', 'Active'),
(1006, 'Meera', 'Kumar', 'Female', '2001-01-14', 9876543215, 'meera.kumar@gmail.com', 'Pune', '2024-04-18', 'Active'),
(1007, 'Arjun', 'Das', 'Male', '1996-06-09', 9876543216, 'arjun.das@gmail.com', 'Kolkata', '2023-12-01', 'Expired'),
(1008, 'Sneha', 'Nair', 'Female', '1999-10-17', 9876543217, 'sneha.nair@gmail.com', 'Kerala', '2024-05-22', 'Active'),
(1009, 'Rahul', 'Mehta', 'Male', '1994-04-03', 9876543218, 'rahul.mehta@gmail.com', 'Ahmedabad', '2024-06-10', 'Active'),
(1010, 'Kavya', 'Joshi', 'Female', '2002-09-28', 9876543219, 'kavya.joshi@gmail.com', 'Jaipur', '2024-07-01', 'Pending');

INSERT INTO STAFF
(STAFF_ID, FIRST_NAME, LAST_NAME, PHONE, EMAIL, ROLE, HIRE_DATE, SALARY)
VALUES
(5001, 'Rahul', 'Mehta', 9123456780, 'rahul.mehta@library.com', 'Librarian', '2022-01-15', 45000),
(5002, 'Sneha', 'Rao', 9123456781, 'sneha.rao@library.com', 'Assistant Librarian', '2023-03-20', 35000),
(5003, 'Arjun', 'Patel', 9123456782, 'arjun.patel@library.com', 'Manager', '2021-06-10', 60000),
(5004, 'Priya', 'Sharma', 9123456783, 'priya.sharma@library.com', 'Catalog Manager', '2022-09-05', 42000),
(5005, 'Vikram', 'Singh', 9123456784, 'vikram.singh@library.com', 'Clerk', '2024-01-12', 28000),
(5006, 'Ananya', 'Verma', 9123456785, 'ananya.verma@library.com', 'Librarian', '2020-11-25', 48000),
(5007, 'Kiran', 'Reddy', 9123456786, 'kiran.reddy@library.com', 'Assistant', '2023-07-18', 32000),
(5008, 'Meera', 'Nair', 9123456787, 'meera.nair@library.com', 'Administrator', '2021-04-22', 55000),
(5009, 'Amit', 'Joshi', 9123456788, 'amit.joshi@library.com', 'Security Staff', '2022-12-01', 30000),
(5010, 'Kavya', 'Das', 9123456789, 'kavya.das@library.com', 'Data Entry Operator', '2024-02-14', 27000);

INSERT INTO BOOK_COPIES
(COPY_ID, BOOK_ID, BARCODE, PURCHASE_DATE, SHELF_LOCATION, STATUS)
VALUES
(101, 1, 'BC100001', '2023-01-10', 'Shelf A1', 'Available'),
(102, 2, 'BC100002', '2023-02-15', 'Shelf B2', 'Issued'),
(103, 3, 'BC100003', '2022-11-20', 'Shelf C1', 'Available'),
(104, 4, 'BC100004', '2024-03-05', 'Shelf D3', 'Available'),
(105, 5, 'BC100005', '2023-06-18', 'Shelf E1', 'Lost'),
(106, 6, 'BC100006', '2022-08-25', 'Shelf A2', 'Issued'),
(107, 7, 'BC100007', '2024-01-12', 'Shelf F1', 'Available'),
(108, 8, 'BC100008', '2023-09-30', 'Shelf B3', 'Damaged'),
(109, 9, 'BC100009', '2024-04-20', 'Shelf C2', 'Available'),
(110, 10, 'BC100010', '2023-12-11', 'Shelf E2', 'Issued');

INSERT INTO BORROW_RECORDS
(BORROW_ID, MEMBER_ID, COPY_ID, STAFF_ID, BORROW_DATE, DUE_DATE, RETURN_DATE, BORROW_STATUS)
VALUES
(90001, 1001, 101, 5001, '2024-01-20', '2024-02-03', '2024-02-01', 'Returned'),
(90002, 1002, 102, 5002, '2024-02-15', '2024-02-29', NULL, 'Borrowed'),
(90003, 1003, 103, 5003, '2024-03-10', '2024-03-24', '2024-03-22', 'Returned'),
(90004, 1004, 104, 5004, '2024-04-05', '2024-04-19', NULL, 'Overdue'),
(90005, 1005, 105, 5005, '2024-05-12', '2024-05-26', NULL, 'Lost'),
(90006, 1006, 106, 5006, '2024-06-01', '2024-06-15', '2024-06-14', 'Returned'),
(90007, 1007, 107, 5007, '2024-07-18', '2024-08-01', NULL, 'Borrowed'),
(90008, 1008, 108, 5008, '2024-08-22', '2024-09-05', '2024-09-04', 'Returned'),
(90009, 1009, 109, 5009, '2024-09-10', '2024-09-24', NULL, 'Borrowed'),
(90010, 1010, 110, 5010, '2024-10-01', '2024-10-15', NULL, 'Overdue');

INSERT INTO RESERVATIONS
(RESERVATION_ID, MEMBER_ID, BOOK_ID, RESERVATION_DATE, RESERVATION_STATUS, EXPIRY_DATE)
VALUES
(70001, 1001, 1, '2024-01-05', 'Completed', '2024-01-20'),
(70002, 1002, 2, '2024-02-10', 'Pending', '2024-02-25'),
(70003, 1003, 3, '2024-03-15', 'Cancelled', '2024-03-30'),
(70004, 1004, 4, '2024-04-12', 'Pending', '2024-04-27'),
(70005, 1005, 5, '2024-05-08', 'Completed', '2024-05-23'),
(70006, 1006, 6, '2024-06-18', 'Pending', '2024-07-03'),
(70007, 1007, 7, '2024-07-20', 'Completed', '2024-08-04'),
(70008, 1008, 8, '2024-08-25', 'Cancelled', '2024-09-09'),
(70009, 1009, 9, '2024-09-10', 'Pending', '2024-09-25'),
(70010, 1010, 10, '2024-10-05', 'Completed', '2024-10-20');

INSERT INTO FINES
(FINE_ID, BORROW_ID, FINE_AMOUNT, FINE_REASON, FINE_DATE, PAYMENT_STATUS, PAYMENT_DATE)
VALUES
(80001, 90002, 50, 'Late Return', '2024-03-05', 'Paid', '2024-03-06'),
(80002, 90004, 120, 'Overdue', '2024-04-25', 'Unpaid', NULL),
(80003, 90005, 500, 'Lost Book', '2024-05-30', 'Paid', '2024-06-02'),
(80004, 90007, 80, 'Late Return', '2024-08-05', 'Unpaid', NULL),
(80005, 90009, 100, 'Overdue', '2024-09-30', 'Pending', NULL),
(80006, 90010, 150, 'Late Return', '2024-10-20', 'Paid', '2024-10-22'),
(80007, 90003, 40, 'Late Return', '2024-03-25', 'Paid', '2024-03-26'),
(80008, 90006, 60, 'Late Return', '2024-06-16', 'Paid', '2024-06-17'),
(80009, 90008, 30, 'Damage', '2024-09-06', 'Unpaid', NULL),
(80010, 90001, 20, 'Late Return', '2024-02-04', 'Paid', '2024-02-05');
