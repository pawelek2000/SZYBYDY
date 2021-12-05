---------------------------- INSERT VALUES ----------------------------
USE SBD_DB;

-- Account
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT INTO [dbo].[Account] ([ID], [Email], [Password]) VALUES (1, N'mariusz.pudzianowski@bartosz027.ru', N'chleb')
INSERT INTO [dbo].[Account] ([ID], [Email], [Password]) VALUES (2, N'frytka@biedronka.pt', N'mniam')
INSERT INTO [dbo].[Account] ([ID], [Email], [Password]) VALUES (3, N'ibrahim.sadajew@turtur.de', N'prosciutto')
INSERT INTO [dbo].[Account] ([ID], [Email], [Password]) VALUES (4, N'nicola.mancini@pizza.it', N'schmetterling')
INSERT INTO [dbo].[Account] ([ID], [Email], [Password]) VALUES (5, N'bozena.kowalska@radiomaryja.pl', N'ostrabozena666')
INSERT INTO [dbo].[Account] ([ID], [Email], [Password]) VALUES (6, N'mariusz.szatan@gmail.com', N'kasztan')
INSERT INTO [dbo].[Account] ([ID], [Email], [Password]) VALUES (7, N'mati.spoko.ziom1969@wp.pl', N'ekipaMinimajka')
SET IDENTITY_INSERT [dbo].[Account] OFF

-- Class
SET IDENTITY_INSERT [dbo].[Class] ON
INSERT INTO [dbo].[Class] ([ID], [ClassName], [StartDate]) VALUES (1, N'IA', N'2016-09-01')
SET IDENTITY_INSERT [dbo].[Class] OFF

-- Subject
SET IDENTITY_INSERT [dbo].[Subject] ON
INSERT INTO [dbo].[Subject] ([ID], [Name], [LearningContent]) VALUES (1, N'Religia', N'Bóg')
INSERT INTO [dbo].[Subject] ([ID], [Name], [LearningContent]) VALUES (2, N'Historia Wielkiej Polski', N'Honor')
INSERT INTO [dbo].[Subject] ([ID], [Name], [LearningContent]) VALUES (4, N'Język polski', N'Ojczyzna')
SET IDENTITY_INSERT [dbo].[Subject] OFF

-- Teacher
SET IDENTITY_INSERT [dbo].[Teacher] ON
INSERT INTO [dbo].[Teacher] ([ID], [Account_ID], [Name], [Surname], [PhoneNumber]) VALUES (1, 3, N'Ibrahim', N'Sadajew', N'888989812')
INSERT INTO [dbo].[Teacher] ([ID], [Account_ID], [Name], [Surname], [PhoneNumber]) VALUES (2, 7, N'Mateusz', N'Mateusz', N'213707369')
SET IDENTITY_INSERT [dbo].[Teacher] OFF

-- Parent
SET IDENTITY_INSERT [dbo].[Parent] ON
INSERT INTO [dbo].[Parent] ([ID], [Account_ID], [Name], [Surname], [PhoneNumber]) VALUES (3, 1, N'Mariusz', N'Pudzianowski', N'997123454')
INSERT INTO [dbo].[Parent] ([ID], [Account_ID], [Name], [Surname], [PhoneNumber]) VALUES (5, 5, N'Bozena', N'Kowalska', N'666315666')
SET IDENTITY_INSERT [dbo].[Parent] OFF

-- Student
SET IDENTITY_INSERT [dbo].[Student] ON
INSERT INTO [dbo].[Student] ([ID], [Class_ID], [Parent_ID], [Account_ID], [Name], [Surname], [PhoneNumber]) VALUES (5, 1, 3, 2, N'Gianluigi', N'Frytetti', N'565667878')
INSERT INTO [dbo].[Student] ([ID], [Class_ID], [Parent_ID], [Account_ID], [Name], [Surname], [PhoneNumber]) VALUES (6, 1, 3, 4, N'Nicola', N'Mancini', N'431323664')
INSERT INTO [dbo].[Student] ([ID], [Class_ID], [Parent_ID], [Account_ID], [Name], [Surname], [PhoneNumber]) VALUES (7, 1, 5, 6, N'Mariusz', N'Szatan', N'777667776')
SET IDENTITY_INSERT [dbo].[Student] OFF

-- Grade
SET IDENTITY_INSERT [dbo].[Grade] ON
INSERT INTO [dbo].[Grade] ([ID], [Student_ID], [Subject_ID], [Value], [IsFinal], [AddedDate]) VALUES (2, 5, 2, N'6', 0, N'2016-09-02')
INSERT INTO [dbo].[Grade] ([ID], [Student_ID], [Subject_ID], [Value], [IsFinal], [AddedDate]) VALUES (3, 6, 2, N'6', 0, N'2016-09-05')
INSERT INTO [dbo].[Grade] ([ID], [Student_ID], [Subject_ID], [Value], [IsFinal], [AddedDate]) VALUES (4, 7, 2, N'4.5', 0, N'2016-09-06')
SET IDENTITY_INSERT [dbo].[Grade] OFF

-- Class_Subject_Teacher
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_ID], [Subject_ID], [Teacher_ID]) VALUES (1, 1, 1)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_ID], [Subject_ID], [Teacher_ID]) VALUES (1, 2, 2)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_ID], [Subject_ID], [Teacher_ID]) VALUES (1, 4, 1)