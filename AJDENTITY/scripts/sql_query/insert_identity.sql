---------------------------- INSERT VALUES ----------------------------
USE SBD_DB;
GO

-- ???
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'25d19b9a-37f4-45b3-bf9b-1bf3e1d5ce99', N'Admin')
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'687d20e9-b10f-4ad6-8b77-7fea47986f4f', N'Nauczyciel')
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9117261e-9d3f-4f90-9ca4-18126a51cee4', N'Rodzic')
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'4c2cbdf3-6ae1-47c8-8686-b3fc29e7594f', N'Uczen')
GO

-- ???
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'40ed422e-6705-4991-897a-805cf055e02b', N'admin@pb', 0, N'AGWQiGVXvEmRtfzeN3eANVYaX/aE/KwZq59QpUXt+wNRhGlbMiW1h3aJB0fHQDwdeg==', N'7d0440d2-7c27-4b17-b614-ad621744df14', NULL, 0, 0, NULL, 1, 0, N'admin@pb')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'fc28f1a0-dd1e-4644-bb77-7bd9e67e45ef', N'aszklanka@gmail.com', 0, N'ADdeUoj9IQwRw3ZJl4qfVQ3V8kGPI76Co2Ad6sR2bBwgJVrAYx1DnJQZMDChcdTsTg==', N'7f28499f-e42b-4abf-a54a-984f33631098', NULL, 0, 0, NULL, 1, 0, N'aszklanka@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'69f1673b-aa86-4b93-bc9f-82365f12735c', N'akupkowski@gmail.com', 0, N'AOMP33XatXhFRnSLeF6UfQh745ouXsRh5K9py7/FTI8t3JHs6dcB3PhPgXexhhuAow==', N'1cc5b77b-3171-4c22-b653-18ab85272ccb', NULL, 0, 0, NULL, 1, 0, N'akupkowski@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd9ad1c13-806c-4ddd-b5b7-1f3c2b6694fc', N'b.buslowska@gmail.com', 0, N'ALfPzLvSShHTkkf3PwywKEf8tXVResHbect5ztdPka1XnjNb1L8LrdKwZy/sXChajQ==', N'2bef20d7-e444-42bc-9aa2-8f89495be547', NULL, 0, 0, NULL, 1, 0, N'b.buslowska@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'dc7f1fb0-9236-4341-ba89-f0f8202ed5bb', N'b.nowicki@gmail.com', 0, N'ANw0BUqxDYvsBTWkCyPH93DDBCWOQfKEKon7sOzPhmWqeZmRSui5cEslbduqoex/+w==', N'438d7610-0e62-4d96-948e-7c0e92d1faca', NULL, 0, 0, NULL, 1, 0, N'b.nowicki@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6dc9229f-095f-4dc6-b961-cf054d74be18', N'bozena.kowalska@radiomaryja.pl', 0, N'ALhdYHmUadbAE6jvdGt4ESX2T69F3MEHOK8EHIOGcgV0ed11sNuNiaS2zB/PSE3LNw==', N'6f55ce74-aab7-49dd-bbf3-8d810b5350b3', NULL, 0, 0, NULL, 1, 0, N'bozena.kowalska@radiomaryja.pl')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'82e28a34-e675-4934-ae73-041a0a8b300e', N'dszklanka@gmail.com', 0, N'ACiOj8AAmn1nwrRR6ujWWZDMq5BdEH2EaUT7n+MYUh3zOaX8Q9jy9UirwCifFSEBGA==', N'f16335e8-25a5-4698-b74e-5e9a48514a1b', NULL, 0, 0, NULL, 1, 0, N'dszklanka@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5eacf2b5-f6f4-45d5-af57-ab26f0aea386', N'e.mann@gmail.com', 0, N'AO3N5bw52Wnb8K949hfnAEQ2K1V6On+71+IY9ZWSm9wptcDlZwyDof2rAtAyql2Xmw==', N'09194306-efe8-45a1-8a99-bcaded133cdf', NULL, 0, 0, NULL, 1, 0, N'e.mann@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c92c1797-4abf-4e34-a7a0-800e1e4049c7', N'e.mordan@gmail.com', 0, N'AEmg12l2izSQQJDWiR0nYyDJWaOt6GZIScPKmxXPQOTmS+cuJKT/M9Y0BI+pF1G+vQ==', N'4476aa5c-d86f-4f00-a7fc-ce057c02927c', NULL, 0, 0, NULL, 1, 0, N'e.mordan@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ae93f5b4-8a4a-4490-8c3c-9009c6eba0cd', N'frytka@biedronka.pt', 0, N'APB6pgtDVYIHtDIHEbbwiNp07zPyylsudCdNXHcwRSrW8EquaYcLs1l5Jr7VUziXzw==', N'61b40745-e168-4f2b-8527-98ce54d7da02', NULL, 0, 0, NULL, 1, 0, N'frytka@biedronka.pt')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'144e8787-9969-4b94-9c2b-55f2ae32ce7e', N'h.chilim@gmail.com', 0, N'APrrNqJQn6EEM87zr6a2neHeiQJSylpXXYCEaWIpWMAxxsUunyhCqn4ZCTMb4hd2iQ==', N'88974abd-b4a5-4892-acd6-7830ff4c050d', NULL, 0, 0, NULL, 1, 0, N'h.chilim@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'150be443-7089-454f-8b2c-e455b67db1ef', N'h.chilim@o2.pl', 0, N'AKXMIThbtQ694CxxgcyOVjOQN3IA/1Er5Av0sniJylZVstfiA2tfk7tmQ/5l4//Kkw==', N'84f6800d-c21a-4a1c-931f-101fdbff1cac', NULL, 0, 0, NULL, 1, 0, N'h.chilim@o2.pl')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'fca108c5-8b48-407e-9ebf-364b37ac76b5', N'i.zomb@gmail.com', 0, N'AG/4FO01Ze+9PkcnTQNV7Rhf9+1SmI/Rwnt/msHuUI0h6vCwCQGAC41Q1vBeuINJpw==', N'a2997fba-dfa0-4f67-a97a-4546feff36c8', NULL, 0, 0, NULL, 1, 0, N'i.zomb@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3446b57c-ff35-436a-bf7b-593345ecfb80', N'ibrahim.sadajew@turtur.de', 0, N'AFlvC9Da2NDEAh3Om/GpyR3WOSE2CeKmxRKyfLIxZ7MxwMpCZRa8bES6VYuWrvgtoA==', N'ed842dc2-6544-48ff-9429-f8c88ccf3830', NULL, 0, 0, NULL, 1, 0, N'ibrahim.sadajew@turtur.de')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ecfdf1f5-8e18-4b32-a912-0b0ca2da010d', N'j.wasyluk@gmail.com', 0, N'AGTh4uHZu8fnTFvqizANw1kf1MQ5x2YtFCTkDq9LOzcRGydgzvVZCNSQnKkJ4Ndzeg==', N'a111863d-f930-4b7f-925b-09827945cbd1', NULL, 0, 0, NULL, 1, 0, N'j.wasyluk@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c04699c4-8524-4281-8f1a-a771488f474b', N'j.wojcik@o2.pl', 0, N'AFTlVW+vI/9wRatJT64UPfvoPO7LNwcTygWSX1JNel4h+YWbgI4tEqPUehU8Geidaw==', N'5629920b-a5d2-46cf-b0a3-ae8cc752f227', NULL, 0, 0, NULL, 1, 0, N'j.wojcik@o2.pl')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3855863a-ece4-4b22-aefd-d8c145cbd467', N'j.wojciuk@gmail.com', 0, N'AFq3DUG5VRf2nS3cB+XZaa8aHy5xS/gkfr8jesMNNY3meLD4TbE1nM6DLBudhmx44g==', N'8f29dd75-5e73-4d12-80a2-2406aeaf2ef1', NULL, 0, 0, NULL, 1, 0, N'j.wojciuk@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cc1cbf88-f346-45ad-9c4a-34b4b1704c55', N'k.pawlenko@gmail.com', 0, N'APmuDVqduOlYKoUUjVKO8hVnENE6l7dbT3jd6f4sUeNoYZNGMYXrfS6PGQJn/2PZYQ==', N'04355561-abc8-4558-8d26-c868a106e507', NULL, 0, 0, NULL, 1, 0, N'k.pawlenko@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5fc6b13d-ffc5-43a3-ba97-2913d7fd94bb', N'k.wakulinska@gmail.com', 0, N'AF9O4WjSrAKdB165iIqxO8aKYaFaRsr+XuiDWMIcV3P6BxEFv7CcM5ij9C30sNxM/w==', N'd6634b3c-3b47-46e1-8a4a-d842dd60baf3', NULL, 0, 0, NULL, 1, 0, N'k.wakulinska@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c51c01b4-ea4c-4e81-b2c4-8a572e978e70', N'm.anchim@gmail.com', 0, N'APY6ccNozWzlNST5TcNfmhz0GR0Npsd8uBRrlMHHZRi+SSgCP5CCDqtN7L/JtzzQdg==', N'888fcee1-cad4-4094-9026-8455a4f66d58', NULL, 0, 0, NULL, 1, 0, N'm.anchim@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ec88329b-f4d9-4531-932f-ad4837297bad', N'm.koziol@gmail.com', 0, N'AOwhLtkeH7lxJ1aaEMp5ARva0bW22r063ppH80x7ac9kJdqQwAEtP7u6/crhIR0k9w==', N'e3a6a9ef-df37-4fb3-8a4e-13eb84f6c35c', NULL, 0, 0, NULL, 1, 0, N'm.koziol@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'55eb8a54-3252-4ee8-b801-3cbf018c5518', N'm.leszczynska@gmail.com', 0, N'ALLylKANceUUaqYyKvp+2m/cHtwzhWrBfStuURsv21fdZVsPwgfelrHKq5T134bmLA==', N'4cb6691c-79ee-4de1-854e-35adbf87ffaa', NULL, 0, 0, NULL, 1, 0, N'm.leszczynska@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b30b9382-9424-4de0-b865-d689173d14ec', N'm.lipczynska@o2.pl', 0, N'AK9y8mXVKmMAB4UuL71jajU7m6FYRptIpsxiglq4+gNNWEOPEh/xqqVjTyToQoZMXQ==', N'bb6fbe13-8ff5-45b4-b4cc-074a85d9a545', NULL, 0, 0, NULL, 1, 0, N'm.lipczynska@o2.pl')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'298e0925-293e-4619-bab4-1dfeee8d17bd', N'm.wierzba@gmail.com', 0, N'APJCMaPXPDFMna4OBQSOqAyuveTcZxhnmG7w4cgN6/mV3ZpozWcXlYxGN0GDTTr+nQ==', N'ab58ef5e-dcc3-490c-b80d-63c3a4e1d0f5', NULL, 0, 0, NULL, 1, 0, N'm.wierzba@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'41044a07-83df-4bba-a094-e455d155f710', N'm.wtornik@gmail.com', 0, N'AGm+J18rgZezpionDYBkfWGQQwDx9oi+oUUjbjUXLTU4CpvTOeQLD3i/xgwyYeFQPA==', N'5310d744-7202-46fc-9c90-d178403e60e1', NULL, 0, 0, NULL, 1, 0, N'm.wtornik@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd2d693e8-c354-4b61-a7a0-bbf5d9ba4d84', N'mariusz.pudzianowski@bartosz027.ru', 0, N'AH44fJZPeOBFVbxLDHvSREsGbz0n9n7G6VzzcSK5b4U1EavqIJS5d3++O5twTwJrKg==', N'f17f357c-54bf-4d1f-aa05-2cbfb715a291', NULL, 0, 0, NULL, 1, 0, N'mariusz.pudzianowski@bartosz027.ru')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3e78eff4-85ec-426b-9078-93ca2f38ab60', N'mariusz.szatan@gmail.com', 0, N'ACQKgJmEWrhZC8BOPfZ8wIcG/kOWksOwyEVIPy+OYNr9LfnR04nkEIq7QtSW/z/wfA==', N'c6031c1e-2739-46eb-a5b9-99993154d138', NULL, 0, 0, NULL, 1, 0, N'mariusz.szatan@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'08abb7c0-2581-4fb9-89c5-b01b8cb4f05b', N'mati.spoko.ziom1969@wp.pl', 0, N'AIkThUxYVq5k/a3v3mSirjbE3fTSAVhhA2ah3Va9S/iEHytXfrhncBx0zIS6KQPwKg==', N'3c6428bc-72c3-4946-bc42-e88c2215bda1', NULL, 0, 0, NULL, 1, 0, N'mati.spoko.ziom1969@wp.pl')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'70562d0d-8a92-43dd-8b61-0992efc23cfc', N'nicola.mancini@pizza.it', 0, N'AFmeX3yNnqsexvukihqCT5i9m5pKbvae8Zbrtrwc4DtRzmnO3OE+l47PIxe88//EJw==', N'1aad0be6-a77a-436c-bb80-8aee3b1347e0', NULL, 0, 0, NULL, 1, 0, N'nicola.mancini@pizza.it')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'850ca7f8-fba3-458e-babf-90027b1083eb', N's.debowski@gmail.com', 0, N'AGrIoPPdo15676x26DRUI5PZip1/f5gqWc59Gh+Izw1nSa62nQO2uMjkKnoD6sTFmQ==', N'088e72ab-bb1b-4b4c-8700-ef6ece835dd8', NULL, 0, 0, NULL, 1, 0, N's.debowski@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'84a9bbc5-a41d-42b5-ada8-82fcbf5d392d', N't.mittwoch@gmail.com', 0, N'AMIX9JBhAfO/6jk1zURlD+8P6wbo12nJtaolyPWqNmty2GLtHam7nuubvOnrmqZetw==', N'85735c55-435d-4b68-9ac9-a7a96c885951', NULL, 0, 0, NULL, 1, 0, N't.mittwoch@gmail.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4266c754-09da-40ed-9321-fb171e7a88de', N'u.geniusz@gmail.com', 0, N'AN0vFRrBFVhE1f2aJW0Ruzzl0oiViXTvMZdlDU/vD4jvWgSb6DbsK8IE5xVULjUTEA==', N'8994920a-b243-41fd-8e64-32414bb71408', NULL, 0, 0, NULL, 1, 0, N'u.geniusz@gmail.com')

-- ???
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'40ed422e-6705-4991-897a-805cf055e02b', N'25d19b9a-37f4-45b3-bf9b-1bf3e1d5ce99')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fc28f1a0-dd1e-4644-bb77-7bd9e67e45ef', N'25d19b9a-37f4-45b3-bf9b-1bf3e1d5ce99')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3e78eff4-85ec-426b-9078-93ca2f38ab60', N'4c2cbdf3-6ae1-47c8-8686-b3fc29e7594f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'70562d0d-8a92-43dd-8b61-0992efc23cfc', N'4c2cbdf3-6ae1-47c8-8686-b3fc29e7594f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae93f5b4-8a4a-4490-8c3c-9009c6eba0cd', N'4c2cbdf3-6ae1-47c8-8686-b3fc29e7594f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08abb7c0-2581-4fb9-89c5-b01b8cb4f05b', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'144e8787-9969-4b94-9c2b-55f2ae32ce7e', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'150be443-7089-454f-8b2c-e455b67db1ef', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3446b57c-ff35-436a-bf7b-593345ecfb80', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'55eb8a54-3252-4ee8-b801-3cbf018c5518', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5fc6b13d-ffc5-43a3-ba97-2913d7fd94bb', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'850ca7f8-fba3-458e-babf-90027b1083eb', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b30b9382-9424-4de0-b865-d689173d14ec', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c04699c4-8524-4281-8f1a-a771488f474b', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c92c1797-4abf-4e34-a7a0-800e1e4049c7', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dc7f1fb0-9236-4341-ba89-f0f8202ed5bb', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ecfdf1f5-8e18-4b32-a912-0b0ca2da010d', N'687d20e9-b10f-4ad6-8b77-7fea47986f4f')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'298e0925-293e-4619-bab4-1dfeee8d17bd', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3855863a-ece4-4b22-aefd-d8c145cbd467', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'41044a07-83df-4bba-a094-e455d155f710', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4266c754-09da-40ed-9321-fb171e7a88de', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5eacf2b5-f6f4-45d5-af57-ab26f0aea386', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'69f1673b-aa86-4b93-bc9f-82365f12735c', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6dc9229f-095f-4dc6-b961-cf054d74be18', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'82e28a34-e675-4934-ae73-041a0a8b300e', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84a9bbc5-a41d-42b5-ada8-82fcbf5d392d', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c51c01b4-ea4c-4e81-b2c4-8a572e978e70', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cc1cbf88-f346-45ad-9c4a-34b4b1704c55', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd2d693e8-c354-4b61-a7a0-bbf5d9ba4d84', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd9ad1c13-806c-4ddd-b5b7-1f3c2b6694fc', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ec88329b-f4d9-4531-932f-ad4837297bad', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fca108c5-8b48-407e-9ebf-364b37ac76b5', N'9117261e-9d3f-4f90-9ca4-18126a51cee4')