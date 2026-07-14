USE librarymanagement;

-- Update a member's phone number.
UPDATE MEMBERS
SET PHONE=9876543999
WHERE MEMBER_ID=1003;

-- Update a member's email address.
UPDATE MEMBERS
SET EMAIL='vikram.singh2026@gmail.com'
WHERE MEMBER_ID=1005;

-- Change a member's membership status.
UPDATE MEMBERS
SET MEMBERSHIP_STATUS='Active'
WHERE MEMBER_ID=1004;

-- Update the publisher of a book.
UPDATE BOOKS
SET PUBLISHER='Global Tech Publications'
WHERE BOOK_ID=5;

-- Increase the salary of a staff member.
UPDATE STAFF
SET SALARY = SALARY + 5000
WHERE STAFF_ID=5003;

-- Change the status of a book copy.
UPDATE BOOK_COPIES
SET STATUS='Available'
WHERE COPY_ID = 106;

-- Delete a reservation record.
DELETE FROM RESERVATIONS WHERE RESERVATION_ID=70003;

-- Delete a fine record.
DELETE FROM FINES WHERE FINE_ID=80007;

-- Delete a member record (only if there are no related borrow records).
DELETE FROM MEMBERS
WHERE Member_ID = 1010
  AND NOT EXISTS (
      SELECT 1
      FROM BORROW_RECORDS
      WHERE Member_ID = 1010
  );
  
-- Delete a book copy.
SELECT *
FROM BORROW_RECORDS
WHERE COPY_ID = 108;
DELETE FROM FINES WHERE BORROW_ID = 90008;
DELETE FROM BORROW_RECORDS WHERE COPY_ID = 108;
DELETE FROM BOOK_COPIES WHERE COPY_ID=108;
