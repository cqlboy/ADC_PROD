

/****** Object:  StoredProcedure [dbo].[uspEmployee_ins]    Script Date: 10/18/2019 4:38:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[uspEmployee_upd]

	@id int
/*
********************* History **************************
Date  	 Change By	Desc
-------- -------------	--------------------------------
20191021 BColson	Created


*********************************************************/
as

update Employee
set fname = 'test'
GO


