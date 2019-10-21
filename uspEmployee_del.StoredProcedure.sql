
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[uspEmployee_del]

	@id int

as

delete Employees
where id = @id

GO


