DROP TABLE IF EXISTS CodeInLang
GO
DROP TABLE IF EXISTS Comments
GO
DROP TABLE IF EXISTS Users
GO
DROP TABLE IF EXISTS Content
GO
DROP TABLE IF EXISTS CodeLists
GO
DROP TABLE IF EXISTS ContentTypes
GO
DROP TABLE IF EXISTS TestCase
GO
DROP TABLE IF EXISTS Task
GO
DROP TABLE IF EXISTS Topics
GO
DROP TABLE IF EXISTS ProgramingLanguages
GO
DROP TABLE IF EXISTS Images
GO



CREATE TABLE Users(
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[Name] [NVARCHAR](150) NOT NULL,
	[IsAdmin] [Bit] NOT NULL,
	[Login] [NVARCHAR](250) NOT NULL,
	[PasswordHash] [NVARCHAR](250) NOT NULL,
	CONSTRAINT PK_User_Id PRIMARY KEY (Id)
)

GO

CREATE TABLE ProgramingLanguages (
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](250) NOT NULL,
	CONSTRAINT PK_ProgramingLanguages_Id PRIMARY KEY (Id)
)

GO

CREATE TABLE Topics(
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[Name] [NVARCHAR](150) NOT NULL,
	[HasChildren] [BIT] NOT NULL,
	[ParentId] [INT] NULL,
	[Order] [INT] NOT NULL,
	CONSTRAINT PK_Topics_Id PRIMARY KEY (Id),
	CONSTRAINT FK_Topics_Topics FOREIGN KEY (ParentId) REFERENCES Topics (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)

GO

CREATE TABLE CodeLists (
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[asd] [INT] NULL,
	CONSTRAINT PK_CodeLists_Id PRIMARY KEY (Id)
)

GO

CREATE TABLE CodeInLang(
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[CodeListId] [INT] NOT NULL,
	[LanguageId] [INT] NOT NULL,
	[Code] [NText] NOT NULL,
	CONSTRAINT PK_CodeInLang_Id PRIMARY KEY ([Id]),
	CONSTRAINT FK_CodeInLang_CodeLists FOREIGN KEY (CodeListId) REFERENCES CodeLists (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT FK_CodeInLang_ProgramingLanguages FOREIGN KEY (LanguageId) REFERENCES ProgramingLanguages (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)

GO

CREATE TABLE ContentTypes (
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
	[Description] [VARCHAR](250) NULL,
	CONSTRAINT PK_ContentTypes_Id PRIMARY KEY (Id)
)

GO

CREATE TABLE Content(
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[TopicId] [INT] NOT NULL,
	[ContentTypeId] [INT] NOT NULL,
	[Data] [NText] NOT NULL,
	[CodeListId] [INT] NULL,
	[Params] [Text] NULL,
	[Order] [INT] NOT NULL,
	CONSTRAINT PK_Content_Id PRIMARY KEY ([Id]),
	CONSTRAINT FK_Content_Topics FOREIGN KEY (TopicId) REFERENCES Topics (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT FK_Content_ContentTypes FOREIGN KEY (ContentTypeId) REFERENCES ContentTypes (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT FK_Content_CodeLists FOREIGN KEY (CodeListId) REFERENCES CodeLists (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)

GO

CREATE TABLE Comments(
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[UserId] [INT] NOT NULL,
	[TopicId] [INT] NOT NULL,
	[Text] [NText] NOT NULL,
	[Date] [DATETIME] NOT NULL,
	[ParentId] [INT] NULL,
	CONSTRAINT PK_Comments_Id PRIMARY KEY (Id),
	CONSTRAINT FK_Comments_Users FOREIGN KEY (UserId) REFERENCES Users (Id)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	CONSTRAINT FK_Comments_Topics FOREIGN KEY (TopicId) REFERENCES Topics (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT FK_Comments_Comments FOREIGN KEY (ParentId) REFERENCES Comments (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)

GO

CREATE TABLE Task(
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[TopicId] [INT] NOT NULL,
	[Name] [VARCHAR](250) NOT NULL,
	[Description] [VARCHAR](250) NULL,
	CONSTRAINT PK_TaskId PRIMARY KEY (Id),
	CONSTRAINT FK_Task_Topics FOREIGN KEY (TopicId) REFERENCES Topics (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)

GO

CREATE TABLE TestCase(
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[TaskId] [INT] NOT NULL,
	[InputData] [Text] NOT NULL,
	[OutputData] [Text] NOT NULL,
	CONSTRAINT PK_TestCase_Id PRIMARY KEY (Id),
	CONSTRAINT FK_TestCase_Task FOREIGN KEY (TaskId) REFERENCES Task (Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)

GO

CREATE TABLE Images (
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[URL] [Text] NOT NULL,
	[IsLocal] [Bit] NOT NULL,
	CONSTRAINT PK_Images_Id PRIMARY KEY (Id)
)

GO

INSERT INTO ContentTypes([Name])
VALUES('Title')
	 ,('Text')
	 ,('Subtitle')
	 ,('Image')
	 ,('MarkedText')
	 ,('Code')
	 ,('Warning')
;

GO

INSERT INTO ProgramingLanguages([title])
VALUES('Python')
	 ,('C++')
	 ,('C#')
	 ,('Java')
	 ,('Basic')
	 ,('Kotlin')
	 ,('Swift')
;