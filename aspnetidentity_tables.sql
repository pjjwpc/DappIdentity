SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AspNetUsers]
(
Id Varchar(128) NOT NULL,
CreateDate DATETIME NOT NULL,
UserName Varchar(128) NOT NULL,
NormalizedUserName Varchar(128) NOT NULL,
Email VARCHAR(128) NOT NULL,
NormalizedEmail VARCHAR(128) NOT NULL,
EmailConfirmed BIT NOT NULL,
PasswordHash Varchar(500) NOT NULL,
SecurityStamp Varchar(500) NOT NULL,
LockoutEnabled BIT NOT NULL,
AccessFailedCount INT NOT NULL,
LockoutEndDateUtc DATETIME NULL,
UserGroupId INT NOT NULL,
CONSTRAINT [PK_dbo.AspNetUser] PRIMARY KEY CLUSTERED
(
	[Id] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserGroups]
(
UserGroupId INT NOT NULL IDENTITY,
UserGroupName VARCHAR(128) NOT NULL,
PasswordRequiredLength INT NOT NULL DEFAULT(7),
PasswordRequireNonAlphanumeric BIT NOT NULL DEFAULT (1),
PasswordRequireLowercase BIT NOT NULL DEFAULT(1),
PasswordRequireUppercase BIT NOT NULL DEFAULT(1),
PasswordRequireDigit BIT NOT NULL DEFAULT(1),
CONSTRAINT [PK_dbo.Companies] PRIMARY KEY CLUSTERED
(
	[UserGroupId] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
