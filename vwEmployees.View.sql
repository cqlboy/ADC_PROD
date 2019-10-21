

/****** Object:  View [dbo].[vwEmployees]    Script Date: 10/18/2019 4:38:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
********************* History **************************
Date  	 Change By	Desc
-------- -------------	--------------------------------
20191021 BColson	Created


*********************************************************/

create view [dbo].[vwEmployees] as


select *
from Employee

GO


