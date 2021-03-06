USE [master]
GO
/****** Object:  Database [pddb]    Script Date: 01/31/2020 19:37:14 ******/
CREATE DATABASE [pddb] ON  PRIMARY 
( NAME = N'pddb', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\pddb.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'pddb_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\pddb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [pddb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pddb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pddb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [pddb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [pddb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [pddb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [pddb] SET ARITHABORT OFF
GO
ALTER DATABASE [pddb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [pddb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [pddb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [pddb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [pddb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [pddb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [pddb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [pddb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [pddb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [pddb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [pddb] SET  DISABLE_BROKER
GO
ALTER DATABASE [pddb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [pddb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [pddb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [pddb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [pddb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [pddb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [pddb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [pddb] SET  READ_WRITE
GO
ALTER DATABASE [pddb] SET RECOVERY SIMPLE
GO
ALTER DATABASE [pddb] SET  MULTI_USER
GO
ALTER DATABASE [pddb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [pddb] SET DB_CHAINING OFF
GO
USE [pddb]
GO
/****** Object:  Table [dbo].[UploadErrors]    Script Date: 01/31/2020 19:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UploadErrors](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[ufile] [varchar](max) NULL,
	[comments] [varchar](max) NULL,
	[udt] [varchar](50) NULL,
 CONSTRAINT [PK_UploadErrors] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UploadErrors] ON
INSERT [dbo].[UploadErrors] ([fid], [name], [ufile], [comments], [udt]) VALUES (6, N'Divyansh Varshney', N'di2.png', N'Please Solve this Error', N'1/31/2020 2:17:24 PM')
INSERT [dbo].[UploadErrors] ([fid], [name], [ufile], [comments], [udt]) VALUES (7, N'Shani', N'dii.png', N'Please Solve this E', N'1/31/2020 2:35:37 PM')
INSERT [dbo].[UploadErrors] ([fid], [name], [ufile], [comments], [udt]) VALUES (8, N'Dhananjay varshney', N'p1.jpg', N'Solve this', N'1/31/2020 2:37:18 PM')
SET IDENTITY_INSERT [dbo].[UploadErrors] OFF
/****** Object:  Table [dbo].[Review]    Script Date: 01/31/2020 19:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Review](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[rating] [varchar](50) NULL,
	[rdt] [varchar](50) NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON
INSERT [dbo].[Review] ([rid], [name], [email], [rating], [rdt]) VALUES (1, N'divyansh', N'divyanshvarshney143@GMAIL.COM', N'5', N'1/29/2020 2:54:17 PM')
INSERT [dbo].[Review] ([rid], [name], [email], [rating], [rdt]) VALUES (2, N'Akhilesh', N'shani@gmail.com', N'3', N'1/29/2020 2:54:34 PM')
INSERT [dbo].[Review] ([rid], [name], [email], [rating], [rdt]) VALUES (4, N'Dhananjay varshney', N'div1@gmail.com', N'5', N'1/31/2020 2:40:43 PM')
SET IDENTITY_INSERT [dbo].[Review] OFF
/****** Object:  Table [dbo].[Registration]    Script Date: 01/31/2020 19:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[name] [varchar](50) NULL,
	[gender] [varchar](40) NULL,
	[email] [varchar](120) NOT NULL,
	[mob] [varchar](30) NULL,
	[quailification] [varchar](50) NULL,
	[profile] [varchar](max) NULL,
	[passwd] [varchar](50) NULL,
	[addr] [varchar](max) NULL,
	[regdt] [varchar](50) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Registration] ([name], [gender], [email], [mob], [quailification], [profile], [passwd], [addr], [regdt]) VALUES (N'Ram', N'Male', N'ram@gmail.com', N'6395078722', N'Diploma', N'1.png', N'abc', N'Allahpur samspur bisauli badaun u.p', N'1/27/2020 2:26:01 PM')
/****** Object:  Table [dbo].[Programmers]    Script Date: 01/31/2020 19:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Programmers](
	[name] [varchar](50) NULL,
	[mob] [varchar](40) NULL,
	[email] [varchar](120) NOT NULL,
	[ExpertArea] [varchar](50) NULL,
	[qua] [varchar](70) NULL,
	[exp] [varchar](50) NULL,
 CONSTRAINT [PK_Programmers] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Programmers] ([name], [mob], [email], [ExpertArea], [qua], [exp]) VALUES (N'Sandeep', N'6395078722', N'divya@gmail.com', N'Android', N'Diploma', N'1')
INSERT [dbo].[Programmers] ([name], [mob], [email], [ExpertArea], [qua], [exp]) VALUES (N'Divyansh Varshney', N'6395078722', N'divyanshvarshney143@gmail.com', N'Java', N'Diploma', N'1')
/****** Object:  Table [dbo].[Login]    Script Date: 01/31/2020 19:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[userid] [varchar](120) NOT NULL,
	[passwd] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Login] ([userid], [passwd]) VALUES (N'admin@gmail.com', N'12')
INSERT [dbo].[Login] ([userid], [passwd]) VALUES (N'ram@gmail.com', N'abc')
/****** Object:  Table [dbo].[Enquiry]    Script Date: 01/31/2020 19:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enquiry](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](120) NULL,
	[mob] [varchar](50) NULL,
	[msg] [varchar](max) NULL,
	[edt] [varchar](40) NULL,
 CONSTRAINT [PK_Enquiry] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Enquiry] ON
INSERT [dbo].[Enquiry] ([eid], [name], [email], [mob], [msg], [edt]) VALUES (1, N'Ram', N'r@gmail.com', N'8953422402', N'Test Now', N'1/25/2020 3:52:33 PM')
INSERT [dbo].[Enquiry] ([eid], [name], [email], [mob], [msg], [edt]) VALUES (2, N'Divyansh Varshney', N'divyanshvarshney143@gmail.com', N'6395078722', N'Test Now', N'1/31/2020 2:40:27 PM')
SET IDENTITY_INSERT [dbo].[Enquiry] OFF
/****** Object:  Table [dbo].[Comments]    Script Date: 01/31/2020 19:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comments](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[comments] [varchar](max) NULL,
	[status] [int] NULL,
	[cdt] [varchar](50) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON
INSERT [dbo].[Comments] ([cid], [comments], [status], [cdt]) VALUES (16, N'I am solving this comment', 6, N'1/31/2020 2:34:54 PM')
INSERT [dbo].[Comments] ([cid], [comments], [status], [cdt]) VALUES (17, N'This is C++ error', 7, N'1/31/2020 2:36:11 PM')
INSERT [dbo].[Comments] ([cid], [comments], [status], [cdt]) VALUES (18, N'This error is solve only Mahaguru ', 8, N'1/31/2020 2:38:03 PM')
INSERT [dbo].[Comments] ([cid], [comments], [status], [cdt]) VALUES (19, N'Tanya mam solve this error', 6, N'1/31/2020 3:11:14 PM')
INSERT [dbo].[Comments] ([cid], [comments], [status], [cdt]) VALUES (20, N'Good', 6, N'1/31/2020 7:06:09 PM')
SET IDENTITY_INSERT [dbo].[Comments] OFF
