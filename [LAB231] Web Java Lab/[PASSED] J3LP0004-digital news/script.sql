USE [master]
GO
/****** Object:  Database [Digital News]    Script Date: 2/21/2019 10:04:29 AM ******/
CREATE DATABASE [Digital News]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Digital News', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Digital News.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Digital News_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Digital News_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Digital News] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Digital News].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Digital News] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Digital News] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Digital News] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Digital News] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Digital News] SET ARITHABORT OFF 
GO
ALTER DATABASE [Digital News] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Digital News] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Digital News] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Digital News] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Digital News] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Digital News] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Digital News] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Digital News] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Digital News] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Digital News] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Digital News] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Digital News] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Digital News] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Digital News] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Digital News] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Digital News] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Digital News] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Digital News] SET RECOVERY FULL 
GO
ALTER DATABASE [Digital News] SET  MULTI_USER 
GO
ALTER DATABASE [Digital News] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Digital News] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Digital News] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Digital News] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Digital News] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Digital News', N'ON'
GO
USE [Digital News]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 2/21/2019 10:04:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[image] [varchar](255) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[date] [datetime] NOT NULL,
	[author] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [title], [image], [content], [date], [author]) VALUES (2, N'Making security feeds smarter via machine learning', N'i1.jpg', N'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', CAST(N'2019-01-15 02:20:00.000' AS DateTime), N'Thaycacac')
INSERT [dbo].[Article] ([id], [title], [image], [content], [date], [author]) VALUES (5, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', N'i2.jpg', N'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', CAST(N'2019-01-14 00:00:00.000' AS DateTime), N'Benjamin Cher')
INSERT [dbo].[Article] ([id], [title], [image], [content], [date], [author]) VALUES (6, N'Elevenia tawark an laynan Mokado', N'i3.jpg', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', CAST(N'2019-01-13 00:00:00.000' AS DateTime), N'H. Rackham')
INSERT [dbo].[Article] ([id], [title], [image], [content], [date], [author]) VALUES (1002, N'news was successfully deployed in 1,231 milliseconds.', N'i4.jpg', N'The web application [/J3LP0004-digital_news] registered the JDBC driver [com.microsoft.sqlserver.jdbc.SQLServerDriver] but failed to unregister it when the web application was stopped. To prevent a memory leak, the JDBC Driver has been forcibly unregistered.', CAST(N'2019-01-12 00:00:00.000' AS DateTime), N'Drokcer')
INSERT [dbo].[Article] ([id], [title], [image], [content], [date], [author]) VALUES (1004, N'Visiting unvisited references', N'i5', N'making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', CAST(N'2019-01-11 00:00:00.000' AS DateTime), N'Netbeans')
SET IDENTITY_INSERT [dbo].[Article] OFF
USE [master]
GO
ALTER DATABASE [Digital News] SET  READ_WRITE 
GO
