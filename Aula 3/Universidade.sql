
USE [Universidade]
GO
/****** Object:  Table [dbo].[alunos]    Script Date: 04/09/2024 18:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alunos](
	[ra] [int] NOT NULL,
	[nome] [varchar](150) NULL,
	[endereco] [varchar](200) NULL,
	[cidade] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[disciplinas]    Script Date: 04/09/2024 18:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disciplinas](
	[cod_disc] [varchar](10) NOT NULL,
	[nome_disc] [varchar](50) NULL,
	[carga_hor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_disc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historico]    Script Date: 04/09/2024 18:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historico](
	[idHistorico] [int] IDENTITY(1,1) NOT NULL,
	[ra] [int] NOT NULL,
	[cod_turma] [varchar](10) NULL,
	[frequencia] [float] NULL,
	[nota] [float] NULL,
 CONSTRAINT [PK_historico] PRIMARY KEY CLUSTERED 
(
	[idHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[professores]    Script Date: 04/09/2024 18:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[professores](
	[cod_pro] [varchar](10) NOT NULL,
	[nome_pro] [varchar](150) NULL,
	[endereco_prof] [varchar](200) NULL,
	[cidade_pro] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_pro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[turmas]    Script Date: 04/09/2024 18:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[turmas](
	[cod_disc] [varchar](10) NULL,
	[cod_pro] [varchar](10) NULL,
	[ano] [int] NULL,
	[horario] [int] NULL,
	[cod_turma] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_turma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130001, N'MARIA DA PAZ', N'Rua das Flores, 152', N'Pirapozinho')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130002, N'MARIA DE FATIMA DA SILVA', N'9833 Mt. Dias Blv.', N'Presidente Prudente')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130003, N'JOSE RIBAMAR BATISTA DA SILVA', N'7484 Roundtree Drive', N'Presidente Prudente')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130004, N'MARIA CREUSA DE AMORIM', N'9539 Glenside Dr', N'Presidente Prudente')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130005, N'MARIA KEILANE DE SOUSA SILVA', N'1226 Shoe St.', N'Presidente Prudente')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130006, N'ANTONIO DIEGO DA SILVA LIMA', N'1399 Firestone Drive', N'Pirapozinho')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130007, N'MARIA DE FATIMA DA COSTA BARBOZA', N'5672 Hale Dr.', N'São Paulo')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130008, N'DIANA DE ARAUJO SOUSA', N'6387 Scenic Avenue', N'São Paulo')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130009, N'ADELMA PEREIRA LIMA', N'8713 Yosemite Ct.', N'São Paulo')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130010, N'FRANCIMARY LOPES', N'250 Race Court', N'São Paulo')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130011, N'MARIA LUZIA PASCOA', N'1318 Lasalle Street', N'São Paulo')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130012, N'NADJA DIONNE', N'5415 San Gabriel Dr.', N'Taciba')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130013, N'RAIMUNDA DA COSTA', N'9265 La Paz', N'Taciba')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130014, N'HELLYSSON ANDRE SOUSA', N'8157 W. Book', N'Presidente Prudente')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130015, N'ANTONIA DA CRUZ', N'4912 La Vuelta', N'Presidente Prudente')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130016, N'ERNANDES FERREIRA', N'40 Ellis St.', N'Curitiba')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130017, N'EXPEDITO DE SOUSA', N'6696 Anchor Drive', N'Curitiba')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130018, N'JANAYNA MARIA NUNES', N'1873 Lion Circle', N'Porto Alegre')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130019, N'JEFFERSON RODRIGUES', N'3148 Rose Street', N'Porto Velho')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130020, N'MANOEL DE JESUS P', N'6872 Thornwood Dr.', N'Porto Feliz')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130021, N'MARCELO CORREIA', N'5747 Shirley Drive', N'Blumenau')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130022, N'MARIA DA CONCEICAO', N'636 Vine Hill Way', N'Blumenau')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130023, N'MARIA FRANCISCA', N'6657 Sand Pointe Lane', N'Blumenau')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130024, N'REGINALDO CARDOSO', N'80 Sunview Terrace', N'Blumenau')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130025, N'SEBASTIAO DE SOUSA', N'9178 Jumping St.', N'Presidente Prudente')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130026, N'ANTONIA PEREIRA', N'5725 Glaze Drive', N'Maceió')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130027, N'DENISE RODRIGUES', N'2487 Riverside Drive', N'Maceió')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130028, N'DEUSELINA AMBROSIO', N'9228 Via Del Sol', N'Montes Claros')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130029, N'ANTONIO JOSE DE SOUSA', N'8291 Crossbow Way', N'Belo Horizonte')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130030, N'MAURO PAULO DA SILVA', N'9707 Coldwater Drive', N'Presidente Prudente')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130031, N'FRANCISCA DE PAULA', N'9100 Sheppard Avenue North', N'Presidente Prudente')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130032, N'MARIA HELENA FONTINELE', N'26910 Indela Road', N'Pirapozinho')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130033, N'SOLANGE MARIA DE SOUSA', N'10203 Acorn Avenue', N'Tarabai')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130034, N'ALLYSON PEREIRA', N'94, rue Descartes', N'Anhumas')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130035, N'DHIEGO RIBEIRO', N'Pascalstr 951', N'Anhumas')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130036, N'MARCO ANTONIO BONA', N'34 Waterloo Road', N'Anhumas')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130037, N'REGINALDO FERREIRA', N'Downshire Way', N'Maceió')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130038, N'EDIVALDO FERREIRA', N'8154 Via Mexico', N'Maceió')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130039, N'OSE ALBERTO SANTOS', N'3997 Via De Luna', N'Regente Feij[o')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130040, N'BENEDITA CRUZ', N'1902 Santa Cruz', N'Regente Feij[o')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130041, N'MARLENE SÉ', N'793 Crawford Street', N'Porto Velho')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130042, N'PAULA FONSECA', N'463 H Stagecoach Rd.', N'Rio de Janeiro')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130043, N'GABRIEL SILVA', N'5203 Virginia Lane', N'Rio de Janeiro')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130044, N'GUSTAVO FELIZ', N'4095 Cooper Dr.', N'Sorocaba')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130045, N'JOSÉ JOSEANO', N'6697 Ridge Park Drive', N'Sorocaba')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130046, N'CLAUDIO TOLEDO', N'5669 Ironwood Way', N'Bauru')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130047, N'PAULO SILVA', N'8192 Seagull Court', N'Bauru')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130048, N'ANDRÉ RIBEIRO ', N'5553 Cash Avenue', N'Araçatuba')
INSERT [dbo].[alunos] ([ra], [nome], [endereco], [cidade]) VALUES (6130049, N'JOÃO VIEIRA', N'7048 Laurel', N'Araçatuba')
GO
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'1', N'Matemática', 30)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'10', N'Resistência dos Materiais', 20)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'12', N'Anatomia', 30)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'13', N'Bioquímica', 10)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'14', N'Educação Nutricional', 20)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'15', N'Biologia Celular', 60)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'2', N'História', 60)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'3', N'Banco de Dados', 60)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'4', N'Administração de Produção', 20)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'5', N'Algoritmos e Estruturas de Dados
', 30)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'6', N'Contabilidade', 20)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'7', N'Gestão Ambiental', 10)
INSERT [dbo].[disciplinas] ([cod_disc], [nome_disc], [carga_hor]) VALUES (N'9', N'Mecânica', 60)
GO
SET IDENTITY_INSERT [dbo].[historico] ON 

INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (1, 6130001, N'14', 100, 5)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (2, 6130001, N'2', 75, 7)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (3, 6130001, N'1', 80, 9)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (4, 6130002, N'2', 85, 7)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (5, 6130002, N'1', 70, 2)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (6, 6130002, N'3', 75, 10)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (7, 6130003, N'5', 75, 8)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (8, 6130003, N'1', 80, 8)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (9, 6130003, N'2', 89, 9)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (10, 6130004, N'3', 90, 9)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (11, 6130004, N'6', 100, 8)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (12, 6130005, N'1', 100, 9)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (13, 6130005, N'2', 100, 10)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (14, 6130005, N'3', 80, 9)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (15, 6130006, N'7', 80, 9)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (16, 6130006, N'8', 90, 7)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (17, 6130006, N'9', 75, 6)
INSERT [dbo].[historico] ([idHistorico], [ra], [cod_turma], [frequencia], [nota]) VALUES (18, 6130007, N'1', 77, 10)
SET IDENTITY_INSERT [dbo].[historico] OFF
GO
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'1', N'Ana Paula', N'Rua A', N'Presidente Prudente')
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'10', N'Igor Costa', N'Rua K ', N'Assis')
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'2', N'Paulo Pereira', N'Rua B', N'Presidente Prudente')
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'3', N'Viviani Piloni', N'Rua C', N'Pirapozinho')
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'4', N'Vera Silva', N'Rua D', N'Presidente Prudente')
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'5', N'Sebastião Legal', N'Rua E ', N'Presidente Prudente')
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'6', N'Alessadro Souza', N'Rua F', N'Presidente Prudente')
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'7', N'João Pereira', N'Fua G', N'Presidente Prudente')
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'8', N'Vilma Maria', N'Rua H', N'Presidente Prudente')
INSERT [dbo].[professores] ([cod_pro], [nome_pro], [endereco_prof], [cidade_pro]) VALUES (N'9', N'Moisés Fé', N'Rua J', N'Presidente Prudente')
GO
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'1', N'1', 2119, 1, N'1')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'10', N'10', 2018, 2, N'10')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'12', N'9', 2018, 3, N'11')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'1', N'7', 2019, 4, N'12')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'14', N'5', 2019, 1, N'13')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'15', N'1', 2017, 2, N'14')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'2', N'2', 2017, 2, N'2')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'1', N'3', 2019, 1, N'3')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'3', N'4', 2019, 3, N'4')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'4', N'5', 2016, 1, N'5')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'5', N'6', 2019, 2, N'6')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'1', N'7', 2019, 4, N'7')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'7', N'8', 2017, 4, N'8')
INSERT [dbo].[turmas] ([cod_disc], [cod_pro], [ano], [horario], [cod_turma]) VALUES (N'1', N'9', 2019, 1, N'9')
GO
ALTER TABLE [dbo].[historico]  WITH CHECK ADD  CONSTRAINT [FK__historico__cod_t__4316F928] FOREIGN KEY([cod_turma])
REFERENCES [dbo].[turmas] ([cod_turma])
GO
ALTER TABLE [dbo].[historico] CHECK CONSTRAINT [FK__historico__cod_t__4316F928]
GO
ALTER TABLE [dbo].[historico]  WITH CHECK ADD  CONSTRAINT [FK__historico__ra__412EB0B6] FOREIGN KEY([ra])
REFERENCES [dbo].[alunos] ([ra])
GO
ALTER TABLE [dbo].[historico] CHECK CONSTRAINT [FK__historico__ra__412EB0B6]
GO
ALTER TABLE [dbo].[turmas]  WITH CHECK ADD FOREIGN KEY([cod_disc])
REFERENCES [dbo].[disciplinas] ([cod_disc])
GO
ALTER TABLE [dbo].[turmas]  WITH CHECK ADD FOREIGN KEY([cod_pro])
REFERENCES [dbo].[professores] ([cod_pro])
GO
USE [master]
GO
ALTER DATABASE [Universidade] SET  READ_WRITE 
GO
