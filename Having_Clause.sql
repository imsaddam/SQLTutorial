SELECT JobTitle, AVG(Salary) AS SalaryRange

FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmpolyeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000 
ORDER BY AVG(Salary) 
