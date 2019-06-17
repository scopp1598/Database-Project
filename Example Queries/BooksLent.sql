/*
	List all employees by first name and last name that lent out books
	and how many books they each lent out. Order by amount of books
	lent out.
*/

SELECT
	Employee.EmployeeID AS ID, Employee.FirstName AS First_Name, Employee.LastName AS Last_Name,
	COUNT(BookLine.BookLineID) as Books_Lent
FROM
	(Employee INNER JOIN Loan ON Employee.EmployeeID=Loan.LibrarianID)
	INNER JOIN BookLine ON Loan.LoanID=BookLine.LoanID
GROUP BY
	Employee.EmployeeID;