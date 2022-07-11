CREATE TABLE ACCOUNT (
    Username varchar(50) primary key,
    Password varchar(50),
    Fullname nvarchar(255),
	Avatar varchar(255),
    Role tinyint,
	Status bit
);


CREATE TABLE CATEGORY (
    CateID int IDENTITY(1,1) primary key,
    CateName nvarchar(50)
);



CREATE TABLE ARTICLE (
    ArticleID int IDENTITY(1,1) primary key,
    Title nvarchar(255),
    Description nvarchar(1000),
	Content NTEXT,
    Image varchar(255),
	Author varchar(50) FOREIGN KEY REFERENCES ACCOUNT(Username),
	Likes int,
	TimePost SMALLDATETIME,
	CateID int FOREIGN KEY REFERENCES CATEGORY(CateID)
);



CREATE TABLE COMMENT (
    CommentID int IDENTITY(1,1) primary key,
    ArticleID int FOREIGN KEY REFERENCES ARTICLE(ArticleID),
	Username varchar(50) FOREIGN KEY REFERENCES ACCOUNT(Username),
	TimeComment SMALLDATETIME
);

