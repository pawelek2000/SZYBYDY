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
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (9, N'Historia 3', N'Wspolczesnosc')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (11, N'Jezyk Angielski 1', N'UNIT 1: HUMAN VOCABULARY')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (12, N'Jezyk Angielski 2', N'UNIT 2: BUSINESS VOCABULARY')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (13, N'Jezyk Angielski 3', N'UNIT 3: SPEAKING PRACTICE')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (15, N'Jezyk Polski 1', N'Usprawnianie czynnosci fonacyjnych, artykulacyjnych i prozodycznych uczniow.')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (17, N'Jezyk Polski 2', N'Rozwijanie umiejetnosci rzetelnego korzystania ze zrodel wiedzy, w tym stosowania cudzyslowu, przypisow i odsylaczy oraz szacunku dla cudzej wlasnosci intelektualnej.')
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (18, N'Jezyk Polski 3', N'Rozwijanie wiedzy o elementach skladowych wypowiedzi ustnych i pisemnych oraz ich funkcjach w strukturze tekstow i w komunikowaniu sie.')
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
INSERT INTO [dbo].[Subject] ([Id], [Name], [LearningContent]) VALUES (31, N'Biologia 2', N'Poslugiwanie sie informacjami pochodzacymi z analizy materialow zrodlowych')
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
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (23, N'c04699c4-8524-4281-8f1a-a771488f474b', N'Jan', N'Wojcik', N'234234555')
INSERT INTO [dbo].[Teacher] ([Id], [Account_Id], [Name], [Surname], [PhoneNumber]) VALUES (24, N'150be443-7089-454f-8b2c-e455b67db1ef', N'Herbert', N'Chilimoniuk', N'523478912')
SET IDENTITY_INSERT [dbo].[Teacher] OFF

-- Parent
SET IDENTITY_INSERT [dbo].[Parent] ON
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
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (9, N'2901dc45-83ae-4ef2-a9ce-bad27fcd88b4', 1, 5, N'Sonia', N'Sonntag', N'267854132')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (10, N'ed7ce554-1b38-43f7-8353-78701b7bb1bf', 1, 8, N'Jowita', N'Piatnica', N'138957385')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (11, N'32b364da-299b-4816-8af7-213ee92a57d2', 2, 9, N'Adelajda', N'Wtornik', N'234236712')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (12, N'f1643ee0-a210-40ae-ade6-d27e7093573b', 1, 10, N'Andrzej', N'Zesztynski', N'897346789')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (13, N'cd7260db-9d6e-4e71-98cc-6188cbc30b83', 3, 11, N'Krzysztof', N'Piatek', N'246724982')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (14, N'a93d2ca9-e5da-4580-b0f3-af528fa4bd80', 1, 12, N'Dariusz', N'Swiatlo', N'634123722')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (15, N'd5f2708f-3e8a-434e-b14f-7d5f700a46d0', 1, 14, N'Wilhelm', N'Bialy', N'163721341')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (16, N'f0178b25-3ded-4022-94d7-cd6bde9580e8', 2, 16, N'Izzak', N'Freitag', N'999666333')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (17, N'7cd64aa8-4cf8-4fb0-b6eb-ce30c24364f8', 3, 17, N'Pawel', N'Odbyciuk', N'193856722')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (18, N'4011e2ca-5870-4e8c-8232-fb404c3a2349', 2, 19, N'Rafal', N'Odbyciuk', N'909911121')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (19, N'f8999a87-5aa3-4041-b4aa-2356d9d1bdcb', 2, 20, N'Jerzy', N'Sambooch', N'152867218')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (20, N'10ec2fda-b9d4-4dee-a91c-3b7260c6878b', 2, 21, N'Wanda', N'Niedziela', N'137523689')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (21, N'13924fe1-835c-4807-8891-2beb44d94419', 3, 23, N'Dawid', N'Odbyciuk', N'929292914')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (22, N'3c7c5238-f3ab-4edc-ae9d-129626af97d4', 1, 5, N'Joanna', N'Odbyciuk', N'124896125')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (23, N'1e467772-8b23-456b-851e-519531d3e048', 1, 24, N'Ryszard', N'Piada', N'123589765')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (24, N'ad4e9961-bce6-45eb-a99d-bab84ebbbf3d', 3, 16, N'Bartosz', N'Newton', N'123895673')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (25, N'525be7df-1a04-4e91-9cb6-648d3c033d96', 1, 5, N'Alina', N'Monbierd', N'657138157')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (26, N'8d847dae-de0b-42b0-bc02-3ad0eef6ff44', 2, 20, N'Konrad', N'Odbyciuk', N'231634271')
INSERT INTO [dbo].[Student] ([Id], [Account_Id], [Class_Id], [Parent_Id], [Name], [Surname], [PhoneNumber]) VALUES (27, N'6e3ee539-62e3-4030-aecb-e3d745bd8a66', 3, 9, N'Bartosz', N'Odbyciuk', N'128956327')
SET IDENTITY_INSERT [dbo].[Student] OFF

-- Grade
-- TODO


-- Class_Subject_Teacher
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 1, 23)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 2, 8)
INSERT INTO [dbo].[ClassSubjectTeacher] ([Class_Id], [Subject_Id], [Teacher_Id]) VALUES (1, 4, 23)
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

-- Announcements 
SET IDENTITY_INSERT [dbo].[Announcement] ON
INSERT INTO [dbo].[Announcement] ([Id], [Title], [Content], [AddedDate]) VALUES (1, N'Obchody 30-Lecia', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In aliquam non orci sed fringilla. Maecenas malesuada sem ut tellus euismod accumsan. Praesent pharetra elementum justo et mattis. Proin fringilla consectetur est, eget feugiat felis porta et. Proin posuere rutrum dui, quis porta neque egestas et. Nunc sem lacus, tincidunt in sagittis ac, eleifend vulputate odio. Vivamus rhoncus metus ut massa lobortis, non ultricies nulla sagittis. Nulla nibh dui, accumsan id velit quis, venenatis facilisis felis.', N'2022-01-13')
INSERT INTO [dbo].[Announcement] ([Id], [Title], [Content], [AddedDate]) VALUES (2, N'Wizyta Andrzeja Dudy', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In aliquam non orci sed fringilla. Maecenas malesuada sem ut tellus euismod accumsan. Praesent pharetra elementum justo et mattis. Proin fringilla consectetur est, eget feugiat felis porta et. Proin posuere rutrum dui, quis porta neque egestas et. Nunc sem lacus, tincidunt in sagittis ac, eleifend vulputate odio. Vivamus rhoncus metus ut massa lobortis, non ultricies nulla sagittis. Nulla nibh dui, accumsan id velit quis, venenatis facilisis felis.', N'2022-01-13')
INSERT INTO [dbo].[Announcement] ([Id], [Title], [Content], [AddedDate]) VALUES (3, N'Wytyczne do Nauki', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In aliquam non orci sed fringilla. Maecenas malesuada sem ut tellus euismod accumsan. Praesent pharetra elementum justo et mattis. Proin fringilla consectetur est, eget feugiat felis porta et. Proin posuere rutrum dui, quis porta neque egestas et. Nunc sem lacus, tincidunt in sagittis ac, eleifend vulputate odio. Vivamus rhoncus metus ut massa lobortis, non ultricies nulla sagittis. Nulla nibh dui, accumsan id velit quis, venenatis facilisis felis.', N'2022-01-13')
INSERT INTO [dbo].[Announcement] ([Id], [Title], [Content], [AddedDate]) VALUES (4, N'Dodatkowe Dni Wolne', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In aliquam non orci sed fringilla. Maecenas malesuada sem ut tellus euismod accumsan. Praesent pharetra elementum justo et mattis. Proin fringilla consectetur est, eget feugiat felis porta et. Proin posuere rutrum dui, quis porta neque egestas et. Nunc sem lacus, tincidunt in sagittis ac, eleifend vulputate odio. Vivamus rhoncus metus ut massa lobortis, non ultricies nulla sagittis. Nulla nibh dui, accumsan id velit quis, venenatis facilisis felis.', N'2022-01-13')
INSERT INTO [dbo].[Announcement] ([Id], [Title], [Content], [AddedDate]) VALUES (5, N'Wyróżnienie Nauczycieli', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In aliquam non orci sed fringilla. Maecenas malesuada sem ut tellus euismod accumsan. Praesent pharetra elementum justo et mattis. Proin fringilla consectetur est, eget feugiat felis porta et. Proin posuere rutrum dui, quis porta neque egestas et. Nunc sem lacus, tincidunt in sagittis ac, eleifend vulputate odio. Vivamus rhoncus metus ut massa lobortis, non ultricies nulla sagittis. Nulla nibh dui, accumsan id velit quis, venenatis facilisis felis.', N'2022-01-13')
SET IDENTITY_INSERT [dbo].[Announcement] OFF