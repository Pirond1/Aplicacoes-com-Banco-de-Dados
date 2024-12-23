USE [master]
GO
/****** Object:  Database [Escritorio]    Script Date: 16/11/2021 18:57:16 ******/
CREATE DATABASE [Escritorio]
GO
use Escritorio
GO
CREATE TABLE [dbo].[Advogado](
	[adv_codigo] [int] IDENTITY(1,1) NOT NULL,
	[adv_nome] [varchar](150) NOT NULL,
	[adv_sobrenome] [varchar](150) NOT NULL,
	[adv_cpf] [varchar](15) NOT NULL,
	[adv_numOab] [varchar](50) NOT NULL,
	[adv_token] [varchar](50) NULL,
	[adv_valorHora] [decimal](18, 2) NOT NULL,
	[adv_email] [varchar](150) NOT NULL,
	[adv_valorHonorarios] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Advogado] PRIMARY KEY CLUSTERED 
(
	[adv_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Advogado_Especializacao]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advogado_Especializacao](
	[aes_codigo] [int] IDENTITY(1,1) NOT NULL,
	[adv_codigo] [int] NOT NULL,
	[esp_codigo] [int] NOT NULL,
 CONSTRAINT [PK_Advogado_Especializacao] PRIMARY KEY CLUSTERED 
(
	[aes_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Audiencia]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audiencia](
	[aud_codigo] [int] NOT NULL,
	[aud_data] [date] NULL,
	[aud_hora] [datetime] NULL,
	[aud_tipo] [varchar](50) NULL,
 CONSTRAINT [PK_Audiencia] PRIMARY KEY CLUSTERED 
(
	[aud_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[cli_codigo] [int] NOT NULL,
	[cli_nome] [varchar](50) NULL,
	[cli_sobrenome] [varchar](50) NULL,
	[cli_cpf] [varchar](50) NULL,
	[cli_rg] [varchar](50) NULL,
	[cli_email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[cli_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente_Endereco]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente_Endereco](
	[cen_codigo] [int] NOT NULL,
	[end_codigo] [int] NOT NULL,
	[cli_codigo] [int] NOT NULL,
 CONSTRAINT [PK_Cliente_Endereco] PRIMARY KEY CLUSTERED 
(
	[cen_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endereco](
	[end_codigo] [int] NOT NULL,
	[end_rua] [varchar](50) NULL,
	[end_bairro] [varchar](50) NULL,
	[end_num] [int] NULL,
	[end_cidade] [varchar](50) NULL,
	[end_estado] [varchar](50) NULL,
	[end_cep] [varchar](50) NULL,
 CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED 
(
	[end_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especializacao]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especializacao](
	[esp_codigo] [int] IDENTITY(1,1) NOT NULL,
	[esp_nome] [varchar](150) NULL,
 CONSTRAINT [PK_Especializacao] PRIMARY KEY CLUSTERED 
(
	[esp_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogSistema]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogSistema](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[log_descricao] [varchar](200) NULL,
	[log_data] [date] NULL,
 CONSTRAINT [PK_LogSistema] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Processo]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Processo](
	[pro_codigo] [int] NOT NULL,
	[aud_codigo] [int] NULL,
	[pro_numero] [varchar](50) NULL,
	[pro_status] [varchar](50) NULL,
	[pro_custoProcesso] [decimal](18, 0) NULL,
	[pro_vara] [varchar](50) NULL,
	[pro_horas] [int] NULL,
 CONSTRAINT [PK_Processo] PRIMARY KEY CLUSTERED 
(
	[pro_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Processo_Advogado]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Processo_Advogado](
	[pad_Codigo] [int] NOT NULL,
	[adv_codigo] [int] NOT NULL,
	[pro_codigo] [int] NOT NULL,
 CONSTRAINT [PK_Processo_Advogado] PRIMARY KEY CLUSTERED 
(
	[pad_Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Processo_cliente]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Processo_cliente](
	[pcl_codigo] [int] NOT NULL,
	[pro_codigo] [int] NOT NULL,
	[cli_codigo] [int] NOT NULL,
 CONSTRAINT [PK_Processo_cliente] PRIMARY KEY CLUSTERED 
(
	[pcl_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vara]    Script Date: 16/11/2021 18:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vara](
	[var_codigo] [int] NOT NULL,
	[var_numero] [int] NULL,
	[var_nome] [varchar](50) NULL,
	[var_juiz] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Advogado] ON 

INSERT [dbo].[Advogado] ([adv_codigo], [adv_nome], [adv_sobrenome], [adv_cpf], [adv_numOab], [adv_token], [adv_valorHora], [adv_email], [adv_valorHonorarios]) VALUES (1, N'Maria', N'Pereira', N'644.105.600-34', N'123456', N'123456', CAST(15.25 AS Decimal(18, 2)), N'maria@uol.com.br', CAST(15.20 AS Decimal(18, 2)))
INSERT [dbo].[Advogado] ([adv_codigo], [adv_nome], [adv_sobrenome], [adv_cpf], [adv_numOab], [adv_token], [adv_valorHora], [adv_email], [adv_valorHonorarios]) VALUES (4, N'João Paulo', N'Mauá', N'650.383.310-50', N'125891', N'125891', CAST(16.55 AS Decimal(18, 2)), N'jp@uol.com.br', CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[Advogado] ([adv_codigo], [adv_nome], [adv_sobrenome], [adv_cpf], [adv_numOab], [adv_token], [adv_valorHora], [adv_email], [adv_valorHonorarios]) VALUES (6, N'Manoel', N'Batista', N'007.259.030-07', N'958745', N'958745', CAST(10.50 AS Decimal(18, 2)), N'manoel@uol.com.br', CAST(9.00 AS Decimal(18, 2)))
INSERT [dbo].[Advogado] ([adv_codigo], [adv_nome], [adv_sobrenome], [adv_cpf], [adv_numOab], [adv_token], [adv_valorHora], [adv_email], [adv_valorHonorarios]) VALUES (7, N'André', N'Valpert', N'531.442.470-30', N'258741', N'258741', CAST(19.77 AS Decimal(18, 2)), N'andre@uol.com.br', CAST(17.20 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Advogado] OFF
GO
SET IDENTITY_INSERT [dbo].[Advogado_Especializacao] ON 

INSERT [dbo].[Advogado_Especializacao] ([aes_codigo], [adv_codigo], [esp_codigo]) VALUES (18, 1, 1)
INSERT [dbo].[Advogado_Especializacao] ([aes_codigo], [adv_codigo], [esp_codigo]) VALUES (19, 1, 3)
INSERT [dbo].[Advogado_Especializacao] ([aes_codigo], [adv_codigo], [esp_codigo]) VALUES (20, 4, 5)
INSERT [dbo].[Advogado_Especializacao] ([aes_codigo], [adv_codigo], [esp_codigo]) VALUES (21, 6, 1)
INSERT [dbo].[Advogado_Especializacao] ([aes_codigo], [adv_codigo], [esp_codigo]) VALUES (22, 6, 5)
INSERT [dbo].[Advogado_Especializacao] ([aes_codigo], [adv_codigo], [esp_codigo]) VALUES (23, 7, 5)
SET IDENTITY_INSERT [dbo].[Advogado_Especializacao] OFF
GO
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (1, CAST(N'2020-11-10' AS Date), NULL, N'1')
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (2, CAST(N'2020-11-11' AS Date), NULL, N'2')
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (3, CAST(N'2020-11-12' AS Date), NULL, N'3')
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (4, CAST(N'2020-11-13' AS Date), NULL, N'4')
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (5, CAST(N'2020-11-14' AS Date), NULL, N'5')
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (6, CAST(N'2020-11-15' AS Date), NULL, N'6')
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (7, CAST(N'2020-11-15' AS Date), NULL, N'1')
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (8, CAST(N'2020-11-15' AS Date), NULL, N'5')
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (9, CAST(N'2020-11-15' AS Date), NULL, N'2')
INSERT [dbo].[Audiencia] ([aud_codigo], [aud_data], [aud_hora], [aud_tipo]) VALUES (10, CAST(N'2020-11-16' AS Date), NULL, N'3')
GO
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nome], [cli_sobrenome], [cli_cpf], [cli_rg], [cli_email]) VALUES (1, N'Claudio', N'Santos', N'029.048.600-96', NULL, N'claudio@uol.com.br')
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nome], [cli_sobrenome], [cli_cpf], [cli_rg], [cli_email]) VALUES (2, N'André', N'Pereira', N'304.260.050-58', NULL, N'andrep@uol.com.br')
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nome], [cli_sobrenome], [cli_cpf], [cli_rg], [cli_email]) VALUES (3, N'Alesssandro', N'Silva', N'237.602.340-89', NULL, N'alessandro@globo.com')
GO
INSERT [dbo].[Cliente_Endereco] ([cen_codigo], [end_codigo], [cli_codigo]) VALUES (1, 1, 3)
INSERT [dbo].[Cliente_Endereco] ([cen_codigo], [end_codigo], [cli_codigo]) VALUES (2, 2, 2)
INSERT [dbo].[Cliente_Endereco] ([cen_codigo], [end_codigo], [cli_codigo]) VALUES (3, 3, 1)
GO
INSERT [dbo].[Endereco] ([end_codigo], [end_rua], [end_bairro], [end_num], [end_cidade], [end_estado], [end_cep]) VALUES (1, N'Rua a', N'Centro', 1, N'Presidente Prudente', N'SP ', N'19100-000')
INSERT [dbo].[Endereco] ([end_codigo], [end_rua], [end_bairro], [end_num], [end_cidade], [end_estado], [end_cep]) VALUES (2, N'Rua Rui Barbosa', N'Centro', 123, N'Pirapozinho', N'SP', N'19200-000')
INSERT [dbo].[Endereco] ([end_codigo], [end_rua], [end_bairro], [end_num], [end_cidade], [end_estado], [end_cep]) VALUES (3, N'Rua Tiradentes', N'Bolsque', 500, N'Presidente Prudente', N'SP', N'19100-000')
GO
SET IDENTITY_INSERT [dbo].[Especializacao] ON 

INSERT [dbo].[Especializacao] ([esp_codigo], [esp_nome]) VALUES (1, N'Criminal')
INSERT [dbo].[Especializacao] ([esp_codigo], [esp_nome]) VALUES (3, N'Família')
INSERT [dbo].[Especializacao] ([esp_codigo], [esp_nome]) VALUES (4, N'Civil')
INSERT [dbo].[Especializacao] ([esp_codigo], [esp_nome]) VALUES (5, N'Trabalhista')
SET IDENTITY_INSERT [dbo].[Especializacao] OFF
GO
INSERT [dbo].[Processo] ([pro_codigo], [aud_codigo], [pro_numero], [pro_status], [pro_custoProcesso], [pro_vara], [pro_horas]) VALUES (1, 1, N'100', N'A', NULL, N'1', 5)
INSERT [dbo].[Processo] ([pro_codigo], [aud_codigo], [pro_numero], [pro_status], [pro_custoProcesso], [pro_vara], [pro_horas]) VALUES (2, 2, N'200', N'A', NULL, N'2', 9)
INSERT [dbo].[Processo] ([pro_codigo], [aud_codigo], [pro_numero], [pro_status], [pro_custoProcesso], [pro_vara], [pro_horas]) VALUES (3, 3, N'300', N'A', NULL, N'4', 50)
INSERT [dbo].[Processo] ([pro_codigo], [aud_codigo], [pro_numero], [pro_status], [pro_custoProcesso], [pro_vara], [pro_horas]) VALUES (4, 10, N'400', N'A', NULL, N'3', 24)
INSERT [dbo].[Processo] ([pro_codigo], [aud_codigo], [pro_numero], [pro_status], [pro_custoProcesso], [pro_vara], [pro_horas]) VALUES (5, 9, N'500', N'A', NULL, N'1', 3)
INSERT [dbo].[Processo] ([pro_codigo], [aud_codigo], [pro_numero], [pro_status], [pro_custoProcesso], [pro_vara], [pro_horas]) VALUES (6, 5, N'600', N'A', NULL, N'2', 10)
GO
INSERT [dbo].[Processo_Advogado] ([pad_Codigo], [adv_codigo], [pro_codigo]) VALUES (1, 1, 4)
INSERT [dbo].[Processo_Advogado] ([pad_Codigo], [adv_codigo], [pro_codigo]) VALUES (2, 1, 1)
INSERT [dbo].[Processo_Advogado] ([pad_Codigo], [adv_codigo], [pro_codigo]) VALUES (3, 4, 6)
INSERT [dbo].[Processo_Advogado] ([pad_Codigo], [adv_codigo], [pro_codigo]) VALUES (4, 6, 2)
INSERT [dbo].[Processo_Advogado] ([pad_Codigo], [adv_codigo], [pro_codigo]) VALUES (5, 7, 5)
INSERT [dbo].[Processo_Advogado] ([pad_Codigo], [adv_codigo], [pro_codigo]) VALUES (6, 6, 3)
GO
INSERT [dbo].[Processo_cliente] ([pcl_codigo], [pro_codigo], [cli_codigo]) VALUES (1, 1, 2)
INSERT [dbo].[Processo_cliente] ([pcl_codigo], [pro_codigo], [cli_codigo]) VALUES (2, 2, 1)
INSERT [dbo].[Processo_cliente] ([pcl_codigo], [pro_codigo], [cli_codigo]) VALUES (3, 5, 3)
INSERT [dbo].[Processo_cliente] ([pcl_codigo], [pro_codigo], [cli_codigo]) VALUES (4, 6, 1)
GO
INSERT [dbo].[Vara] ([var_codigo], [var_numero], [var_nome], [var_juiz]) VALUES (1, 100, N'Vara Jus 1', N'Eduardo Antonio')
INSERT [dbo].[Vara] ([var_codigo], [var_numero], [var_nome], [var_juiz]) VALUES (2, 200, N'Vara Jus 2', N'Emanuel Cravo')
INSERT [dbo].[Vara] ([var_codigo], [var_numero], [var_nome], [var_juiz]) VALUES (3, 300, N'Vara Jus 3', N'Henrique Paz')
INSERT [dbo].[Vara] ([var_codigo], [var_numero], [var_nome], [var_juiz]) VALUES (4, 400, N'Vara Jus 4', N'Viviani Piloni')
GO
ALTER TABLE [dbo].[Advogado_Especializacao]  WITH CHECK ADD  CONSTRAINT [FK_Advogado_Especializacao_Advogado] FOREIGN KEY([adv_codigo])
REFERENCES [dbo].[Advogado] ([adv_codigo])
GO
ALTER TABLE [dbo].[Advogado_Especializacao] CHECK CONSTRAINT [FK_Advogado_Especializacao_Advogado]
GO
ALTER TABLE [dbo].[Advogado_Especializacao]  WITH CHECK ADD  CONSTRAINT [FK_Advogado_Especializacao_Especializacao] FOREIGN KEY([esp_codigo])
REFERENCES [dbo].[Especializacao] ([esp_codigo])
GO
ALTER TABLE [dbo].[Advogado_Especializacao] CHECK CONSTRAINT [FK_Advogado_Especializacao_Especializacao]
GO
ALTER TABLE [dbo].[Cliente_Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Endereco_Cliente] FOREIGN KEY([cli_codigo])
REFERENCES [dbo].[Cliente] ([cli_codigo])
GO
ALTER TABLE [dbo].[Cliente_Endereco] CHECK CONSTRAINT [FK_Cliente_Endereco_Cliente]
GO
ALTER TABLE [dbo].[Cliente_Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Endereco_Endereco] FOREIGN KEY([end_codigo])
REFERENCES [dbo].[Endereco] ([end_codigo])
GO
ALTER TABLE [dbo].[Cliente_Endereco] CHECK CONSTRAINT [FK_Cliente_Endereco_Endereco]
GO
ALTER TABLE [dbo].[Processo_Advogado]  WITH CHECK ADD  CONSTRAINT [FK_Processo_Advogado_Advogado] FOREIGN KEY([adv_codigo])
REFERENCES [dbo].[Advogado] ([adv_codigo])
GO
ALTER TABLE [dbo].[Processo_Advogado] CHECK CONSTRAINT [FK_Processo_Advogado_Advogado]
GO
ALTER TABLE [dbo].[Processo_Advogado]  WITH CHECK ADD  CONSTRAINT [FK_Processo_Advogado_Processo] FOREIGN KEY([pro_codigo])
REFERENCES [dbo].[Processo] ([pro_codigo])
GO
ALTER TABLE [dbo].[Processo_Advogado] CHECK CONSTRAINT [FK_Processo_Advogado_Processo]
GO
ALTER TABLE [dbo].[Processo_cliente]  WITH CHECK ADD  CONSTRAINT [FK_Processo_cliente_Cliente] FOREIGN KEY([cli_codigo])
REFERENCES [dbo].[Cliente] ([cli_codigo])
GO
ALTER TABLE [dbo].[Processo_cliente] CHECK CONSTRAINT [FK_Processo_cliente_Cliente]
GO
ALTER TABLE [dbo].[Processo_cliente]  WITH CHECK ADD  CONSTRAINT [FK_Processo_cliente_Processo] FOREIGN KEY([pro_codigo])
REFERENCES [dbo].[Processo] ([pro_codigo])
GO
ALTER TABLE [dbo].[Processo_cliente] CHECK CONSTRAINT [FK_Processo_cliente_Processo]
GO
USE [master]
GO
ALTER DATABASE [Escritorio] SET  READ_WRITE 
GO
