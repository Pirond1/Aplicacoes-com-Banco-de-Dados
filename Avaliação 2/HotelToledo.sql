USE [master]
GO
/****** Object:  Database [HotelToledo]    Script Date: 05/10/2021 20:54:53 ******/
CREATE DATABASE [HotelToledo]
go
USE [HotelToledo]
GO
/****** Object:  Table [dbo].[TipoHospede]    Script Date: 05/10/2021 20:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoHospede](
	[tph_codigo] [int] NOT NULL,
	[tph_descricao] [varchar](50) NULL,
 CONSTRAINT [PK_TipoHospede] PRIMARY KEY CLUSTERED 
(
	[tph_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospede]    Script Date: 05/10/2021 20:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospede](
	[hos_codigo] [int] NOT NULL,
	[tph_codigo] [int] NOT NULL,
	[hos_nome] [varchar](100) NULL,
	[hos_celular] [varchar](50) NULL,
	[hos_status] [char](1) NULL,
 CONSTRAINT [PK_Hospede] PRIMARY KEY CLUSTERED 
(
	[hos_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 05/10/2021 20:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[res_codigo] [int] NOT NULL,
	[fun_codigo] [int] NOT NULL,
	[qua_codigo] [int] NOT NULL,
	[hos_codigo] [int] NOT NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[res_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospedagem]    Script Date: 05/10/2021 20:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospedagem](
	[hpg_codigo] [int] NOT NULL,
	[res_codigo] [int] NOT NULL,
	[hpg_status] [char](1) NULL,
	[hpg_dtEntrada] [date] NULL,
	[hpg_valorTotal] [decimal](8, 2) NULL,
 CONSTRAINT [PK_Hospedagem] PRIMARY KEY CLUSTERED 
(
	[hpg_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[HospedagemContato]    Script Date: 05/10/2021 20:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[HospedagemContato] as
select h.hos_nome, th.tph_descricao, h.hos_celular, hg.hpg_dtEntrada from Hospede h
inner join TipoHospede th on th.tph_codigo = h.tph_codigo
inner join Reserva r on r.hos_codigo = h.hos_codigo
inner join Hospedagem hg on hg.res_codigo = r.res_codigo
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 05/10/2021 20:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionario](
	[fun_codigo] [int] NOT NULL,
	[fun_nome] [varchar](50) NULL,
	[fun_senha] [char](10) NULL,
	[fun_login] [char](10) NULL,
	[fun_salario] [decimal](8, 2) NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[fun_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quarto]    Script Date: 05/10/2021 20:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quarto](
	[qua_numero] [int] NOT NULL,
	[tpq_codigo] [int] NOT NULL,
	[qua_numleitos] [int] NULL,
	[qua_frigobar] [bit] NULL,
	[qua_banheiro] [int] NULL,
 CONSTRAINT [PK_Quarto] PRIMARY KEY CLUSTERED 
(
	[qua_numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoQuarto]    Script Date: 05/10/2021 20:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoQuarto](
	[tpq_codigo] [int] NOT NULL,
	[tpq_descricao] [varchar](50) NULL,
 CONSTRAINT [PK_TipoQuarto] PRIMARY KEY CLUSTERED 
(
	[tpq_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Funcionario] ([fun_codigo], [fun_nome], [fun_senha], [fun_login], [fun_salario]) VALUES (1, N'Maria da Silva', N'lskfmd    ', N'msilva    ', CAST(850.99 AS Decimal(8, 2)))
INSERT [dbo].[Funcionario] ([fun_codigo], [fun_nome], [fun_senha], [fun_login], [fun_salario]) VALUES (2, N'José Pereira', N'd.fçgm    ', N'jpereira  ', CAST(1000.00 AS Decimal(8, 2)))
INSERT [dbo].[Funcionario] ([fun_codigo], [fun_nome], [fun_senha], [fun_login], [fun_salario]) VALUES (3, N'João Moreira', N'dgçlm     ', N'jmoreira  ', CAST(1200.00 AS Decimal(8, 2)))
INSERT [dbo].[Funcionario] ([fun_codigo], [fun_nome], [fun_senha], [fun_login], [fun_salario]) VALUES (4, N'Miguel Almeida', N'dçrgk     ', N'malmeida  ', CAST(700.00 AS Decimal(8, 2)))
INSERT [dbo].[Funcionario] ([fun_codigo], [fun_nome], [fun_senha], [fun_login], [fun_salario]) VALUES (5, N'Artur Vertui', N'sçlrfkmdrl', N'avertui   ', CAST(1200.00 AS Decimal(8, 2)))
INSERT [dbo].[Funcionario] ([fun_codigo], [fun_nome], [fun_senha], [fun_login], [fun_salario]) VALUES (6, N'Ana Carolina Medeiros', N'sdlf,dç   ', N'amedeiros ', CAST(3000.00 AS Decimal(8, 2)))
INSERT [dbo].[Funcionario] ([fun_codigo], [fun_nome], [fun_senha], [fun_login], [fun_salario]) VALUES (7, N'Rafael Martins Vasconcelos', N'dlfkmgdk  ', N'rmartins  ', CAST(2455.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[Hospedagem] ([hpg_codigo], [res_codigo], [hpg_status], [hpg_dtEntrada], [hpg_valorTotal]) VALUES (1, 1, N'F', CAST(N'2019-02-07' AS Date), CAST(155.00 AS Decimal(8, 2)))
INSERT [dbo].[Hospedagem] ([hpg_codigo], [res_codigo], [hpg_status], [hpg_dtEntrada], [hpg_valorTotal]) VALUES (2, 3, N'A', CAST(N'2019-06-01' AS Date), NULL)
INSERT [dbo].[Hospedagem] ([hpg_codigo], [res_codigo], [hpg_status], [hpg_dtEntrada], [hpg_valorTotal]) VALUES (3, 2, N'F', CAST(N'2019-06-01' AS Date), CAST(279.50 AS Decimal(8, 2)))
INSERT [dbo].[Hospedagem] ([hpg_codigo], [res_codigo], [hpg_status], [hpg_dtEntrada], [hpg_valorTotal]) VALUES (4, 4, N'A', CAST(N'2019-06-03' AS Date), NULL)
INSERT [dbo].[Hospedagem] ([hpg_codigo], [res_codigo], [hpg_status], [hpg_dtEntrada], [hpg_valorTotal]) VALUES (5, 5, N'F', CAST(N'2019-06-09' AS Date), CAST(986.22 AS Decimal(8, 2)))
INSERT [dbo].[Hospedagem] ([hpg_codigo], [res_codigo], [hpg_status], [hpg_dtEntrada], [hpg_valorTotal]) VALUES (6, 6, N'F', CAST(N'2019-06-10' AS Date), CAST(1254.99 AS Decimal(8, 2)))
INSERT [dbo].[Hospedagem] ([hpg_codigo], [res_codigo], [hpg_status], [hpg_dtEntrada], [hpg_valorTotal]) VALUES (7, 7, N'A', CAST(N'2019-06-20' AS Date), NULL)
INSERT [dbo].[Hospedagem] ([hpg_codigo], [res_codigo], [hpg_status], [hpg_dtEntrada], [hpg_valorTotal]) VALUES (8, 8, N'F', CAST(N'2019-06-20' AS Date), CAST(2125.33 AS Decimal(8, 2)))
GO
INSERT [dbo].[Hospede] ([hos_codigo], [tph_codigo], [hos_nome], [hos_celular], [hos_status]) VALUES (1, 1, N'Murilo Santos', N'98465-1354', N'A')
INSERT [dbo].[Hospede] ([hos_codigo], [tph_codigo], [hos_nome], [hos_celular], [hos_status]) VALUES (2, 1, N'José Ribeiro', N'98456-8758', N'A')
INSERT [dbo].[Hospede] ([hos_codigo], [tph_codigo], [hos_nome], [hos_celular], [hos_status]) VALUES (3, 1, N'Heitor Vaz', N'91254-5684', N'A')
INSERT [dbo].[Hospede] ([hos_codigo], [tph_codigo], [hos_nome], [hos_celular], [hos_status]) VALUES (4, 3, N'Priscila Bento', N'94568-9587', N'A')
INSERT [dbo].[Hospede] ([hos_codigo], [tph_codigo], [hos_nome], [hos_celular], [hos_status]) VALUES (5, 3, N'Victor Oliveira', N'89546-5125', N'I')
INSERT [dbo].[Hospede] ([hos_codigo], [tph_codigo], [hos_nome], [hos_celular], [hos_status]) VALUES (6, 1, N'Claudio Antonio', N'94564-4587', N'A')
GO
INSERT [dbo].[Quarto] ([qua_numero], [tpq_codigo], [qua_numleitos], [qua_frigobar], [qua_banheiro]) VALUES (1, 1, 1, 1, 2)
INSERT [dbo].[Quarto] ([qua_numero], [tpq_codigo], [qua_numleitos], [qua_frigobar], [qua_banheiro]) VALUES (2, 1, 1, 1, 1)
INSERT [dbo].[Quarto] ([qua_numero], [tpq_codigo], [qua_numleitos], [qua_frigobar], [qua_banheiro]) VALUES (3, 2, 2, 1, 1)
INSERT [dbo].[Quarto] ([qua_numero], [tpq_codigo], [qua_numleitos], [qua_frigobar], [qua_banheiro]) VALUES (4, 2, 2, 0, 1)
INSERT [dbo].[Quarto] ([qua_numero], [tpq_codigo], [qua_numleitos], [qua_frigobar], [qua_banheiro]) VALUES (5, 3, 1, 1, 1)
INSERT [dbo].[Quarto] ([qua_numero], [tpq_codigo], [qua_numleitos], [qua_frigobar], [qua_banheiro]) VALUES (6, 3, 2, 1, 2)
GO
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (1, 1, 1, 2)
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (2, 1, 1, 1)
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (3, 2, 1, 2)
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (4, 1, 5, 3)
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (5, 4, 3, 6)
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (6, 3, 2, 2)
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (7, 4, 4, 5)
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (8, 1, 2, 3)
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (9, 5, 6, 6)
INSERT [dbo].[Reserva] ([res_codigo], [fun_codigo], [qua_codigo], [hos_codigo]) VALUES (10, 3, 1, 1)
GO
INSERT [dbo].[TipoHospede] ([tph_codigo], [tph_descricao]) VALUES (1, N'Corporativo')
INSERT [dbo].[TipoHospede] ([tph_codigo], [tph_descricao]) VALUES (2, N'Social')
INSERT [dbo].[TipoHospede] ([tph_codigo], [tph_descricao]) VALUES (3, N'Lazer')
GO
INSERT [dbo].[TipoQuarto] ([tpq_codigo], [tpq_descricao]) VALUES (1, N'quarto solteiro')
INSERT [dbo].[TipoQuarto] ([tpq_codigo], [tpq_descricao]) VALUES (2, N'quarto duplo solteiro')
INSERT [dbo].[TipoQuarto] ([tpq_codigo], [tpq_descricao]) VALUES (3, N'quarto casal')
INSERT [dbo].[TipoQuarto] ([tpq_codigo], [tpq_descricao]) VALUES (4, N'quarto master')
GO
ALTER TABLE [dbo].[Hospedagem]  WITH CHECK ADD  CONSTRAINT [FK_Hospedagem_Reserva] FOREIGN KEY([res_codigo])
REFERENCES [dbo].[Reserva] ([res_codigo])
GO
ALTER TABLE [dbo].[Hospedagem] CHECK CONSTRAINT [FK_Hospedagem_Reserva]
GO
ALTER TABLE [dbo].[Hospede]  WITH CHECK ADD  CONSTRAINT [FK_Hospede_TipoHospede] FOREIGN KEY([tph_codigo])
REFERENCES [dbo].[TipoHospede] ([tph_codigo])
GO
ALTER TABLE [dbo].[Hospede] CHECK CONSTRAINT [FK_Hospede_TipoHospede]
GO
ALTER TABLE [dbo].[Quarto]  WITH CHECK ADD  CONSTRAINT [FK_Quarto_TipoQuarto] FOREIGN KEY([tpq_codigo])
REFERENCES [dbo].[TipoQuarto] ([tpq_codigo])
GO
ALTER TABLE [dbo].[Quarto] CHECK CONSTRAINT [FK_Quarto_TipoQuarto]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Funcionario] FOREIGN KEY([fun_codigo])
REFERENCES [dbo].[Funcionario] ([fun_codigo])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Funcionario]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Hospede] FOREIGN KEY([hos_codigo])
REFERENCES [dbo].[Hospede] ([hos_codigo])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Hospede]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Quarto] FOREIGN KEY([qua_codigo])
REFERENCES [dbo].[Quarto] ([qua_numero])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Quarto]
GO
USE [master]
GO
ALTER DATABASE [HotelToledo] SET  READ_WRITE 
GO
