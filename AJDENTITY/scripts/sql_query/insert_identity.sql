---------------------------- INSERT VALUES ----------------------------
USE SBD_DB;
GO

-- ???
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'25d19b9a-37f4-45b3-bf9b-1bf3e1d5ce99', N'Admin')
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'687d20e9-b10f-4ad6-8b77-7fea47986f4f', N'Nauczyciel')
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9117261e-9d3f-4f90-9ca4-18126a51cee4', N'Rodzic')
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'4c2cbdf3-6ae1-47c8-8686-b3fc29e7594f', N'Uczen')

-- ???
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'40ed422e-6705-4991-897a-805cf055e02b', N'admin@pb', 0, N'AGWQiGVXvEmRtfzeN3eANVYaX/aE/KwZq59QpUXt+wNRhGlbMiW1h3aJB0fHQDwdeg==', N'7d0440d2-7c27-4b17-b614-ad621744df14', NULL, 0, 0, NULL, 1, 0, N'admin@pb')

INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd2d693e8-c354-4b61-a7a0-bbf5d9ba4d84', N'mariusz.pudzianowski@bartosz027.ru', 0, N'AH44fJZPeOBFVbxLDHvSREsGbz0n9n7G6VzzcSK5b4U1EavqIJS5d3++O5twTwJrKg==', N'f17f357c-54bf-4d1f-aa05-2cbfb715a291', NULL, 0, 0, NULL, 1, 0, N'mariusz.pudzianowski@bartosz027.ru')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ae93f5b4-8a4a-4490-8c3c-9009c6eba0cd', N'frytka@biedronka.pt', 0, N'APB6pgtDVYIHtDIHEbbwiNp07zPyylsudCdNXHcwRSrW8EquaYcLs1l5Jr7VUziXzw==', N'61b40745-e168-4f2b-8527-98ce54d7da02', NULL, 0, 0, NULL, 1, 0, N'frytka@biedronka.pt')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3446b57c-ff35-436a-bf7b-593345ecfb80', N'ibrahim.sadajew@turtur.de', 0, N'AFlvC9Da2NDEAh3Om/GpyR3WOSE2CeKmxRKyfLIxZ7MxwMpCZRa8bES6VYuWrvgtoA==', N'ed842dc2-6544-48ff-9429-f8c88ccf3830', NULL, 0, 0, NULL, 1, 0, N'ibrahim.sadajew@turtur.de')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'70562d0d-8a92-43dd-8b61-0992efc23cfc', N'nicola.mancini@pizza.it', 0, N'AFmeX3yNnqsexvukihqCT5i9m5pKbvae8Zbrtrwc4DtRzmnO3OE+l47PIxe88//EJw==', N'1aad0be6-a77a-436c-bb80-8aee3b1347e0', NULL, 0, 0, NULL, 1, 0, N'nicola.mancini@pizza.it')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6dc9229f-095f-4dc6-b961-cf054d74be18', N'bozena.kowalska@radiomaryja.pl', 0, N'ALhdYHmUadbAE6jvdGt4ESX2T69F3MEHOK8EHIOGcgV0ed11sNuNiaS2zB/PSE3LNw==', N'6f55ce74-aab7-49dd-bbf3-8d810b5350b3', NULL, 0, 0, NULL, 1, 0, N'bozena.kowalska@radiomaryja.pl')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3e78eff4-85ec-426b-9078-93ca2f38ab60', N'mariusz.szatan@gmail.com', 0, N'ACQKgJmEWrhZC8BOPfZ8wIcG/kOWksOwyEVIPy+OYNr9LfnR04nkEIq7QtSW/z/wfA==', N'c6031c1e-2739-46eb-a5b9-99993154d138', NULL, 0, 0, NULL, 1, 0, N'mariusz.szatan@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'08abb7c0-2581-4fb9-89c5-b01b8cb4f05b', N'mati.spoko.ziom1969@wp.pl', 0, N'AIkThUxYVq5k/a3v3mSirjbE3fTSAVhhA2ah3Va9S/iEHytXfrhncBx0zIS6KQPwKg==', N'3c6428bc-72c3-4946-bc42-e88c2215bda1', NULL, 0, 0, NULL, 1, 0, N'mati.spoko.ziom1969@wp.pl')

-- ???
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'40ed422e-6705-4991-897a-805cf055e02b', N'25d19b9a-37f4-45b3-bf9b-1bf3e1d5ce99')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3e78eff4-85ec-426b-9078-93ca2f38ab60', N'4c2cbdf3-6ae1-47c8-8686-b3fc29e7594f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'70562d0d-8a92-43dd-8b61-0992efc23cfc', N'4c2cbdf3-6ae1-47c8-8686-b3fc29e7594f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae93f5b4-8a4a-4490-8c3c-9009c6eba0cd', N'4c2cbdf3-6ae1-47c8-8686-b3fc29e7594f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08abb7c0-2581-4fb9-89c5-b01b8cb4f05b', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3446b57c-ff35-436a-bf7b-593345ecfb80', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6dc9229f-095f-4dc6-b961-cf054d74be18', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd2d693e8-c354-4b61-a7a0-bbf5d9ba4d84', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')