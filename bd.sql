USE [AviaCompany]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 15.11.2019 20:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Office]    Script Date: 15.11.2019 20:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Office](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Contact] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Office] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 15.11.2019 20:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 15.11.2019 20:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[OfficeID] [int] NULL,
	[Birthdate] [date] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserActive]    Script Date: 15.11.2019 20:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActive](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DateLogin] [datetime] NOT NULL,
	[DateLogout] [datetime] NULL,
	[NoLogoutReason] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserActive] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([ID], [Name]) VALUES (1, N'Afghanistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (2, N'Albania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (3, N'Algeria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (4, N'Andorra')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (5, N'Angola')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (6, N'Antigua & Deps')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (7, N'Argentina')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (8, N'Armenia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (9, N'Australia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (10, N'Austria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (11, N'Azerbaijan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (12, N'Bahamas')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (13, N'Bahrain')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (14, N'Bangladesh')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (15, N'Barbados')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (16, N'Belarus')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (17, N'Belgium')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (18, N'Belize')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (19, N'Benin')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (20, N'Bhutan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (21, N'Bolivia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (22, N'Bosnia Herzegovina')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (23, N'Botswana')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (24, N'Brazil')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (25, N'Brunei')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (26, N'Bulgaria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (27, N'Burkina')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (28, N'Burundi')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (29, N'Cambodia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (30, N'Cameroon')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (31, N'Canada')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (32, N'Cape Verde')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (33, N'Central African Rep')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (34, N'Chad')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (35, N'Chile')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (36, N'China')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (37, N'Colombia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (38, N'Comoros')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (39, N'Congo')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (40, N'Congo {Democratic Rep}')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (41, N'Costa Rica')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (42, N'Croatia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (43, N'Cuba')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (44, N'Cyprus')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (45, N'Czech Republic')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (46, N'Denmark')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (47, N'Djibouti')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (48, N'Dominica')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (49, N'Dominican Republic')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (50, N'East Timor')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (51, N'Ecuador')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (52, N'Egypt')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (53, N'El Salvador')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (54, N'Equatorial Guinea')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (55, N'Eritrea')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (56, N'Estonia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (57, N'Ethiopia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (58, N'Fiji')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (59, N'Finland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (60, N'France')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (61, N'Gabon')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (62, N'Gambia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (63, N'Georgia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (64, N'Germany')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (65, N'Ghana')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (66, N'Greece')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (67, N'Grenada')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (68, N'Guatemala')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (69, N'Guinea')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (70, N'Guinea-Bissau')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (71, N'Guyana')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (72, N'Haiti')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (73, N'Honduras')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (74, N'Hungary')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (75, N'Iceland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (76, N'India')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (77, N'Indonesia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (78, N'Iran')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (79, N'Iraq')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (80, N'Ireland {Republic}')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (81, N'Israel')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (82, N'Italy')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (83, N'Ivory Coast')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (84, N'Jamaica')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (85, N'Japan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (86, N'Jordan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (87, N'Kazakhstan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (88, N'Kenya')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (89, N'Kiribati')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (90, N'Korea North')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (91, N'Korea South')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (92, N'Kosovo')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (93, N'Kuwait')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (94, N'Kyrgyzstan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (95, N'Laos')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (96, N'Latvia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (97, N'Lebanon')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (98, N'Lesotho')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (99, N'Liberia')
GO
INSERT [dbo].[Country] ([ID], [Name]) VALUES (100, N'Libya')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (101, N'Liechtenstein')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (102, N'Lithuania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (103, N'Luxembourg')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (104, N'Macedonia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (105, N'Madagascar')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (106, N'Malawi')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (107, N'Malaysia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (108, N'Maldives')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (109, N'Mali')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (110, N'Malta')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (111, N'Marshall Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (112, N'Mauritania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (113, N'Mauritius')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (114, N'Mexico')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (115, N'Micronesia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (116, N'Moldova')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (117, N'Monaco')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (118, N'Mongolia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (119, N'Montenegro')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (120, N'Morocco')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (121, N'Mozambique')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (122, N'Myanmar, {Burma}')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (123, N'Namibia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (124, N'Nauru')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (125, N'Nepal')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (126, N'Netherlands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (127, N'New Zealand')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (128, N'Nicaragua')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (129, N'Niger')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (130, N'Nigeria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (131, N'Norway')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (132, N'Oman')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (133, N'Pakistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (134, N'Palau')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (135, N'Panama')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (136, N'Papua New Guinea')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (137, N'Paraguay')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (138, N'Peru')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (139, N'Philippines')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (140, N'Poland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (141, N'Portugal')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (142, N'Qatar')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (143, N'Romania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (144, N'Russian Federation')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (145, N'Rwanda')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (146, N'St Kitts & Nevis')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (147, N'St Lucia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (148, N'Saint Vincent & the Grenadines')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (149, N'Samoa')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (150, N'San Marino')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (151, N'Sao Tome & Principe')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (152, N'Saudi Arabia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (153, N'Senegal')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (154, N'Serbia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (155, N'Seychelles')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (156, N'Sierra Leone')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (157, N'Singapore')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (158, N'Slovakia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (159, N'Slovenia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (160, N'Solomon Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (161, N'Somalia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (162, N'South Africa')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (163, N'South Sudan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (164, N'Spain')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (165, N'Sri Lanka')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (166, N'Sudan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (167, N'Suriname')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (168, N'Swaziland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (169, N'Sweden')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (170, N'Switzerland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (171, N'Syria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (172, N'Taiwan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (173, N'Tajikistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (174, N'Tanzania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (175, N'Thailand')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (176, N'Togo')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (177, N'Tonga')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (178, N'Trinidad & Tobago')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (179, N'Tunisia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (180, N'Turkey')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (181, N'Turkmenistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (182, N'Tuvalu')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (183, N'Uganda')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (184, N'Ukraine')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (185, N'United Arab Emirates')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (186, N'United Kingdom')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (187, N'United States')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (188, N'Uruguay')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (189, N'Uzbekistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (190, N'Vanuatu')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (191, N'Vatican City')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (192, N'Venezuela')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (193, N'Vietnam')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (194, N'Yemen')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (195, N'Zambia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (196, N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Office] ON 

INSERT [dbo].[Office] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (1, 185, N'Abu dhabi', N'638-757-8582
', N'MIchael Malki')
INSERT [dbo].[Office] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (3, 52, N'Cairo', N'252-224-8525', N'David Johns')
INSERT [dbo].[Office] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (4, 13, N'Bahrain', N'542-227-5825', N'Katie Ballmer')
INSERT [dbo].[Office] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (5, 142, N'Doha', N'758-278-9597', N'Ariel Levy')
INSERT [dbo].[Office] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (6, 152, N'Riyadh', N'285-285-1474', N'Andrew Hobart')
SET IDENTITY_INSERT [dbo].[Office] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Title]) VALUES (1, N'Administrator')
INSERT [dbo].[Role] ([ID], [Title]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (1, 1, N'123', N'123', N'John', N'Doe', 1, CAST(N'1983-01-13' AS Date), 1)
INSERT [dbo].[User] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (2, 2, N'k.omar@amonic.com', N'4258', N'Karim', N'Omar', 1, CAST(N'1980-03-19' AS Date), 1)
INSERT [dbo].[User] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (3, 2, N'h.saeed@amonic.com', N'2020', N'Hannan', N'Saeed', 3, CAST(N'1989-12-20' AS Date), 1)
INSERT [dbo].[User] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (4, 2, N'a.hobart@amonic.com', N'6996', N'Andrew', N'Hobart', 6, CAST(N'1990-01-30' AS Date), 1)
INSERT [dbo].[User] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (5, 2, N'k.anderson@amonic.com', N'4570', N'Katrin', N'Anderson', 5, CAST(N'1992-11-10' AS Date), 1)
INSERT [dbo].[User] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (6, 2, N'h.wyrick@amonic.com', N'1199', N'Hava', N'Wyrick', 1, CAST(N'1988-08-08' AS Date), 1)
INSERT [dbo].[User] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (7, 2, N'marie.horn@amonic.com', N'55555', N'Marie', N'Horn', 4, CAST(N'1981-04-06' AS Date), 1)
INSERT [dbo].[User] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (8, 2, N'm.osteen@amonic.com', N'9800', N'Milagros', N'Osteen', 1, CAST(N'1991-02-03' AS Date), 0)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserActive] ON 

INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (1, 1, CAST(N'2019-11-15T19:42:42.783' AS DateTime), NULL, NULL)
INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (2, 1, CAST(N'2019-11-15T19:44:13.997' AS DateTime), NULL, NULL)
INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (3, 1, CAST(N'2019-11-15T19:44:30.720' AS DateTime), NULL, NULL)
INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (4, 1, CAST(N'2019-11-15T19:45:54.617' AS DateTime), CAST(N'2019-11-15T19:45:59.433' AS DateTime), NULL)
INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (5, 1, CAST(N'2019-11-15T19:47:04.993' AS DateTime), CAST(N'2019-11-15T19:47:09.543' AS DateTime), NULL)
INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (6, 1, CAST(N'2019-11-15T19:54:08.407' AS DateTime), CAST(N'2019-11-15T19:54:37.953' AS DateTime), NULL)
INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (7, 1, CAST(N'2019-11-15T20:10:28.910' AS DateTime), CAST(N'2019-11-15T20:11:18.967' AS DateTime), NULL)
INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (8, 1, CAST(N'2019-11-15T20:14:31.447' AS DateTime), CAST(N'2019-11-15T20:14:39.413' AS DateTime), NULL)
INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (9, 1, CAST(N'2019-11-15T20:22:51.203' AS DateTime), CAST(N'2019-11-15T20:23:37.383' AS DateTime), NULL)
INSERT [dbo].[UserActive] ([ID], [UserId], [DateLogin], [DateLogout], [NoLogoutReason]) VALUES (10, 1, CAST(N'2019-11-15T20:24:20.493' AS DateTime), CAST(N'2019-11-15T20:24:38.110' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[UserActive] OFF
ALTER TABLE [dbo].[Office]  WITH CHECK ADD  CONSTRAINT [FK_Office_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Office] CHECK CONSTRAINT [FK_Office_Country]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_Users_Offices] FOREIGN KEY([OfficeID])
REFERENCES [dbo].[Office] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_Users_Offices]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[UserActive]  WITH CHECK ADD  CONSTRAINT [FK_UserActive_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserActive] CHECK CONSTRAINT [FK_UserActive_Users]
GO
