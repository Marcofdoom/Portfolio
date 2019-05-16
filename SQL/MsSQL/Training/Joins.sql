USE [pets]
GO

-- LEFT JOIN
SELECT A.[Name], B.[Name]
FROM [dbo].[Pets] AS A
Left Join [dbo].[Owners] AS B
ON A.ownerid = B.ownerid

-- RIGHT JOIN
SELECT A.[Name] AS PetName, B.[Name] AS OwnerName
FROM [dbo].[Owners] AS B
RIGHT JOIN [dbo].[Pets] AS A
ON A.[OwnerID] = B.[OwnerID]

-- INNER JOIN
SELECT * 
FROM [dbo].[Pets] AS A
INNER JOIN [dbo].[ProceduresHistory] AS B
ON A.Petid = B.PetID

-- FULL OUTER JOIN
SELECT * 
FROM [dbo].[Pets] AS A
FULL OUTER JOIN [dbo].[ProceduresHistory] AS B
ON A.Petid = B.PetID

-- JOINING ON MULTIPLE FIELDS
SELECT * 
FROM [dbo].[ProceduresHistory] AS A
LEFT JOIN [dbo].[ProceduresDetails] AS B
ON A.ProcedureType = B.ProcedureType
AND A.ProcedureSubCode = B.ProcedureSubCode

ORDER BY A.Petid

-- COMPLEX JOINS 
SELECT 
		-- A.Age,
		-- A.Gender,
		A.Kind,
		-- A.Name,
		-- A.OwnerID,
		-- A.Petid,
		-- B.ProcedureDate,
		-- B.ProcedureSubCode,
		-- B.ProcedureType,
		C.Description
		-- C.Price

FROM [dbo].[Pets] AS A
INNER JOIN [dbo].[ProceduresHistory] AS B
ON A.Petid = B.PetID
LEFT JOIN [dbo].[ProceduresDetails] AS C
ON B.ProcedureType = C.ProcedureType
AND B.ProcedureSubCode = C.ProcedureSubCode

ORDER BY
		B.ProcedureType,
		B.ProcedureSubCode,
		A.Petid

-- CROSS JOIN
SELECT * 
FROM [dbo].[Pets]
CROSS JOIN [dbo].[Owners]
