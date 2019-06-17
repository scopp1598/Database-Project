/*
	Where was the book located in the library that Kendall
	Jenner took out on September 1st, 2016.
*/

SELECT 
	Book.Title AS Book_Title, 
	Location.Section AS Section, Location.RowNumber AS Row, Location.Shelf AS Shelf
FROM 
	(((Member INNER JOIN Loan ON Member.MemberID=Loan.MemberID)
	INNER JOIN BookLine ON Loan.LoanID=BookLine.LoanID)
	INNER JOIN Book ON BookLine.BookID=Book.BookID)
	INNER JOIN Location ON Book.LocationID=Location.LocationID
WHERE
	Member.FirstName LIKE 'Kendall' AND
	Member.LastName LIKE 'Jenner' AND
	Loan.LoanDate LIKE '2016-09-01';