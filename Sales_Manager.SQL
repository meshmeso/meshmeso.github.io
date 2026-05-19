SELECT *
  FROM [January_Cohort].[dbo].[Sales Manager Records]

  -- ADD A COLUMN TO AN EXISTING TABLE (ALTER TABLE STATEMENT)
  ALTER TABLE [dbo].[Sales Manager Records]
  ADD AGE INT

  ALTER TABLE [dbo].[Sales Manager Records]
  ADD Salary DECIMAL(6,2)

  -- DELETE AN EXISTING COLUMN
  ALTER TABLE [dbo].[Sales Manager Records]
  DROP COLUMN Salary

  --change datatype in a column
  ALTER TABLE[dbo].[Sales Manager Records]
  ALTER COLUMN [AGE] DECIMAL (5,2)

  ALTER TABLE[dbo].[Sales Manager Records]
  ALTER COLUMN [AGE] INT

  -- rename a column
  -- DOES NOT REALLY WORK IN SSM, JUST RIGHT CLICK ON IT FROM THE COLUMNS AND RENAME

  -- UPDATE TABLE STATEMENT
  UPDATE [dbo].[Sales Manager Records]
  SET [AGE] = DATEDIFF(YEAR,[Date_of_Birth], GETDATE())

  UPDATE [dbo].[Sales Manager Records]
  SET CITY = 'Paris'
  where [Salesperson_ID] = 'ID005'


  -- Delete from statement
DELETE FROM [dbo].[Sales Manager Records]
WHERE [AGE] <= 35

-- DATA MANIPULATION
SELECT *
FROM [dbo].['Workplace Safety Data$']

-- Say we only need some select data columns, we can use select statement to highlight which columns we need
SELECT Date
	   ,Department
	   ,[Incident Cost]
FROM [dbo].['Workplace Safety Data$']

-- sql where clause, helps to pull record of interest
SELECT *
FROM [dbo].['Workplace Safety Data$']
WHERE Plant != 'Georgia'

SELECT *
FROM [dbo].['Workplace Safety Data$']
WHERE [Incident Type] != 'Fall'

-- IN & NOT IN OPERATORS (To pull records from the same column)
SELECT *
FROM [dbo].['Workplace Safety Data$']
WHERE Plant IN ('California', 'Florida')

SELECT *
FROM [dbo].['Workplace Safety Data$']
WHERE Plant NOT IN ('California', 'Florida')

-- AND & OR OPERATORS (Used to run two or more conditions which are not in the same column)
SELECT *
FROM [dbo].['Workplace Safety Data$']
WHERE Plant = 'California' and [incident cost] > 1000

SELECT *
FROM [dbo].['Workplace Safety Data$']
WHERE Plant = 'California' OR [incident cost] > 1000
