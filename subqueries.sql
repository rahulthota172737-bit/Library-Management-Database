use librarymanagement;

-- Find the book with the maximum number of pages.
SELECT * FROM BOOKS
WHERE TOTAL_PAGES =(SELECT MAX(TOTAL_PAGES) FROM BOOKS);

-- Find the staff member with the highest salary.
SELECT * FROM STAFF
WHERE SALARY =(SELECT MAX(SALARY) FROM STAFF);

-- Find the member who joined the library first.
SELECT * FROM MEMBERS
WHERE MEMBERSHIP_DATE = (SELECT MIN(MEMBERSHIP_DATE) FROM MEMBERS);

-- Display books published after the average publication year.
SELECT * FROM BOOKS 
WHERE PUBLICATION_YEAR > (SELECT AVG(PUBLICATION_YEAR) FROM BOOKS );

-- Display books having more pages than the average.
SELECT * FROM BOOKS
WHERE TOTAL_PAGES>(SELECT AVG(TOTAL_PAGES) FROM BOOKS);

-- Display members who borrowed more books than the average.
SELECT M.MEMBER_ID,
       M.FIRST_NAME,
       M.LAST_NAME
FROM MEMBERS M
JOIN BORROW_RECORDS B
ON M.MEMBER_ID = B.MEMBER_ID
GROUP BY M.MEMBER_ID, M.FIRST_NAME, M.LAST_NAME
HAVING COUNT(*) >
(
    SELECT AVG(BOOK_COUNT)
    FROM (
        SELECT COUNT(*) AS BOOK_COUNT
        FROM BORROW_RECORDS
        GROUP BY MEMBER_ID
    ) AS AVG_BORROW
);

-- Display books that have never been borrowed.
SELECT * FROM BOOKS
WHERE BOOK_ID NOT IN (
    SELECT BC.BOOK_ID
    FROM BOOK_COPIES BC
    JOIN BORROW_RECORDS BR
    ON BC.COPY_ID = BR.COPY_ID
);

-- Display members who have never borrowed any books.
SELECT * FROM MEMBERS
WHERE MEMBER_ID NOT IN (
 SELECT MEMBER_ID FROM BORROW_RECORDS
); 

-- Display books that have never been reserved.
SELECT * FROM BOOKS
WHERE BOOK_ID NOT IN (
 SELECT BOOK_ID FROM RESERVATIONS
);

-- Find the highest fine amount.
SELECT * FROM FINES
WHERE FINE_AMOUNT=(SELECT MAX(FINE_AMOUNT) FROM FINES);