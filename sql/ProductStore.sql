USE [Store]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] NOT NULL,
	[NAME] [nvarchar](255) NULL,
	[ID_CATEGORY_PARRENT] [int] NULL,
	[ALIAS] [nvarchar](50) NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companys]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companys](
	[ID] [int] NOT NULL,
	[NAME] [nvarchar](255) NULL,
	[PERSON_IN_CHARGE] [nvarchar](255) NULL,
	[ADDRESS] [nvarchar](255) NULL,
	[STATUS] [nchar](255) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] NOT NULL,
	[NAME] [nvarchar](255) NULL,
	[SEX] [nvarchar](50) NULL,
	[PHONE] [nvarchar](50) NULL,
	[ADDRESS] [nvarchar](255) NULL,
	[STARTED_DATE] [date] NULL,
	[ID_MEDIA] [int] NULL,
	[STATUS] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[External_Shippers]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[External_Shippers](
	[ID] [int] NOT NULL,
	[ID_MEDIA] [int] NULL,
	[NAME] [nvarchar](255) NULL,
	[PERSON_IN_CHARGE] [nvarchar](255) NULL,
	[PHONE] [nvarchar](50) NULL,
	[PERSON_IN_SHIPPER] [nvarchar](255) NULL,
	[SHIPPER_PHONE_NUMBER] [nvarchar](50) NULL,
	[STATUS] [nvarchar](50) NULL,
 CONSTRAINT [PK_EXTERNAL_SHIPPER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Internal_Shipper]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Internal_Shipper](
	[ID] [int] NOT NULL,
	[ID_MEDIA] [int] NULL,
	[NAME] [nchar](10) NULL,
	[PERSON_IN_CHARGE] [nvarchar](255) NULL,
	[PHONE] [nvarchar](50) NULL,
	[SHIPPER] [nvarchar](255) NULL,
	[SHIPPER_PHONE_NUMBER] [nvarchar](50) NULL,
	[SHIPPER_ADDRESS] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[STATUS] [nvarchar](50) NULL,
 CONSTRAINT [PK_Internal_Shipper] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medias]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medias](
	[ID] [int] NOT NULL,
	[ID_PRODUCT] [int] NULL,
	[ID_EMPLOYEE] [int] NULL,
	[ID_INTERNAL_SHIPPER] [int] NULL,
	[ID_EXTERNAL_SHIPPER] [int] NULL,
	[TYPE] [nvarchar](255) NULL,
	[NAME] [nvarchar](255) NULL,
	[FILE_ID] [nvarchar](512) NULL,
	[EXTERNAL_URL] [nvarchar](512) NULL,
 CONSTRAINT [PK_Medias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] NOT NULL,
	[ID_PAYMENT_METHOD] [int] NULL,
	[ID_INTERNAL_SHIPPER] [int] NULL,
	[ID_EMPLOYEE] [int] NULL,
	[ORDER_CODE] [nvarchar](255) NULL,
	[CREATED_DATE] [datetime] NULL,
	[ID_EXTERNAL_SHIPPER] [int] NULL,
	[STATUS] [nchar](10) NULL,
	[CREATE_BY] [nvarchar](255) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Products]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Products](
	[ID_ORDER] [int] NOT NULL,
	[ID_PRODUCT] [int] NOT NULL,
	[QUANTITY] [int] NOT NULL,
 CONSTRAINT [PK_Orders_Products_1] PRIMARY KEY CLUSTERED 
(
	[ID_ORDER] ASC,
	[ID_PRODUCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] NOT NULL,
	[ID_MEDIA] [int] NOT NULL,
	[ID_CATEGORY] [int] NOT NULL,
	[ID_TRANSPORTER] [int] NULL,
	[ID_MATERIALS] [nchar](10) NULL,
	[ID_COMPANY] [int] NULL,
	[COUNTRY] [nvarchar](50) NULL,
	[NAME] [nchar](10) NULL,
	[PRICE] [int] NULL,
	[DESCRIPTION] [nvarchar](1000) NULL,
	[QUANTITY] [int] NULL,
	[STOCK] [int] NOT NULL,
	[WEIGHT] [int] NULL,
	[WIDTH] [int] NULL,
	[LENGHT] [int] NULL,
	[STATUS] [nchar](10) NULL,
	[HEIGHT] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Categories]    Script Date: 2021-08-07 2:18:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Categories](
	[ID] [int] NOT NULL,
	[NAME] [nvarchar](255) NULL,
	[ALIAS] [nvarchar](255) NULL,
 CONSTRAINT [PK_Products_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Medias]  WITH CHECK ADD  CONSTRAINT [FK_Medias_Employees] FOREIGN KEY([ID_EMPLOYEE])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Medias] CHECK CONSTRAINT [FK_Medias_Employees]
GO
ALTER TABLE [dbo].[Medias]  WITH CHECK ADD  CONSTRAINT [FK_Medias_External_Shippers] FOREIGN KEY([ID_EXTERNAL_SHIPPER])
REFERENCES [dbo].[External_Shippers] ([ID])
GO
ALTER TABLE [dbo].[Medias] CHECK CONSTRAINT [FK_Medias_External_Shippers]
GO
ALTER TABLE [dbo].[Medias]  WITH CHECK ADD  CONSTRAINT [FK_Medias_Internal_Shipper] FOREIGN KEY([ID_INTERNAL_SHIPPER])
REFERENCES [dbo].[Internal_Shipper] ([ID])
GO
ALTER TABLE [dbo].[Medias] CHECK CONSTRAINT [FK_Medias_Internal_Shipper]
GO
ALTER TABLE [dbo].[Medias]  WITH CHECK ADD  CONSTRAINT [FK_Medias_Products] FOREIGN KEY([ID_PRODUCT])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[Medias] CHECK CONSTRAINT [FK_Medias_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([ID_EMPLOYEE])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_External_Shippers] FOREIGN KEY([ID_EXTERNAL_SHIPPER])
REFERENCES [dbo].[External_Shippers] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_External_Shippers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Internal_Shipper] FOREIGN KEY([ID_INTERNAL_SHIPPER])
REFERENCES [dbo].[Internal_Shipper] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Internal_Shipper]
GO
ALTER TABLE [dbo].[Orders_Products]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products_Orders] FOREIGN KEY([ID_ORDER])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[Orders_Products] CHECK CONSTRAINT [FK_Orders_Products_Orders]
GO
ALTER TABLE [dbo].[Orders_Products]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products_Products] FOREIGN KEY([ID_PRODUCT])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[Orders_Products] CHECK CONSTRAINT [FK_Orders_Products_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Companys] FOREIGN KEY([ID_COMPANY])
REFERENCES [dbo].[Companys] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Companys]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Products_Categories] FOREIGN KEY([ID_CATEGORY])
REFERENCES [dbo].[Products_Categories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Products_Categories]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WORKING/LEFT OFF/LEAVING OFF' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Internal_Shipper', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
