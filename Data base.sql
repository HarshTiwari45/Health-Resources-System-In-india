USE [Project23]
GO
/****** Object:  Table [dbo].[tbl_response]    Script Date: 09/13/2023 11:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_response](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[rdate] [varchar](50) NULL,
	[rmsg] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_response] ON
INSERT [dbo].[tbl_response] ([rid], [cid], [rdate], [rmsg]) VALUES (1, 0, N'12-09-2023 13:04:54', N'hello')
INSERT [dbo].[tbl_response] ([rid], [cid], [rdate], [rmsg]) VALUES (2, 1, N'12-09-2023 13:07:06', N'hello')
INSERT [dbo].[tbl_response] ([rid], [cid], [rdate], [rmsg]) VALUES (3, 2, N'12-09-2023 16:52:37', N'hello')
SET IDENTITY_INSERT [dbo].[tbl_response] OFF
/****** Object:  Table [dbo].[tbl_register]    Script Date: 09/13/2023 11:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_register](
	[name] [varchar](50) NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[pic] [varchar](50) NULL,
	[rdate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_register] ([name], [email], [password], [mobile], [pic], [rdate]) VALUES (N'harsh', N'harshtiwari52224@gmail.com', N'12', N'34567766', N'azadi.png', N'06-09-2023 12:49:36')
/****** Object:  Table [dbo].[tbl_notification]    Script Date: 09/13/2023 11:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_notification](
	[nid] [int] IDENTITY(1,1) NOT NULL,
	[ntype] [varchar](50) NULL,
	[nmsg] [varchar](max) NULL,
	[ndate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[nid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_notification] ON
INSERT [dbo].[tbl_notification] ([nid], [ntype], [nmsg], [ndate]) VALUES (1, N'hello', N'how are you', N'04-09-2023 12:30:11')
INSERT [dbo].[tbl_notification] ([nid], [ntype], [nmsg], [ndate]) VALUES (2, N'sport notification', N'game start in 5nov', N'04-09-2023 12:30:47')
SET IDENTITY_INSERT [dbo].[tbl_notification] OFF
/****** Object:  Table [dbo].[tbl_login]    Script Date: 09/13/2023 11:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_login](
	[userid] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[type] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_login] ([userid], [password], [type]) VALUES (N'harshtiwari52224@gmail.com', N'12', N'User')
INSERT [dbo].[tbl_login] ([userid], [password], [type]) VALUES (N'admin@gmail.com', N'admin123', N'admin')
/****** Object:  Table [dbo].[tbl_feedback]    Script Date: 09/13/2023 11:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_feedback](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](50) NULL,
	[rate] [varchar](20) NULL,
	[msg] [varchar](max) NULL,
	[fdate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_feedback] ON
INSERT [dbo].[tbl_feedback] ([fid], [userid], [rate], [msg], [fdate]) VALUES (1, N'harshtiwari52224@gmail.com', N'1', N'hello', N'11-09-2023 13:29:34')
INSERT [dbo].[tbl_feedback] ([fid], [userid], [rate], [msg], [fdate]) VALUES (2, N'harshtiwari52224@gmail.com', N'5', N'hello sir ', N'12-09-2023 09:13:19')
SET IDENTITY_INSERT [dbo].[tbl_feedback] OFF
/****** Object:  Table [dbo].[tbl_enquiry]    Script Date: 09/13/2023 11:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_enquiry](
	[Eid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Message] [varchar](max) NULL,
	[edt] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_enquiry] ON
INSERT [dbo].[tbl_enquiry] ([Eid], [Name], [email], [Mobile], [Message], [edt]) VALUES (1, N'ppp', N'pp@gmail.com', N'456578887', N'hello', N'02-09-2023 11:54:17')
INSERT [dbo].[tbl_enquiry] ([Eid], [Name], [email], [Mobile], [Message], [edt]) VALUES (2, N'harsh', N'harsht@gmail.com', N'5678908765', N'hello', N'02-09-2023 16:55:25')
INSERT [dbo].[tbl_enquiry] ([Eid], [Name], [email], [Mobile], [Message], [edt]) VALUES (3, N'harsh', N'harsht@3gmail.com', N'3454213456', N'hello', N'03-09-2023 12:27:46')
INSERT [dbo].[tbl_enquiry] ([Eid], [Name], [email], [Mobile], [Message], [edt]) VALUES (4, N'harsh', N'harsht@gmail.com', N'5678908765', N'hello', N'03-09-2023 12:28:11')
SET IDENTITY_INSERT [dbo].[tbl_enquiry] OFF
/****** Object:  Table [dbo].[tbl_complain]    Script Date: 09/13/2023 11:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_complain](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](50) NULL,
	[msg] [varchar](max) NULL,
	[cdate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_complain] ON
INSERT [dbo].[tbl_complain] ([cid], [userid], [msg], [cdate]) VALUES (1, N'harshtiwari52224@gmail.com', N'your response is bad', N'12-09-2023 11:36:39')
INSERT [dbo].[tbl_complain] ([cid], [userid], [msg], [cdate]) VALUES (2, N'harshtiwari52224@gmail.com', N'hi your work is bad', N'12-09-2023 11:38:23')
INSERT [dbo].[tbl_complain] ([cid], [userid], [msg], [cdate]) VALUES (3, N'harshtiwari52224@gmail.com', N'hi your response is best', N'12-09-2023 11:39:01')
SET IDENTITY_INSERT [dbo].[tbl_complain] OFF
