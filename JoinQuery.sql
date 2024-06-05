USE [Employees_Db]
GO

/****** Object:  StoredProcedure [dbo].[CheckEmployeeIsActive]    Script Date: 28-05-2024 16:17:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





ALTER PROCEDURE [dbo].[CheckEmployeeIsActive]

AS
BEGIN
    SELECT 
	Employees.Emp_Id,
	Company.Company_Name,
	Employees.Name,
	Employees.Email,
	Employees.Gender,
	Employees.Mobile,
	Employees.Address,
	Employees.City,	
	Employees.PinCode,
	Employees.AreaOfInterest

	FROM Employees
	inner join Company
	on Employees.Company_Name=Company.Company_Id
/**	inner join Skills
	on Employees.AreaOfInterest=Skills.AreaOfInterest_Id **/
	WHERE status = 1;
END
GO


