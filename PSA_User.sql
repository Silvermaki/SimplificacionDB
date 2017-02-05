USE [Simplificacion]
GO
INSERT INTO [dbo].[PSA_User]
           ([login]
           ,[password]
           ,[email]
           ,[scope]
           ,[creation_date]
           ,[deletion_date]
           ,[active]
           ,[hint])
     VALUES
           ('root'
           ,'782e03677c1441a7cc0ec336a2e42e10e0d977c4'
           ,'mrnrades@gmail.com'
           ,0
           ,GETDATE()
           ,GETDATE()
           ,1
           ,'uOguHU1y!9KZi!E`9A\n8_hd5')
GO

