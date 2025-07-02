CREATE TABLE [dbo].[Customer]
(
	[Customer_Id]		INT		NOT NULL UNIQUE,
	[Customer_Name]		VARCHAR NOT NULL,
	[Customer_Surname]  VARCHAR NOT NULL,
	[Email]				VARCHAR NOT NULL,
	[Password]			VARCHAR NOT NULL UNIQUE,
	[Address]			VARCHAR NOT NULL,
	[Reg_Date]			DATE	NOT NULL,

	PRIMARY KEY (Customer_Id)
)
