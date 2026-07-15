-- Create index on BOOKS(ISBN)
CREATE INDEX idx_books_isbn
ON BOOKS(ISBN);

-- Create index on AUTHORS(AUTHOR_NAME)
CREATE INDEX idx_authors_author_name
ON AUTHORS(AUTHOR_NAME);

-- Create index on MEMBERS(EMAIL)
CREATE INDEX idx_members_email
ON MEMBERS(EMAIL);

-- Create index on BOOK_COPIES(BARCODE)
CREATE INDEX idx_book_copies_barcode
ON BOOK_COPIES(BARCODE);

-- Create index on STAFF(EMAIL)
CREATE INDEX idx_staff_email
ON STAFF(EMAIL);