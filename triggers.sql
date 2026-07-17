USE librarymanagement;

-- Mark a book copy as Borrowed after a borrow record is inserted.
DELIMITER //

CREATE TRIGGER trg_BorrowBook
AFTER INSERT ON BORROW_RECORDS
FOR EACH ROW
BEGIN
    UPDATE BOOK_COPIES
    SET STATUS = 'Borrowed'
    WHERE COPY_ID = NEW.COPY_ID;
END //

DELIMITER ;


-- Mark a book copy as Available after a return.
DELIMITER //

CREATE TRIGGER trg_ReturnBook
AFTER UPDATE ON BORROW_RECORDS
FOR EACH ROW
BEGIN
    IF NEW.RETURN_DATE IS NOT NULL THEN
        UPDATE BOOK_COPIES
        SET STATUS = 'Available'
        WHERE COPY_ID = NEW.COPY_ID;
    END IF;
END //

DELIMITER ;


-- Prevent insertion of a book with invalid page count.
DELIMITER //

CREATE TRIGGER trg_CheckPages
BEFORE INSERT ON BOOKS
FOR EACH ROW
BEGIN
    IF NEW.TOTAL_PAGES <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid page count';
    END IF;
END //

DELIMITER ;

-- Prevent deletion of a member with borrow records.
DELIMITER //

CREATE TRIGGER trg_PreventMemberDelete
BEFORE DELETE ON MEMBERS
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT *
        FROM BORROW_RECORDS
        WHERE MEMBER_ID = OLD.MEMBER_ID
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete member with borrow records';
    END IF;
END //

DELIMITER ;


-- Set fine payment status to Pending if it isn't provided.
DELIMITER //

CREATE TRIGGER trg_DefaultPaymentStatus
BEFORE INSERT ON FINES
FOR EACH ROW
BEGIN
    IF NEW.PAYMENT_STATUS IS NULL OR NEW.PAYMENT_STATUS = '' THEN
        SET NEW.PAYMENT_STATUS = 'Pending';
    END IF;
END //

DELIMITER ;