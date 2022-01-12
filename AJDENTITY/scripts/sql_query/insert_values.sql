---------------------------- INSERT VALUES ----------------------------
USE SBD_DB;

-- Class

SET IDENTITY_INSERT [dbo].[Class] ON
INSERT INTO [dbo].[Class] ([Id], [ClassName], [StartDate]) VALUES (1, N'IA', N'2016-09-01')
INSERT INTO [dbo].[Class] ([Id], [ClassName], [StartDate]) VALUES (2, N'IIA', N'2015-09-01')
INSERT INTO [dbo].[Class] ([Id], [ClassName], [StartDate]) VALUES (3, N'IIIA', N'2014-09-01')
SET IDENTITY_INSERT [dbo].[Class] OFF

-- Subject

SET IDENTITY_INSERT [dbo].[Subject] ON
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (1, N'Religia', N'Nauka o Bogu')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (2, N'Historia 1 ', N'Sredniowiecze')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (4, N'Historia 2 ', N'Nowozytnosc')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (9, N'Historia 3', N'Wspólczesnosc')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (11, N'Jezyk Angielski 1', N'UNIT 1: HUMAN VOCABULARY')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (12, N'Jezyk Angielski 2', N'UNIT 2: BUSINESS VOCABULARY')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (13, N'Jezyk Angielski 3', N'UNIT 3: SPEAKING PRACTICE')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (15, N'Jezyk Polski 1', N'Usprawnianie czynnosci fonacyjnych, artykulacyjnych i prozodycznych uczniów.')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (17, N'Jezyk Polski 2', N'Rozwijanie umiejetnosci rzetelnego korzystania ze zródel wiedzy, w tym stosowania cudzyslowu, przypisów i odsylaczy oraz szacunku dla cudzej wlasnosci intelektualnej.')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (18, N'Jezyk Polski 3', N'Rozwijanie wiedzy o elementach skladowych wypowiedzi ustnych i pisemnych oraz ich funkcjach w strukturze tekstów i w komunikowaniu sie.')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (19, N'Geografia 1', N'Polska')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (20, N'Geografia 2', N'Europa')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (21, N'Geografia 3 ', N'Swiat')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (22, N'Fizyka 1', N'Ruch i sily')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (24, N'Fizyka 2', N'Energia')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (25, N'Fizyka 3', N'Zjawiska Cieplne')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (27, N'Chemia 1', N'Substancje i ich wlasciwosci')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (28, N'Chemia 2', N'Wewnetrzna budowa materii')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (29, N'Chemia 3', N'Reakcje chemiczne')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (30, N'Biologia 1', N'Znajomosc uwarunkowan zdrowia czlowieka')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (31, N'Biologia 2', N'Poslugiwanie sie informacjami pochodzacymi z analizy materialów zródlowych')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (32, N'Biologia 3', N'Planowanie i przeprowadzanie obserwacji oraz doswiadczen; wnioskowanie w oparciu o ich wyniki')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (35, N'Matematyka 1', N'Obliczenia praktyczne')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (36, N'Matematyka 2', N'Obliczenia w geometrii')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (37, N'Matematyka 3', N'Bryly')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (38, N'WF', N'Cwiczenia kondycyjne oraz rozgrywki gier zespolowych.')
SET IDENTITY_INSERT [dbo].[Subject] OFF

-- Teacher

SET IDENTITY_INSERT [dbo].[Teacher] ON
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (1, N'c92c1797-4abf-4e34-a7a0-800e1e4049c7', N'Elzbieta ', N'Mordan', N'888989812')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (2, N'5fc6b13d-ffc5-43a3-ba97-2913d7fd94bb', N'Katarzyna', N'Wakulinska', N'213707369')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (8, N'55eb8a54-3252-4ee8-b801-3cbf018c5518', N'Malgorzata', N'Leszczynska', N'487291827')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (14, N'850ca7f8-fba3-458e-babf-90027b1083eb', N'Slawomir', N'Debowski', N'284739273')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (15, N'b30b9382-9424-4de0-b865-d689173d14ec', N'Marzanna', N'Lipczynska', N'398473842')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (19, N'ecfdf1f5-8e18-4b32-a912-0b0ca2da010d', N'Justyna', N'Wasyluk', N'234542354')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (20, N'144e8787-9969-4b94-9c2b-55f2ae32ce7e', N'Halina', N'Chlimoniuk', N'213423455')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (21, N'dc7f1fb0-9236-4341-ba89-f0f8202ed5bb', N'Bogdan', N'Nowicki', N'423543555')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (23, N'c04699c4-8524-4281-8f1a-a771488f474b', N'Jan', N'Wójcik', N'234234555')
SET IDENTITY_INSERT [dbo].[Teacher] OFF

-- Parent

SET IDENTITY_INSERT [dbo].[Parent] ON
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (3, N'd2d693e8-c354-4b61-a7a0-bbf5d9ba4d84', N'Mariusz', N'Pudzianowski', N'997123454')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (5, N'6dc9229f-095f-4dc6-b961-cf054d74be18', N'Bozena', N'Kowalska', N'666315666')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (8, N'3855863a-ece4-4b22-aefd-d8c145cbd467', N'Jan', N'Wojciuk', N'124323444')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (9, N'cc1cbf88-f346-45ad-9c4a-34b4b1704c55', N'Konrad', N'Pawlenko', N'124321342')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (10, N'c51c01b4-ea4c-4e81-b2c4-8a572e978e70', N'Mariusz', N'Anchim', N'123423423')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (11, N'69f1673b-aa86-4b93-bc9f-82365f12735c', N'Artemiusz', N'Kupkowski', N'213434654')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (12, N'4266c754-09da-40ed-9321-fb171e7a88de', N'Urszula', N'Geniusz', N'134642334')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (14, N'41044a07-83df-4bba-a094-e455d155f710', N'Marcin', N'Wtornik', N'245623455')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (16, N'84a9bbc5-a41d-42b5-ada8-82fcbf5d392d', N'Teodora', N'Mittwoch', N'245634654')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (17, N'd9ad1c13-806c-4ddd-b5b7-1f3c2b6694fc', N'Bozena', N'Busola', N'547923443')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (19, N'5eacf2b5-f6f4-45d5-af57-ab26f0aea386', N'Euzebia', N'Mann', N'423542323')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (20, N'82e28a34-e675-4934-ae73-041a0a8b300e', N'Daniel', N'Szklanka', N'234346543')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (21, N'fca108c5-8b48-407e-9ebf-364b37ac76b5', N'Irena', N'Zomb', N'867954324')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (23, N'ec88329b-f4d9-4531-932f-ad4837297bad', N'Marcelina', N'Koziol', N'234645754')
INSERT INTO [dbo].[Parent] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (24, N'298e0925-293e-4619-bab4-1dfeee8d17bd', N'Marcjanna', N'Wierzba', N'235364904')
SET IDENTITY_INSERT [dbo].[Parent] OFF

-- Student

SET IDENTITY_INSERT [dbo].[Student] ON
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (5, N'ae93f5b4-8a4a-4490-8c3c-9009c6eba0cd', 1, 3, N'Gianluigi', N'Frytetti', N'565667878')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (6, N'70562d0d-8a92-43dd-8b61-0992efc23cfc', 1, 3, N'Nicola', N'Mancini', N'431323664')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (7, N'4d4cb3ad-4f3e-4afb-9a3b-5c8b3edd7329', 1, 8, N'Pawel', N'Wojciuk', N'777667776')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (8, N'9d39ca7a-2a1a-4e74-aa48-7b6da4bd685b', 1, 9, N'Norbert', N'Pawlenko', N'475637485')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (9, N'203bc0a8-6c04-4a2f-b620-625109243137', 1, 24, N'Weronika', N'Wierzba', N'345763754')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (10, N'29116593-f14d-4f07-99bb-eb1becabc65d', 2, 23, N'Karolina', N'Koziol', N'354626738')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (17, N'9b9b4548-9708-4b3b-b0bb-cab1cf160c3a', 2, 21, N'Grzegorz', N'Zomb', N'839540493')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (18, N'67dc2397-4623-474c-9cbf-d7d71db868c7', 2, 20, N'Hubert', N'Szklanka', N'486205856')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (19, N'1b0159d1-1ab3-417a-83b8-27b59936ea2e', 2, 19, N'Herbert', N'Mann', N'498571932')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (20, N'f1b0298d-b8b9-47dd-8598-9441ef9d9c37', 2, 17, N'Andrzej', N'Busola', N'384756893')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (21, N'b861ec22-0e36-4ece-8132-4fcb64295c84', 3, 16, N'Pawel', N'Mittwoch', N'123532945')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (22, N'85af7436-4b8b-438f-bb7e-2020f1ec03f1', 3, 14, N'Bartosz', N'Wtornik', N'283756746')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (23, N'22a1dcee-06b6-44ce-a115-774b78b06534', 3, 12, N'Katarzyna', N'Geniusz', N'847583928')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (24, N'48c2eb4d-9c78-467c-9531-0692e341d49f', 3, 11, N'Dawid', N'Kupkowski', N'394847267')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (25, N'7800e58c-8cda-43eb-8368-37b109b2edbe', 3, 3, N'Adrian', N'Anchim', N'298376281')
SET IDENTITY_INSERT [dbo].[Student] OFF

-- Grade

SET IDENTITY_INSERT [dbo].[Grade] ON
INSERT INTO [dbo].[Grade] ([Id], [Student_Id], [Subject_Id], [Value], [IsFinal], [AddedDate]) VALUES (2, 5, 2, N'6', 0, N'2016-09-02')
INSERT INTO [dbo].[Grade] ([Id], [Student_Id], [Subject_Id], [Value], [IsFinal], [AddedDate]) VALUES (3, 6, 2, N'6', 0, N'2016-09-05')
INSERT INTO [dbo].[Grade] ([Id], [Student_Id], [Subject_Id], [Value], [IsFinal], [AddedDate]) VALUES (4, 7, 2, N'4.5', 0, N'2016-09-06')
SET IDENTITY_INSERT [dbo].[Grade] OFF


-- Class_Subject_Teacher

INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 1, 23)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 2, 8)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 11, 19)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 15, 15)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 19, 14)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 22, 2)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 27, 20)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 30, 20)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 35, 1)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 38, 21)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 1, 23)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 4, 8)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 12, 19)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 17, 15)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 20, 14)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 24, 2)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 28, 20)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 31, 20)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 36, 1)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (2, 38, 21)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 1, 23)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 9, 8)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 13, 19)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 18, 15)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 21, 14)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 25, 2)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 29, 20)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 32, 20)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 37, 1)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (3, 38, 21)
