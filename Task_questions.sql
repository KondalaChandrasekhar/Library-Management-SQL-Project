USE LIBRARY_MANAGEMENT;

-- TASK 1
-- Question 1 - How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?

SELECT b.book_Title as BOOK_NAME ,lb.library_branch_BranchName AS BRANCH_NAME ,bc.book_copies_No_Of_Copies NO_OF_COPIES
FROM tbl_book b 
JOIN tbl_book_copies bc ON
b.book_BookID = bc.book_copies_BookID
JOIN tbl_library_branch lb ON
lb.library_branch_BranchID = bc.book_copies_BranchID
WHERE b.book_Title = 'The Lost Tribe'
  AND lb.library_branch_BranchName = 'Sharpstown';
  
-- TASK 2
-- QUESTION 2 - How many copies of the book titled "The Lost Tribe" are owned by each library branch?
SELECT b.book_Title as BOOK_NAME,lb.library_branch_BranchName AS BRANCH_NAME, SUM(bc.book_copies_No_Of_Copies ) AS NO_OF_COPIES
FROM tbl_book b 
JOIN tbl_book_copies bc ON
b.book_BookID = bc.book_copies_BookID
JOIN tbl_library_branch lb ON
lb.library_branch_BranchID = bc.book_copies_BranchID
WHERE b.book_Title = 'The Lost Tribe'
GROUP BY b.book_Title,lb.library_branch_BranchName;


-- TASK 3
-- QUESTION 3 - Retrieve the names of all borrowers who do not have any books checked out.

SELECT b.borrower_BorrowerName as BORROWER_NAME
FROM tbl_borrower b
LEFT JOIN tbl_book_loans l ON
b.borrower_CardNo = l.book_loans_CardNo
WHERE l.book_loans_CardNo IS NULL;



-- TASK 4
-- For each book that is loaned out from the "Sharpstown" branch and whose DueDate is 2/3/18, 
-- retrieve the book title, the borrower's name, and the borrower's address. 

SELECT b.book_Title AS BOOK_NAME,br.borrower_BorrowerName AS BORROWER_NAME,br.borrower_BorrowerAddress AS BORROWER_ADDRESS
FROM tbl_book_loans bl
JOIN tbl_book b
ON bl.book_loans_BookID = b.book_BookID
JOIN tbl_borrower br
ON bl.book_loans_CardNo = br.borrower_CardNo
JOIN tbl_library_branch lb
ON bl.book_loans_BranchID = lb.library_branch_BranchID
WHERE lb.library_branch_BranchName = 'Sharpstown'AND bl.book_loans_DueDate = '2/3/18';
  
-- TASK 5
-- QUESTION 5 -- For each library branch, retrieve the branch name and the total number of books loaned out from that branch.

SELECT lb.library_branch_BranchName as BRANCH_NAME, count(bl.book_loans_BookID) as TOTAL_BOOKS_LOANED_OUT
FROM tbl_library_branch lb
JOIN tbl_book_loans bl ON
lb.library_branch_BranchID = bl.book_loans_BranchID
GROUP BY lb.library_branch_BranchName;


-- TASK 6
-- QUESTION 6 - Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.


SELECT br.borrower_BorrowerName AS BORROWER_NAME, borrower_BorrowerAddress AS ADDRESS,count(bl.book_loans_BookID) as NUMBER_OF_BOOKS_CHECKEDOUT
FROM tbl_borrower br
JOIN tbl_book_loans bl ON
br.borrower_CardNo = bl.book_loans_CardNo
GROUP BY br.borrower_BorrowerName,br.borrower_BorrowerAddress
HAVING count(bl.book_loans_BookID) > 5;

-- TASK 7
-- QUESTION 7 - For each book authored by "Stephen King",
--  retrieve the title and the number of copies owned by the library branch whose name is "Central".
	   
SELECT b.book_Title as TITLE,SUM(bc.book_copies_No_Of_Copies) AS NO_OF_COPIES
FROM tbl_book_authors ba 
JOIN tbl_book b ON
ba.book_authors_BookID = b.book_BookID 
JOIN tbl_book_copies bc ON
ba.book_authors_BookID = bc.book_copies_BookID
JOIN tbl_library_branch lb ON
bc.book_copies_BranchID = lb.library_branch_BranchID
WHERE ba.book_authors_AuthorName = "Stephen King" AND lb.library_branch_BranchName = "Central"
GROUP BY b.book_Title;



