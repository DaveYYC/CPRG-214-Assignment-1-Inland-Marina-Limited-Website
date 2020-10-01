CREATE TABLE [dbo].[Authentication](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](16) NOT NULL,
	[Password] [varchar](16) NOT NULL,
	[CustomerID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
))
GO
ALTER TABLE [dbo].[Authentication]  WITH CHECK ADD  CONSTRAINT [FK_AuthenticationCustomer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Authentication] CHECK CONSTRAINT [FK_AuthenticationCustomer]
GO

-- INSERT AUTHENTICATION
INSERT INTO Authentication(Username,Password,CustomerID) VALUES('jdoe','password',1)
GO