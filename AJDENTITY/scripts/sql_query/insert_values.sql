---------------------------- INSERT VALUES ----------------------------
USE SBD_DB;

-- Class
SET IDENTITY_INSERT [dbo].[Class] ON
INSERT INTO [dbo].[Class] ([Id], [ClassName], [StartDate]) VALUES (1, N'IA', N'2016-09-01')
SET IDENTITY_INSERT [dbo].[Class] OFF

-- Subject
SET IDENTITY_INSERT [dbo].[Subject] ON
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (1, N'Religia', N'Bóg')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (2, N'Historia Wielkiej Polski', N'Honor')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (4, N'Język polski', N'Ojczyzna')
SET IDENTITY_INSERT [dbo].[Subject] OFF

-- Teacher
SET IDENTITY_INSERT [dbo].[Teacher] ON
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (1, N'3446b57c-ff35-436a-bf7b-593345ecfb80', N'Ibrahim', N'Sadajew', N'888989812')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (2, N'08abb7c0-2581-4fb9-89c5-b01b8cb4f05b', N'Mateusz', N'Mateusz', N'213707369')
SET IDENTITY_INSERT [dbo].[Teacher] OFF

-- Parent
SET IDENTITY_INSERT [dbo].[Parent] ON
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (3, N'd2d693e8-c354-4b61-a7a0-bbf5d9ba4d84', N'Mariusz', N'Pudzianowski', N'997123454')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (5, N'6dc9229f-095f-4dc6-b961-cf054d74be18', N'Bozena', N'Kowalska', N'666315666')
SET IDENTITY_INSERT [dbo].[Parent] OFF

-- Student
SET IDENTITY_INSERT [dbo].[Student] ON
INSERT INTO [dbo].[Student] ([Id], [Class_Id], [Parent_Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (5, 1, 3, N'ae93f5b4-8a4a-4490-8c3c-9009c6eba0cd', N'Gianluigi', N'Frytetti', N'565667878')
INSERT INTO [dbo].[Student] ([Id], [Class_Id], [Parent_Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (6, 1, 3, N'70562d0d-8a92-43dd-8b61-0992efc23cfc', N'Nicola', N'Mancini', N'431323664')
INSERT INTO [dbo].[Student] ([Id], [Class_Id], [Parent_Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (7, 1, 5, N'3e78eff4-85ec-426b-9078-93ca2f38ab60', N'Mariusz', N'Szatan', N'777667776')
SET IDENTITY_INSERT [dbo].[Student] OFF

-- Grade
SET IDENTITY_INSERT [dbo].[Grade] ON
INSERT INTO [dbo].[Grade] ([Id], [Student_Id], [Subject_Id], [Value], [IsFinal], [AddedDate]) VALUES (2, 5, 2, N'6', 0, N'2016-09-02')
INSERT INTO [dbo].[Grade] ([Id], [Student_Id], [Subject_Id], [Value], [IsFinal], [AddedDate]) VALUES (3, 6, 2, N'6', 0, N'2016-09-05')
INSERT INTO [dbo].[Grade] ([Id], [Student_Id], [Subject_Id], [Value], [IsFinal], [AddedDate]) VALUES (4, 7, 2, N'4.5', 0, N'2016-09-06')
SET IDENTITY_INSERT [dbo].[Grade] OFF

-- Class_Subject_Teacher
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 1, 1)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 2, 2)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 4, 1)