USE [Simplificacion]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PSA_Documentation'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PSA_Documentation'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PSA_Documentation'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'hint'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'active'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'deletion_date'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'creation_date'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'scope'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'email'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'password'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'login'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'id_user'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Registry_Control', @level2type=N'COLUMN',@level2name=N'hash'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Registry_Control', @level2type=N'COLUMN',@level2name=N'id'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Registry_Control', @level2type=N'COLUMN',@level2name=N'tbl'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'sent_date'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'message'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'id_user'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'id_request'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'id_notification'

GO
/****** Object:  Trigger [TR_Mail_Users_Insert]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TRIGGER [dbo].[TR_Mail_Users_Insert]
GO
ALTER TABLE [dbo].[PSA_Request] DROP CONSTRAINT [FK_requests_users]
GO
ALTER TABLE [dbo].[PSA_Request] DROP CONSTRAINT [FK_PSA_Request_CTL_Section]
GO
ALTER TABLE [dbo].[PSA_Request] DROP CONSTRAINT [FK_PSA_Request_CTL_Process]
GO
ALTER TABLE [dbo].[PSA_Notification] DROP CONSTRAINT [FK_notifications_users]
GO
ALTER TABLE [dbo].[PSA_Notification] DROP CONSTRAINT [FK_notifications_requests]
GO
ALTER TABLE [dbo].[PSA_Field_Request_Association] DROP CONSTRAINT [FK_PSA_Field_Request_Association_PSA_Request]
GO
ALTER TABLE [dbo].[PSA_Field_Request_Association] DROP CONSTRAINT [FK_PSA_Field_Request_Association_CTL_Field]
GO
ALTER TABLE [dbo].[CTL_Task] DROP CONSTRAINT [FK_PSA_Task_PSA_User]
GO
ALTER TABLE [dbo].[CTL_Task] DROP CONSTRAINT [FK_PSA_Task_PSA_Section]
GO
ALTER TABLE [dbo].[CTL_Task] DROP CONSTRAINT [FK_PSA_Task_CTL_Owner]
GO
ALTER TABLE [dbo].[CTL_Section] DROP CONSTRAINT [FK_PSA_Section_PSA_Process]
GO
ALTER TABLE [dbo].[CTL_Form] DROP CONSTRAINT [FK_CTL_Form_PSA_Task]
GO
ALTER TABLE [dbo].[CTL_Field] DROP CONSTRAINT [FK_CTL_Fields_CTL_Types]
GO
ALTER TABLE [dbo].[CTL_Field] DROP CONSTRAINT [FK_CTL_Field_CTL_Form]
GO
/****** Object:  Index [UQ__PSA_User__AB6E6164DB039E32]    Script Date: 05/02/2017 03:27:12 a. m. ******/
ALTER TABLE [dbo].[PSA_User] DROP CONSTRAINT [UQ__PSA_User__AB6E6164DB039E32]
GO
/****** Object:  Index [UQ__PSA_User__7838F272A5B27109]    Script Date: 05/02/2017 03:27:12 a. m. ******/
ALTER TABLE [dbo].[PSA_User] DROP CONSTRAINT [UQ__PSA_User__7838F272A5B27109]
GO
/****** Object:  Index [UQ__PSA_User__7838F27228FCE4A0]    Script Date: 05/02/2017 03:27:12 a. m. ******/
ALTER TABLE [dbo].[PSA_User] DROP CONSTRAINT [UQ__PSA_User__7838F27228FCE4A0]
GO
/****** Object:  View [dbo].[PSA_Documentation]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP VIEW [dbo].[PSA_Documentation]
GO
/****** Object:  Table [dbo].[PSA_User]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[PSA_User]
GO
/****** Object:  Table [dbo].[PSA_Session]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[PSA_Session]
GO
/****** Object:  Table [dbo].[PSA_Request]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[PSA_Request]
GO
/****** Object:  Table [dbo].[PSA_Registry_Control]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[PSA_Registry_Control]
GO
/****** Object:  Table [dbo].[PSA_Notification]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[PSA_Notification]
GO
/****** Object:  Table [dbo].[PSA_Mails_To_Be_Sent]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[PSA_Mails_To_Be_Sent]
GO
/****** Object:  Table [dbo].[PSA_Field_Request_Association]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[PSA_Field_Request_Association]
GO
/****** Object:  Table [dbo].[PSA_Catalogue_Type]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[PSA_Catalogue_Type]
GO
/****** Object:  Table [dbo].[PSA_Catalogue]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[PSA_Catalogue]
GO
/****** Object:  Table [dbo].[CTL_Type]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Type]
GO
/****** Object:  Table [dbo].[CTL_Task]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Task]
GO
/****** Object:  Table [dbo].[CTL_Subject]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Subject]
GO
/****** Object:  Table [dbo].[CTL_Section]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Section]
GO
/****** Object:  Table [dbo].[CTL_Process]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Process]
GO
/****** Object:  Table [dbo].[CTL_Owner]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Owner]
GO
/****** Object:  Table [dbo].[CTL_Form]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Form]
GO
/****** Object:  Table [dbo].[CTL_Field]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Field]
GO
/****** Object:  Table [dbo].[CTL_Error]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Error]
GO
/****** Object:  Table [dbo].[CTL_Departamento_Municipios]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP TABLE [dbo].[CTL_Departamento_Municipios]
GO
/****** Object:  UserDefinedFunction [dbo].[GenerarPassword]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP FUNCTION [dbo].[GenerarPassword]
GO
/****** Object:  UserDefinedFunction [dbo].[EsRepetidoLogin]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP FUNCTION [dbo].[EsRepetidoLogin]
GO
/****** Object:  UserDefinedFunction [dbo].[EsRegular]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP FUNCTION [dbo].[EsRegular]
GO
/****** Object:  UserDefinedFunction [dbo].[EsFecha]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP FUNCTION [dbo].[EsFecha]
GO
/****** Object:  UserDefinedFunction [dbo].[EsEmailValid]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP FUNCTION [dbo].[EsEmailValid]
GO
/****** Object:  UserDefinedFunction [dbo].[EsAlphaNumerico]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP FUNCTION [dbo].[EsAlphaNumerico]
GO
/****** Object:  StoredProcedure [dbo].[CTL_Salt]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP PROCEDURE [dbo].[CTL_Salt]
GO
/****** Object:  StoredProcedure [dbo].[CTL_NewSession]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP PROCEDURE [dbo].[CTL_NewSession]
GO
/****** Object:  StoredProcedure [dbo].[CTL_HorasActivas]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP PROCEDURE [dbo].[CTL_HorasActivas]
GO
/****** Object:  StoredProcedure [dbo].[CTL_GetErrorInfo]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP PROCEDURE [dbo].[CTL_GetErrorInfo]
GO
/****** Object:  StoredProcedure [dbo].[CTL_CheckSeccion]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP PROCEDURE [dbo].[CTL_CheckSeccion]
GO
/****** Object:  StoredProcedure [dbo].[ADM_User]    Script Date: 05/02/2017 03:27:12 a. m. ******/
DROP PROCEDURE [dbo].[ADM_User]
GO
/****** Object:  StoredProcedure [dbo].[ADM_User]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Melvin Ricardo
-- Create date: 25-01-2017
-- Description:	Mantenimiento Catalogo PSA_User
-- =============================================
CREATE PROCEDURE [dbo].[ADM_User]
 
    @mmId_user [int] = NULL,
	@mmLogin [varchar](25) = NULL,
	@mmPassword [varchar](60) = NULL,
    @mmPassword2 [varchar](60) = NULL,
	@mmEmail [varchar](50) = NULL,
	@mmScope [tinyint] = NULL,
	@mmCreation_date [datetime] = NULL,
	@mmDeletion_date [datetime] = NULL,
	@mmActive [bit] = NULL,
	@mmAciertos nvarchar(2) = NULL,
	@mmAccion int = 0,
	@mmRecSt nvarchar(7) = NULL,
	@mmRecEd nvarchar(7) = NULL,
	@mmSOrder nvarchar(50) = 'User',
	@mmSDir nvarchar(4) = 'ASC',
	@mmSeccion nvarchar(40) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET NOEXEC OFF;
	SET FMTONLY OFF;

	DECLARE @mmFrom nvarchar(40)
	DECLARE @mmHint nvarchar(40);
	DECLARE @mmHint2 nvarchar(40);
	DECLARE @mmResult Int
	DECLARE @mmResultSet table(SelectedValue nvarchar(40))
	DECLARE @DeleteLogico Int

	DECLARE @mmValSeccion table(Login nvarchar(20), NivelSeguridad smallint,Subject nvarchar(50))
	DECLARE @chkLogin nvarchar(20)
	DECLARE @chkNivelSeguridad smallint
	DECLARE @chkSubject nvarchar(50)
	SET @mmResult = -1971
	SET @mmFrom = 'mrnrades@hotmail.es'
	IF (@mmSeccion IS NULL) AND (NOT @mmAccion = 7) AND (NOT @mmAccion = 12)  
		RETURN
    
  
    -- Se crea una tabla con login y nivel seguridad
   	INSERT INTO @mmValSeccion (Login, NivelSeguridad,Subject)
		EXEC [dbo].[CTL_CheckSeccion] @mmSeccion

    --Si las filas afectadas es mas de 0 y no es accion 7 retornar vacio
	IF (NOT @@ROWCOUNT > 0) AND (NOT @mmAccion = 7) AND (NOT @mmAccion = 12) 
		RETURN

   --Seleccionar login y nivel de seguridad de la tabla @mmValSeccion
   SELECT TOP 1 @chkLogin = Login, @chkNivelSeguridad = NivelSeguridad,@chkSubject = Subject
	FROM @mmValSeccion	

	--VERIFICAR DATOS 
  IF([dbo].[EsRegular](@mmId_user, 0) > 0
     AND [dbo].[EsAlphaNumerico](@mmLogin, 0) > 0
	 AND [dbo].[EsRegular](@mmPassword, 0) > 0
	 AND [dbo].[EsEmailValid](@mmEmail, 0) > 0
    )
	BEGIN 
	    BEGIN TRY 
		    IF  @mmAccion = 0 AND @chkNivelSeguridad IN (0,1)  AND (SELECT [dbo].[EsRepetidoLogin] (@mmLogin)) = 0 --INSERTAR
			BEGIN 
			  EXEC [dbo].[CTL_Salt] @Salt = @mmHint  OUTPUT
			  SET @mmPassword = [dbo].[GenerarPassword](@mmPassword, @mmHint)
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
				   (@mmLogin
				   ,@mmPassword
				   ,@mmEmail
				   ,@mmScope
				   ,GETDATE()
				   ,GETDATE()
				   ,1
				   ,@mmHint)

			   IF (@@ROWCOUNT > 0)
							SET @mmResult = @@IDENTITY
			END  
	 ELSE IF @mmAccion = 1 AND @chkNivelSeguridad IN (0,1) --UPDATE REGISTRO
	    BEGIN 
		   SELECT 'UPDATE REGISTRO'
		END 
	  ELSE IF @mmAccion = 2 AND @chkNivelSeguridad IN (0,1) --DELETE FISICO
	    BEGIN 
		   SELECT 'DELETE FISICO'
		END 
     ELSE IF @mmAccion = 3 AND @chkNivelSeguridad IN (0,1) --DELETE LOGICO
	    BEGIN 
		   SELECT 'DELETE LOGICO'
		END 
	  ELSE IF @mmAccion = 4 AND @chkNivelSeguridad IN (0,1) --SELECT 
	    BEGIN 
		   SELECT 'SELECT'
		END 
	  ELSE IF @mmAccion = 5 AND @chkNivelSeguridad IN (0,1) --SELECT RANGE
	    BEGIN 
		   SELECT 'SELECT RANGE'
		END 
	  ELSE IF @mmAccion = 6  --Update Registro
	    BEGIN 
		 
		    IF (SELECT [dbo].[GenerarPassword] (@mmPassword,(SELECT hint FROM PSA_User WHERE login = (SELECT login from @mmValSeccion)))) = (SELECT password FROM PSA_User WHERE login = (SELECT login from @mmValSeccion))
			BEGIN 

			  EXEC  [dbo].[CTL_Salt] @Salt = @mmHint OUTPUT
	
			  UPDATE PSA_User
					  SET hint = @mmHint,
					  password = (SELECT  dbo.GenerarPassword(@mmPassword2,@mmHint))
				 WHERE login = (SELECT login from @mmValSeccion)
				IF (@@ROWCOUNT > 0)
				  SET @mmResult = 0
			END 
		END 
	  ELSE IF @mmAccion = 7  --LOGIN
	    BEGIN 
		     SELECT  @mmId_user = EM.id_user
				FROM PSA_User AS EM
				INNER JOIN  PSA_Session SE ON EM.login = SE.login AND SE.Subject = (SELECT Subject from @mmValSeccion) --poner en una variable despues 
				WHERE 
				   EM.active = 1
				   AND SE.session = @mmSeccion

		    SELECT TOP 1 @mmHint = [dbo].[PSA_User].[hint]
				  FROM [dbo].[PSA_User]
					 WHERE  [dbo].[PSA_User].[active] = 1 
					   AND  [dbo].[PSA_User].login = @mmLogin
		 IF (@@ROWCOUNT > 0)
				BEGIN
				SET @mmPassword = [dbo].[GenerarPassword](@mmPassword, @mmHint)
								
				SELECT @mmLogin = [dbo].[PSA_User].[login],@mmScope = [dbo].[PSA_User].[scope] FROM [dbo].[PSA_User]
				WHERE 
				  [dbo].[PSA_User].[active] = 1 AND [dbo].[PSA_User].[password] =  @mmPassword
					IF (@@ROWCOUNT > 0) 
					BEGIN
					  INSERT INTO @mmResultSet (SelectedValue) 
							EXEC [dbo].[CTL_NewSession] @mmLogin, @mmScope,'Sesion'				
						SELECT * FROM @mmResultSet
						RETURN
					END
			  END	
		END 
		ELSE IF @mmAccion = 11 AND @chkNivelSeguridad IN (0,1,2,3,4,5,6) --ver perfil
	    BEGIN 
		    SELECT US.login,US.email,US.scope
			FROM  PSA_User AS US
			RETURN
		END 
		ELSE IF @mmAccion = 12
		  BEGIN
		    SELECT @mmId_user = id_user FROM PSA_User WHERE PSA_User.login = @mmLogin AND PSA_User.email = @mmEmail AND PSA_User.active = 2 
			IF (@@ROWCOUNT > 0)
		       BEGIN 
			     DECLARE  @mmValHint table(hint nvarchar(40))
			     INSERT INTO @mmValHint (hint)
			           EXEC CTL_NewSession @mmLogin,2,'Usuario Nuevo'

			        SET @mmHint = (select hint from @mmValHint)
					      	INSERT INTO [dbo].[PSA_Mails_To_Be_Sent]
												   ([from]
													,[to]
													,[cc]
													,[bcc]
													,[subject]
													,[body]
													,[is_html_format]
													,[priority]
													,[id_user]
													,[date_request]
													,[date_send]
													,[id_process]
													,[id_task]
													,[hint])
											 VALUES
												   (@mmFrom
												   ,@mmEmail
												   ,''
												   ,''
												   ,'Usuario Nuevo'
												   ,'BODY'
												   ,1
												   ,1
												   ,@mmId_user
												   ,GETDATE()
												   ,GETDATE()
												   ,0
												   ,@mmId_user
												   ,@mmHint) 
												IF (@@ROWCOUNT > 0)
								SET @mmResult = @@IDENTITY
					  
			   END  
			ELSE
			  BEGIN
			      EXEC [dbo].[CTL_Salt] @Salt = @mmHint  OUTPUT
			          SET @mmPassword = [dbo].[GenerarPassword](@mmPassword, @mmHint)             
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
						   (@mmLogin
						   ,@mmPassword
						   ,@mmEmail
						   ,2
						   ,GETDATE()
						   ,GETDATE()
						   ,2
						   ,@mmHint)
				 			IF (@@ROWCOUNT > 0)
								SET @mmResult = @@IDENTITY 
			  END 
		  END
		  ELSE IF @mmAccion = 13
		     BEGIN
					  UPDATE [dbo].[PSA_Session]
			                 SET [date_end] = GETDATE(),
							     [PSA_Session].status = 0
			                      WHERE [PSA_Session].session = @mmSeccion
					IF (@@ROWCOUNT > 0)
							SET @mmResult = 0
			 END 
		  ELSE IF @mmAccion = 14
		     BEGIN 
		  /*  EXEC  [dbo].[CTL_CheckSeccion] @mmSeccion*/
			
				UPDATE [dbo].[PSA_User]
			     SET  [active] = 1
				 WHERE [dbo].[PSA_User].login = @chkLogin
				 	IF (@@ROWCOUNT > 0)
					   UPDATE [dbo].[PSA_Session]
			                 SET [date_end] = GETDATE(),
							     [PSA_Session].status = 0
			                      WHERE [PSA_Session].login = @chkLogin
								IF (@@ROWCOUNT > 0)
							            SET @mmResult = 0
			 END 
		END TRY
		BEGIN CATCH
			-- Execute error retrieval routine.  
			EXECUTE [dbo].[CTL_GetErrorInfo];  
			RETURN
		END CATCH
	END
	SELECT @mmResult
END




GO
/****** Object:  StoredProcedure [dbo].[CTL_CheckSeccion]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		
-- Create date: 
-- Description:	Evaluar Seccion Activa
-- =============================================
CREATE PROCEDURE [dbo].[CTL_CheckSeccion] 
(
	-- Add the parameters for the function here
	@mmSession nvarchar(40)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET NOEXEC OFF;
	SET FMTONLY OFF;

	
	-- Fill the table variable with the rows for your result set
	UPDATE [dbo].[PSA_Session]
	   SET [date_end] = GETDATE()
	 WHERE 
		[session] = @mmSession
		AND DATEADD(mi,(SELECT time_alive FROM CTL_Subject INNER JOIN PSA_Session ON PSA_Session.Subject = CTL_Subject.Subject WHERE  PSA_Session.session = @mmSession), [date_end]) > GETDATE()
  
	IF NOT ((@@ROWCOUNT) > 0)  
		UPDATE [dbo].[PSA_Session]
		   SET 
			[date_end] = GETDATE(),
			[status] = 0	
		 WHERE 
			[session] = @mmSession

	SELECT [login], [scope],[Subject]
	FROM [dbo].[PSA_Session]
	WHERE 
		[session] = @mmSession
		AND [status] = 1
	RETURN 
END





GO
/****** Object:  StoredProcedure [dbo].[CTL_GetErrorInfo]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CTL_GetErrorInfo]  
AS  
SELECT  
    ERROR_NUMBER() AS ErrorNumber  
    ,ERROR_SEVERITY() AS ErrorSeverity  
    ,ERROR_STATE() AS ErrorState  
    ,ERROR_PROCEDURE() AS ErrorProcedure  
    ,ERROR_LINE() AS ErrorLine  
    ,ERROR_MESSAGE() AS ErrorMessage;  




GO
/****** Object:  StoredProcedure [dbo].[CTL_HorasActivas]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	
-- Create date: 
-- Description:	Devolver Horas Activas Dia
-- =============================================
CREATE PROCEDURE [dbo].[CTL_HorasActivas] 
(
	-- Add the parameters for the function here
	@mmFecIni nvarchar(20) = NULL,
	@mmFecFin nvarchar(20) = NULL,
	@mmSession nvarchar(40) = NULL
)
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET NOEXEC OFF;
	SET FMTONLY OFF;

	-- Fill the table variable with the rows for your result set
	IF @mmFecIni IS NULL SET @mmFecIni = FORMAT(GETDATE(), 'yyyyMMdd 00:00:00')
	IF @mmFecFin IS NULL SET @mmFecFin = FORMAT(GETDATE(), 'yyyyMMdd 23:59:00')

	DECLARE @tblHoras table (Hora datetime) 
	IF [dbo].[EsFecha](@mmFecIni,0) > 0 AND [dbo].[EsFecha](@mmFecFin,0) > 0
		BEGIN  

		WHILE DATEADD(minute,0, @mmFecIni) < DATEADD(minute,0, @mmFecFin)
		BEGIN	
			INSERT INTO @tblHoras (Hora)
				SELECT @mmFecIni
			SET @mmFecIni = FORMAT(DATEADD(minute,30, @mmFecIni), 'yyyyMMdd HH:m:ss')
		END

		SELECT *
		FROM
			@tblHoras
	END 
	ELSE
		SELECT -1971
	RETURN 
END




GO
/****** Object:  StoredProcedure [dbo].[CTL_NewSession]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
 -- Author:			
 -- Create date:		
--- Description:   Creacion de Nuevas Sessiones 
-- =============================================
CREATE PROCEDURE [dbo].[CTL_NewSession] 
(
	-- Add the parameters for the function here
	@mmLogin nvarchar(20),
	@mmNivelSeguridad nvarchar(1),
	@mmSubject nvarchar(50) = NULL
	--@ResultVar nvarchar(40) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		
	-- Declare the return variable here
	DECLARE @ResultVar nvarchar(40)
	SET @ResultVar = [dbo].[GenerarPassword](CURRENT_TIMESTAMP,@mmSubject + @mmLogin)
	

	BEGIN TRY
		-- Add the T-SQL statements to compute the return value here
		UPDATE [dbo].[PSA_Session]
		   SET [status] = 0
		 WHERE 
			[status] = 1
			AND [login] = @mmLogin;

		INSERT INTO [dbo].[PSA_Session]
				   ([session]
				   ,[Subject]
				   ,[login]
				   ,[date_start]
				   ,[date_end]
				   ,[scope]
				   ,[status])
			 VALUES
				   (@ResultVar
				   ,@mmSubject
				   ,@mmLogin
				   ,GETDATE()
				   ,GETDATE()
				   ,@mmNivelSeguridad
				   ,1);

		-- Return the result of the function
		SELECT @ResultVar
		RETURN 
	END TRY
	BEGIN CATCH
		-- Execute error retrieval routine.  
		EXECUTE [dbo].[CTL_GetErrorInfo];
		RETURN  
	END CATCH
END





GO
/****** Object:  StoredProcedure [dbo].[CTL_Salt]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	SALT
-- =============================================
CREATE PROCEDURE [dbo].[CTL_Salt] 
	-- Add the parameters for the stored procedure here
	@Salt nvarchar(40) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	-- Generate the salt
	DECLARE @Seed int;
	DECLARE @LCV tinyint;
	DECLARE @CTime DATETIME;
	DECLARE @AscII Int;

	SET @CTime = GETDATE();
	SET @Seed = (DATEPART(hh, @Ctime) * 10000000) + (DATEPART(n, @CTime) * 100000) + (DATEPART(s, @CTime) * 1000) + DATEPART(ms, @CTime);
	SET @LCV = 1;
	SET @AscII = ROUND((RAND(@Seed) * 94.0) + 32, 3);
	WHILE @AscII IN (44,34,39,37,35,64,40,38,41,61,43,45,42,32,62,60,36,91,123,125,93) 
		SET @AscII = ROUND((RAND() * 94.0) + 32, 3);
	SET @Salt = CHAR(@AscII)

	WHILE (@LCV < 25)
	BEGIN
	    SET @AscII = ROUND((RAND() * 94.0) + 32, 3);
		WHILE @AscII IN (44,34,39,37,35,64,40,38,41,61,43,45,42,32,62,60,36,91,123,125,93) 
			SET @AscII = ROUND((RAND() * 94.0) + 32, 3);
		SET @Salt = @Salt  + CHAR(@AscII)
		SET @LCV = @LCV + 1;
	END;
END




GO
/****** Object:  UserDefinedFunction [dbo].[EsAlphaNumerico]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[EsAlphaNumerico](@sTexto VARCHAR(100), @AceptarN BIT=0) RETURNS BIT
AS
BEGIN
    DECLARE @i INT, @Chr INT, @EsAlphaNum bit, @Longitud int
    SET @EsAlphaNum=0
    -- If @RetVal = NULL the script won"t work since NULL + "C" = Null
    -- So we default @RetVal ="".
    IF @sTexto  IS NULL
        SET @EsAlphaNum=1

    SET @Longitud=LEN(@sTexto)
    SET @i=1
    WHILE @i <= @Longitud
    BEGIN
--65=A 90=Z --97=a 122=z
--48=0 57=9
SET @CHR=ASCII(SUBSTRING(@sTexto,@i,1))
--Verificar que este entre 0 y 9, A-Z, a-z
IF ( (@CHR BETWEEN 65 AND 90) OR (@CHR BETWEEN 97 AND 122) OR (@CHR BETWEEN 48
AND 57))
           SET @EsAlphaNum=1
        ELSE
           IF @AceptarN=0
           RETURN 0
           else
               IF ((@CHR<>241) and (@chr<>209))
                   RETURN 0
SET @i = @i+1
END
    RETURN @EsAlphaNum
END




GO
/****** Object:  UserDefinedFunction [dbo].[EsEmailValid]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[EsEmailValid](@sTexto varchar(100), @AceptarN bit=0)
RETURNS BIT
AS
BEGIN
	DECLARE @i int, @Chr int, @EsEmailValid bit, @Longitud int
	DECLARE @DOT int, @ADDRESS int

	SET @DOT = 0
	SET @ADDRESS = 0
	SET @EsEmailValid=0
	IF @sTexto IS NULL
		RETURN 1
	SET @Longitud=LEN(@sTexto)
	SET @i=1
	WHILE @i <= @Longitud
	BEGIN
		-- 64 = @ 90 = Z
		-- 97 = a 122 = z
		-- 48 = 0 57 = 9
		SET @CHR=ASCII(SUBSTRING(@sTexto,@i,1))
		--Verificar que este entre 0 y 9, A-Z, a-z
		IF ( (@CHR BETWEEN 64 AND 90) OR (@CHR BETWEEN 97 AND 122) OR (@CHR BETWEEN 48
		AND 57) or (@CHR=46))
		BEGIN
			SET @EsEmailValid=1
			IF @CHR=64
			BEGIN
				SET @ADDRESS = @ADDRESS + 1
			END
			IF @CHR=46
			BEGIN
				SET @DOT = @DOT + 1
			END
		END
		ELSE
		IF @AceptarN=0
			RETURN 0
		ELSE
		IF ((@CHR<>241) and (@chr<>209))
			RETURN 0
		SET @i = @i+1
	END
	IF @ADDRESS>1
		SET @EsEmailValid=0
	IF @DOT>2
		SET @EsEmailValid=0
RETURN @EsEmailValid
END




GO
/****** Object:  UserDefinedFunction [dbo].[EsFecha]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[EsFecha](@sTexto VARCHAR(20), @AceptarN BIT=0) RETURNS BIT
AS
BEGIN
    DECLARE @chkFecha varchar(20), @EsFecha bit
    SET @EsFecha=0
    
	IF (@sTexto IS NULL OR @sTexto='') AND @AceptarN = 1	       
		SET @EsFecha=1
	ELSE IF	ISDATE(@sTexto) = 1 AND YEAR(DATEADD(minute, 0, @sTexto)) BETWEEN 2011 AND YEAR(DATEADD(year, 2, GETDATE()))
		SET @EsFecha=1

    RETURN @EsFecha
END




GO
/****** Object:  UserDefinedFunction [dbo].[EsRegular]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[EsRegular](@sTexto VARCHAR(MAX), @AceptarN BIT=0) RETURNS BIT
AS
BEGIN
    DECLARE @i INT, @Chr INT, @EsRegular bit, @Longitud int
    SET @EsRegular=0
    IF @sTexto IS NULL OR @sTexto=''
        SET @EsRegular=1

    SET @Longitud=LEN(@sTexto)
    SET @i=1
    WHILE @i <= @Longitud
    BEGIN
        SET @CHR=ASCII(SUBSTRING(@sTexto,@i,1))
        --Verificar que este entre 0 y 9, A-Z, a-z
        IF ( 
				(@CHR BETWEEN 65 AND 90)			--65=A 90=Z
				OR  (@CHR BETWEEN 97 AND 122)		--97=a 122=z	 
				OR (@CHR BETWEEN 48 AND 57)			--48=0 57=9
				-- BS ! % ( ) , - . | : ; _ ? á é í ó ú ñ Ñ (164ñ, 165Ñ)
				OR (@CHR IN (32, 33, 36, 37, 40, 41, 44, 45, 46, 124, 58, 59, 95, 63, 225, 233, 237, 243, 250, 209, 241)) 
				-- Fin de Linea y Retorno
				OR (@CHR IN (13, 10))
				--OR (@CHR IN (13, 10, 28, 29, 160, 130, 161, 162, 163, 164, 165))
			)
           SET @EsRegular=1
        ELSE
           IF @AceptarN=0 RETURN 0
           ELSE
               IF ((@CHR<>241) and (@chr<>209))
                   RETURN 0
        SET @i = @i+1
    END
    RETURN @EsRegular
END



GO
/****** Object:  UserDefinedFunction [dbo].[EsRepetidoLogin]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Melvin Ricardo Nuñez
-- Create date: 25-01-2017
-- Description: Verifica Si el nombre del login esta repetido
-- =============================================
CREATE FUNCTION [dbo].[EsRepetidoLogin] 
(

	@mmlogin nvarchar(60)
)
RETURNS int
AS
BEGIN

	DECLARE @mmResult  int
	SET @mmResult = (SELECT count(login) FROM PSA_Users WHERE login = @mmlogin)
	RETURN @mmResult

END




GO
/****** Object:  UserDefinedFunction [dbo].[GenerarPassword]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE  FUNCTION [dbo].[GenerarPassword]
   (@ClearPwd nVarChar(20), @Salt nVarChar(20))
RETURNS nvarchar(40)
AS
BEGIN
   DECLARE @EncPwd nVarChar(40)
   SET @ClearPwd = @ClearPwd + '1971' +  @Salt
   
   RETURN ( SELECT SUBSTRING(master.dbo.fn_varbintohexstr(HASHBYTES('SHA1', @ClearPwd)), 3, 40) )
END




GO
/****** Object:  Table [dbo].[CTL_Departamento_Municipios]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTL_Departamento_Municipios](
	[id_distrito] [int] NOT NULL,
	[name] [varchar](45) NULL DEFAULT (NULL),
	[cod_real] [varchar](50) NULL,
	[id_departamento] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTL_Error]    Script Date: 05/02/2017 03:27:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTL_Error](
	[id_error] [int] IDENTITY(1,1) NOT NULL,
	[cod_error] [int] NOT NULL,
	[error_message] [varchar](50) NOT NULL,
	[error_descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CTL_ERROR] PRIMARY KEY CLUSTERED 
(
	[id_error] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTL_Field]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTL_Field](
	[id_field] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[label] [varchar](50) NOT NULL,
	[hint] [varchar](255) NOT NULL,
	[sinopsis] [varchar](1020) NOT NULL,
	[placeholder] [varchar](50) NULL,
	[id_type] [int] NOT NULL,
	[range] [varchar](25) NOT NULL,
	[format] [varchar](255) NOT NULL,
	[loop] [int] NOT NULL,
	[id_form] [int] NOT NULL,
	[presedence_order] [bigint] NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NULL,
	[active] [tinyint] NOT NULL,
 CONSTRAINT [PK_values] PRIMARY KEY CLUSTERED 
(
	[id_field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTL_Form]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTL_Form](
	[id_form] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[deletion_date] [datetime] NULL,
	[id_task] [int] NOT NULL,
	[presedence_order] [bigint] NOT NULL,
	[active] [tinyint] NOT NULL,
 CONSTRAINT [PK_PSA_Value_Task_Association] PRIMARY KEY CLUSTERED 
(
	[id_form] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTL_Owner]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTL_Owner](
	[id_owner] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CTL_Owner] PRIMARY KEY CLUSTERED 
(
	[id_owner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTL_Process]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTL_Process](
	[id_process] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NULL,
	[active] [tinyint] NOT NULL,
 CONSTRAINT [PK_processes] PRIMARY KEY CLUSTERED 
(
	[id_process] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTL_Section]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTL_Section](
	[id_section] [int] IDENTITY(1,1) NOT NULL,
	[id_process] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NULL,
	[active] [tinyint] NOT NULL,
 CONSTRAINT [PK_PSA_Section] PRIMARY KEY CLUSTERED 
(
	[id_section] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTL_Subject]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTL_Subject](
	[subject] [nvarchar](50) NOT NULL,
	[time_alive] [int] NULL,
 CONSTRAINT [PK_CTL_Subject] PRIMARY KEY CLUSTERED 
(
	[subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTL_Task]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTL_Task](
	[id_task] [int] IDENTITY(1,1) NOT NULL,
	[id_assigned_user] [int] NOT NULL,
	[id_section] [int] NOT NULL,
	[id_owner] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[duration] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[modify_date] [datetime] NULL,
	[active] [tinyint] NOT NULL,
 CONSTRAINT [PK_tasks] PRIMARY KEY CLUSTERED 
(
	[id_task] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTL_Type]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTL_Type](
	[id_type] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[input_equivalent] [varchar](50) NOT NULL,
	[length] [int] NOT NULL,
 CONSTRAINT [PK_CTL_Type] PRIMARY KEY CLUSTERED 
(
	[id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSA_Catalogue]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSA_Catalogue](
	[id_catalogue] [int] IDENTITY(1,1) NOT NULL,
	[cod_catalogue] [varchar](50) NULL,
	[cod_item] [int] NULL,
	[description_item] [varchar](255) NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
	[active] [tinyint] NULL,
	[value_item] [int] NULL,
 CONSTRAINT [PK_PSA_Catalogue] PRIMARY KEY CLUSTERED 
(
	[id_catalogue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSA_Catalogue_Type]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSA_Catalogue_Type](
	[id_catalogue_type] [int] NULL,
	[nombre_catalogue_type] [varchar](100) NULL,
	[variable] [varchar](100) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NOT NULL,
	[active] [tinyint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSA_Field_Request_Association]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSA_Field_Request_Association](
	[id_association] [int] IDENTITY(1,1) NOT NULL,
	[id_field] [int] NOT NULL,
	[id_request] [int] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[active] [tinyint] NOT NULL,
	[value1] [varchar](50) NULL,
	[value2] [varchar](250) NULL,
	[value3] [varchar](500) NULL,
	[value4] [varchar](5000) NULL,
 CONSTRAINT [PK_PSA_Field_Request_Association] PRIMARY KEY CLUSTERED 
(
	[id_association] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSA_Mails_To_Be_Sent]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSA_Mails_To_Be_Sent](
	[mail_id] [int] IDENTITY(1,1) NOT NULL,
	[from] [varchar](200) NOT NULL,
	[to] [varchar](200) NOT NULL,
	[cc] [varchar](200) NULL,
	[bcc] [varchar](200) NULL,
	[subject] [varchar](200) NULL,
	[body] [varchar](max) NULL,
	[is_html_format] [bit] NULL,
	[priority] [char](1) NULL,
	[id_user] [int] NULL,
	[date_request] [datetime] NOT NULL,
	[date_send] [datetime] NOT NULL,
	[id_process] [int] NULL,
	[id_task] [int] NULL,
	[hint] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSA_Notification]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSA_Notification](
	[id_notification] [int] IDENTITY(1,1) NOT NULL,
	[id_request] [int] NOT NULL,
	[id_user] [int] NOT NULL,
	[message] [varchar](500) NULL,
	[sent_date] [datetime] NOT NULL,
 CONSTRAINT [PK_notifications] PRIMARY KEY CLUSTERED 
(
	[id_notification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSA_Registry_Control]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSA_Registry_Control](
	[ctl_id] [int] IDENTITY(1,1) NOT NULL,
	[tbl] [varchar](100) NOT NULL,
	[id] [int] NOT NULL,
	[hash] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ctl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSA_Request]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSA_Request](
	[id_request] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NOT NULL,
	[id_section] [int] NOT NULL,
	[id_process] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[status] [varchar](25) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[active] [tinyint] NOT NULL,
 CONSTRAINT [PK_requests] PRIMARY KEY CLUSTERED 
(
	[id_request] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSA_Session]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PSA_Session](
	[session] [nvarchar](40) NOT NULL,
	[subject] [nvarchar](50) NOT NULL,
	[login] [nvarchar](20) NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NOT NULL,
	[scope] [smallint] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_PSA_Session] PRIMARY KEY CLUSTERED 
(
	[session] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PSA_User]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSA_User](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](25) NOT NULL,
	[password] [varchar](60) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[scope] [tinyint] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[deletion_date] [datetime] NULL,
	[active] [int] NOT NULL,
	[hint] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[PSA_Documentation]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PSA_Documentation]
AS
SELECT        TOP (100) PERCENT d.object_id, a.name AS [table], b.name AS [column], c.name AS type, CASE WHEN c.name = 'numeric' OR
                         c.name = 'decimal' OR
                         c.name = 'float' THEN b.precision ELSE NULL END AS Precision, b.max_length, CASE WHEN b.is_nullable = 0 THEN 'NO' ELSE 'SI' END AS [Permite Nulls], 
                         CASE WHEN b.is_identity = 0 THEN 'NO' ELSE 'SI' END AS [Es Autonumerico], ep.value AS Descripcion, f_1.ForeignKey, f_1.ReferenceTableName, f_1.ReferenceColumnName
FROM            sys.tables AS a INNER JOIN
                         sys.columns AS b ON a.object_id = b.object_id INNER JOIN
                         sys.systypes AS c ON b.system_type_id = c.xtype INNER JOIN
                         sys.objects AS d ON a.object_id = d.object_id LEFT OUTER JOIN
                         sys.extended_properties AS ep ON d.object_id = ep.major_id AND b.column_id = ep.minor_id LEFT OUTER JOIN
                             (SELECT        f.name AS ForeignKey, OBJECT_NAME(f.parent_object_id) AS TableName, COL_NAME(fc.parent_object_id, fc.parent_column_id) AS ColumnName, OBJECT_NAME(f.referenced_object_id) 
                                                         AS ReferenceTableName, COL_NAME(fc.referenced_object_id, fc.referenced_column_id) AS ReferenceColumnName
                               FROM            sys.foreign_keys AS f INNER JOIN
                                                         sys.foreign_key_columns AS fc ON f.object_id = fc.constraint_object_id) AS f_1 ON f_1.TableName = a.name AND f_1.ColumnName = b.name
WHERE        (a.name <> 'sysdiagrams')
ORDER BY [table], b.column_id




GO
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1, N'La Ceiba', N'101', 1282)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (2, N'Trujillo', N'201', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (3, N'Comayagua', N'301', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (4, N'Santa Rosa de Copán', N'401', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (5, N'San Pedro Sula', N'501', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (6, N'Choluteca', N'601', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (7, N'Yuscarán', N'701', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (8, N'Tegucigalpa', N'801', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (9, N'Puerto Lempira', N'901', 1290)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (10, N'La Esperanza', N'1001', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (11, N'Roatán', N'1101', 1292)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (12, N'La Paz', N'1201', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (13, N'Gracias', N'1301', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (14, N'Nueva Ocotepeque', N'1401', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (15, N'Juticalpa', N'1501', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (16, N'Santa Bárbara', N'1601', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (17, N'Nacaome', N'1701', 1298)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (18, N'Yoro', N'1801', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (20, N'Alubarén', N'802', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (21, N'Cedros ', N'803', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (22, N'Curarén', N'804', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (23, N' El Porvenir', N'805', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (24, N'Guaimaca', N'806', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (25, N'La Libertad ', N'807', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (26, N'La Venta', N'808', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (27, N'Lepaterique', N'809', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (28, N'Maraita', N'810', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (29, N'Marale ', N'811', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (30, N'Nueva Armenia ', N'812', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (31, N'Ojojona ', N'813', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (32, N'Orica ', N'814', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (33, N'Reitoca ', N'815', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (34, N'Sabanagrande', N'816', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (35, N'San Antonio de Oriente ', N'817', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (36, N'San Buenaventura ', N'818', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (37, N'San Ignacio', N'819', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (38, N'San Juan de Flores ', N'820', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (39, N'San Miguelito', N'821', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (40, N'Santa Ana ', N'822', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (41, N'Santa Lucia ', N'823', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (42, N'Talanga ', N'824', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (43, N'Tatumbla ', N'825', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (44, N'Valle de Angeles ', N'826', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (45, N'Villa de San Francisco ', N'827', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (46, N'Vallecillo ', N'828', 1289)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (47, N'Ajuterique ', N'302', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (48, N'El Rosario ', N'303', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (49, N'Esquías ', N'304', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (50, N'Humuya ', N'305', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (51, N'La Libertad ', N'306', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (52, N'Lamaní', N'307', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (53, N'La Trinidad ', N'308', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (54, N'Lejamaní ', N'309', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (55, N'Meámbar', N'310', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (56, N'Minas de Oro ', N'311', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (57, N'Ojos de Agua', N'312', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (58, N'San Jerónimo ', N'313', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (59, N'San José de Comayagua', N'314', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (60, N'San José del Potrero', N'315', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (61, N'San Luis ', N'316', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (62, N'San Sebastián ', N'317', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (63, N'Siguatepeque ', N'318', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (64, N'Villa de San Antonio', N'319', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (65, N'Las Lajas ', N'320', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (66, N'Taulabé ', N'321', 1284)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (67, N'Balfate', N'202', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (68, N'Iriona', N'203', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (69, N'Limón', N'204', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (70, N'Santa Fe', N'205', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (71, N'Santa Rosa de Aguán', N'206', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (72, N'Sonaguera', N'207', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (73, N'Saba', N'208', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (74, N'Tocoa', N'209', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (75, N'Bonito Oriental', N'210', 1283)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (76, N' Arada', N'1602', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (77, N'Atima', N'1603', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (78, N'Azacualpa', N'1604', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (79, N'Ceguaca', N'1605', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (80, N'Colinas', N'1606', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (81, N'Concepción del Norte', N'1607', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (82, N'Concepción del Sur', N'1608', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (83, N'Chinda', N'1609', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (84, N'El Níspero', N'1610', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (85, N'Gualala', N'1611', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (86, N'Ilama', N'1612', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (87, N'Macuelizo', N'1613', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (88, N'Naranjito', N'1614', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (89, N'Nueva Celilac', N'1615', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (90, N'Petoa', N'1616', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (91, N'Protección', N'1617', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (92, N'Quimistán', N'1618', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (93, N'San Francisco de Ojuera', N'1619', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (94, N'San Luis', N'1620', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (95, N'San Marcos', N'1621', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (96, N'San Nicolás', N'1622', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (97, N'San Pedro Zacapa', N'1623', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (98, N'Santa Rita', N'1624', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (99, N'San Vicente Centenario', N'1625', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (100, N'Trinidad', N'1626', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (101, N'Las Vegas', N'1627', 1297)
GO
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (102, N'Nueva Frontera', N'1628', 1297)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (103, N'El Porvenir', N'102', 1282)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (104, N'Esparta', N'103', 1282)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (105, N'Jutiapa', N'104', 1282)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (106, N'La Masica', N'105', 1282)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (107, N'San Francisco', N'106', 1282)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (108, N'Tela', N'107', 1282)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (109, N'Arizona', N'108', 1282)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (110, N'Alauca', N'702', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (111, N'Danlí', N'703', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (112, N'El Paraiso ', N'704', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (113, N'Güinope', N'705', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (114, N'Jacaleapa', N'706', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (115, N'Liure', N'707', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (116, N'Morocelí', N'708', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (117, N'Oropolí', N'709', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (118, N'Potrerillos', N'710', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (119, N'San Antonio de Flores', N'711', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (120, N'San Lucas', N'712', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (121, N'San Matías', N'713', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (122, N'Soledad', N'714', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (123, N'Teupasenti', N'715', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (124, N'Texiguat', N'716', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (125, N'Vado Ancho', N'717', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (126, N'Yauyupe', N'718', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (127, N'Trojes', N'719', 1288)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (128, N' Cabañas ', N'402', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (129, N'Concepción', N'403', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (130, N'Copán Ruinas', N'404', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (131, N'Corquín ', N'405', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (132, N'Cucuyagua', N'406', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (133, N'Dolores', N'407', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (134, N'Dulce Nombre', N'408', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (135, N'El Paraíso', N'409', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (136, N'Florida', N'410', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (137, N'La Jigua', N'411', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (138, N'La Unión', N'412', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (139, N'Nueva Arcadia', N'413', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (140, N'San Agustín', N'414', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (141, N'San Antonio', N'415', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (142, N'San Jerónimo', N'416', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (143, N'San José', N'417', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (144, N'San Juan de Opoa', N'418', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (145, N' San Nicolás', N'419', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (146, N'San Pedro de Copan', N'420', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (147, N'Santa Rita', N'421', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (148, N'Trinidad de Copán', N'422', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (149, N'Veracruz', N'423', 1285)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (150, N'Guanaja', N'1102', 1292)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (151, N'José Santos Guardiola', N'1103', 1292)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (152, N'Utila', N'1104', 1292)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (153, N'Brus Laguna', N'902', 1290)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (154, N'Ahuas', N'903', 1290)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (155, N'Juan Francisco Bulnes', N'904', 1290)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (156, N'Villeda Morales', N'905', 1290)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (157, N'Wampusirpe', N'906', 1290)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (158, N'Choloma', N'502', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (159, N'Omoa', N'503', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (160, N'Pimienta', N'504', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (161, N'Potrerillos', N'505', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (162, N'Puerto Cortés', N'506', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (163, N'San Antonio de Cortés', N'507', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (164, N'San Francisco de Yojoa', N'508', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (165, N'San Manuel', N'509', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (166, N'Santa Cruz de Yojoa', N'510', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (167, N'Villanueva', N'511', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (168, N'La Lima', N'512', 1286)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (169, N'Apacilagua', N'602', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (170, N'Concepción de María', N'603', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (171, N'Duyure', N'604', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (172, N'El Corpus', N'605', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (173, N'El Triunfo', N'606', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (174, N'Marcovia', N'607', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (175, N'Morolica', N'608', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (176, N'Namasigüe', N'609', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (177, N'Orocuina', N'610', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (178, N'Pespire', N'611', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (179, N'San Antonio de Flores', N'612', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (180, N'San Isidro', N'613', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (181, N'San José', N'614', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (182, N'San Marcos de Colón', N'615', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (183, N'Santa Ana de Yusguare', N'616', 1287)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (184, N'Camasca', N'1002', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (185, N'Colomoncagua', N'1003', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (186, N'Concepción', N'1004', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (187, N'Dolores', N'1005', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (188, N'Intibucá', N'1006', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (189, N'Jesús de Otoro', N'1007', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (190, N'Magdalena', N'1008', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (191, N'Masaguara', N'1009', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (192, N'San Antonio', N'1010', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (193, N'San Isidro', N'1011', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (194, N'San Juan de Flores', N'1012', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (195, N'San Marcos de La Sierra', N'1013', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (196, N'San Miguel Guancapla', N'1014', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (197, N'Santa Lucía', N'1015', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (198, N'Yamaranguila', N'1016', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (199, N'San Francisco Opalaca', N'1017', 1291)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (200, N'Aguanqueterique', N'1202', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (201, N'Cabañas', N'1203', 1293)
GO
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (202, N'Cane', N'1204', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (203, N'Chinacla', N'1205', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (204, N'Guajiquiro', N'1206', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (205, N'Lauterique', N'1207', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (206, N'Marcala', N'1208', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (207, N'Mercedes de Oriente', N'1209', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (208, N'Opatoro', N'1210', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (209, N'San Antonio del Norte', N'1211', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (210, N'San José', N'1212', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (211, N'San Juan', N'1213', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (212, N'San Pedro de Tutule', N'1214', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (213, N'Santa Ana', N'1215', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (214, N'Santa Elena', N'1216', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (215, N'Santa María', N'1217', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (216, N'Santiago Puringla', N'1218', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (217, N'Yarula', N'1219', 1293)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (218, N'Belén', N'1302', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (219, N'Candelaria', N'1303', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (220, N'Cololaca', N'1304', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (221, N'Erandique', N'1305', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (222, N'Gualcinse', N'1306', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (223, N'Guarita', N'1307', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (224, N'La Campa', N'1308', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (225, N'La Iguala', N'1309', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (226, N'Las Flores', N'1310', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (227, N'La Unión', N'1311', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (228, N'La Virtud', N'1312', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (229, N'Lepaera', N'1313', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (230, N'Mapulaca', N'1314', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (231, N'Piraera', N'1315', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (232, N'San Andrés', N'1316', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (233, N'San Francisco', N'1317', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (234, N' San Juan Guarita', N'1318', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (235, N'San Manuel Colohete', N'1319', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (236, N'San Rafael', N'1320', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (237, N'San Sebastián', N'1321', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (238, N'Santa Cruz', N'1322', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (239, N'Talgua', N'1323', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (240, N'Tambla', N'1324', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (241, N'Tomalá', N'1325', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (242, N'Valladolid', N'1326', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (243, N'Virginia', N'1327', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (244, N'San Marcos de Caiquín', N'1328', 1294)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (245, N'Belén Gualcho', N'1402', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (246, N'Concepción', N'1403', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (247, N'Dolores Merendón', N'1404', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (248, N'Fraternidad', N'1405', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (249, N'La Encarnación', N'1406', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (250, N'La Labor', N'1407', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (251, N'Lucerna', N'1408', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (252, N'Mercedes', N'1409', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (253, N'San Fernando', N'1410', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (254, N'San Francisco del Valle', N'1411', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (255, N'San Jorge', N'1412', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (256, N'San Marcos', N'1413', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (257, N'Santa Fé', N'1414', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (258, N'Sensenti', N'1415', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (259, N'Sinuapa', N'1416', 1295)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (260, N'Campamento', N'1502', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (261, N'Catacamas', N'1503', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (262, N'Concordia', N'1504', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (263, N'Dulce Nombre de Culmí', N'1505', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (264, N'El Rosario', N'1506', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (265, N'Esquipulas del Norte', N'1507', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (266, N'Gualaco', N'1508', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (267, N'Guarizama', N'1509', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (268, N'Guata', N'1510', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (269, N'Guayape', N'1511', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (270, N'Jano', N'1512', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (271, N'La Unión', N'1513', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (272, N'Mangulile', N'1514', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (273, N'Manto', N'1515', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (274, N'Salamá', N'1516', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (275, N'San Esteban', N'1517', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (276, N'San Francisco de Becerra', N'1518', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (277, N'San Francisco de La Paz', N'1519', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (278, N'Santa María del Real', N'1520', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (279, N'Silca', N'1521', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (280, N'Yocón', N'1522', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (281, N'Froylán Turcios', N'1523', 1296)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (282, N'Alianza', N'1702', 1298)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (283, N' Amapala', N'1703', 1298)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (284, N'Aramecina', N'1704', 1298)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (285, N'Caridad', N'1705', 1298)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (286, N'Goascorán', N'1706', 1298)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (287, N'Langue', N'1707', 1298)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (288, N'San Francisco de Coray', N'1708', 1298)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (289, N'San Lorenzo', N'1709', 1298)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (290, N'Arenal', N'1802', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (291, N'El Negrito', N'1803', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (292, N'El Progreso', N'1804', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (293, N'Jocón', N'1805', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (294, N'Morazán', N'1806', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (295, N'Olanchito', N'1807', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (296, N'Santa Rita', N'1808', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (297, N'Sulaco', N'1809', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (298, N'Victoria', N'1810', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (299, N'Yorito', N'1811', 1299)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1282, N'Atlántida', N'100', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1283, N'Colón', N'200', 0)
GO
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1284, N'Comayagua', N'300', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1285, N'Copán', N'400', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1286, N'Cortes', N'500', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1287, N'Choluteca', N'600', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1288, N'El Paraíso', N'700', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1289, N'Francisco Morazán', N'800', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1290, N'Gracias a Dios', N'900', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1291, N'Intibucá', N'1000', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1292, N'Islas de la Bahía', N'1100', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1293, N'La Paz', N'1200', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1294, N'Lempira', N'1300', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1295, N'Ocotepeque', N'1400', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1296, N'Olancho', N'1500', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1297, N'Santa Bárbara', N'1600', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1298, N'Valle', N'1700', 0)
INSERT [dbo].[CTL_Departamento_Municipios] ([id_distrito], [name], [cod_real], [id_departamento]) VALUES (1299, N'Yoro', N'1800', 0)
INSERT [dbo].[CTL_Subject] ([subject], [time_alive]) VALUES (N'Cambio Contraseña', 15)
INSERT [dbo].[CTL_Subject] ([subject], [time_alive]) VALUES (N'Sesion', 30)
INSERT [dbo].[CTL_Subject] ([subject], [time_alive]) VALUES (N'Usuario Nuevo', 120)
SET IDENTITY_INSERT [dbo].[CTL_Type] ON 

INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (1, N'text25', N'Text with a length of 25.', N'string', 25)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (2, N'text50', N'Text with a length of 50.', N'string', 50)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (3, N'text250', N'Text with a length of 250.', N'string', 250)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (4, N'text500', N'Text with a length of 500.', N'string', 500)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (5, N'text5000', N'Text with a length of 5000.', N'string', 5000)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (6, N'number1', N'1 digit number (max value 9).', N'int', 1)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (7, N'number2', N'2 digit number (max value 99).', N'int', 2)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (8, N'number3', N'3 digit number (max value 999).', N'int', 3)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (9, N'number9', N'9 digit number (max value 999999999).', N'int', 9)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (10, N'date', N'Date in the format of YYYY-MM-DD.', N'date', 10)
INSERT [dbo].[CTL_Type] ([id_type], [name], [description], [input_equivalent], [length]) VALUES (11, N'yesno', N'True or false (1 or 0).', N'boolean', 1)
SET IDENTITY_INSERT [dbo].[CTL_Type] OFF
SET IDENTITY_INSERT [dbo].[PSA_Mails_To_Be_Sent] ON 

INSERT [dbo].[PSA_Mails_To_Be_Sent] ([mail_id], [from], [to], [cc], [bcc], [subject], [body], [is_html_format], [priority], [id_user], [date_request], [date_send], [id_process], [id_task], [hint]) VALUES (3, N'mrnrades11@hotmail.es', N'mrnrades@gmail.com', N'', N'', N'Nuevo Usuario', N'Cuerpo', 1, N'0', 1, CAST(N'2017-02-04 20:40:39.870' AS DateTime), CAST(N'2017-02-04 20:40:39.870' AS DateTime), 1, 4, N'8c5b47c5598eea2002c9863ba9e016692fec58f9')
SET IDENTITY_INSERT [dbo].[PSA_Mails_To_Be_Sent] OFF
INSERT [dbo].[PSA_Session] ([session], [subject], [login], [date_start], [date_end], [scope], [status]) VALUES (N'8c5b47c5598eea2002c9863ba9e016692fec58f9', N'Usuario Nuevo', N'root', CAST(N'2017-02-04 20:40:39.870' AS DateTime), CAST(N'2017-02-04 20:40:39.870' AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[PSA_User] ON 

INSERT [dbo].[PSA_User] ([id_user], [login], [password], [email], [scope], [creation_date], [deletion_date], [active], [hint]) VALUES (4, N'root', N'782e03677c1441a7cc0ec336a2e42e10e0d977c4', N'mrnrades@gmail.com', 0, CAST(N'2017-02-04 20:40:39.863' AS DateTime), CAST(N'2017-02-04 20:40:39.863' AS DateTime), 1, N'uOguHU1y!9KZi!E`9A\n8_hd5')
SET IDENTITY_INSERT [dbo].[PSA_User] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__PSA_User__7838F27228FCE4A0]    Script Date: 05/02/2017 03:27:13 a. m. ******/
ALTER TABLE [dbo].[PSA_User] ADD UNIQUE NONCLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__PSA_User__7838F272A5B27109]    Script Date: 05/02/2017 03:27:13 a. m. ******/
ALTER TABLE [dbo].[PSA_User] ADD UNIQUE NONCLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__PSA_User__AB6E6164DB039E32]    Script Date: 05/02/2017 03:27:13 a. m. ******/
ALTER TABLE [dbo].[PSA_User] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTL_Field]  WITH CHECK ADD  CONSTRAINT [FK_CTL_Field_CTL_Form] FOREIGN KEY([id_form])
REFERENCES [dbo].[CTL_Form] ([id_form])
GO
ALTER TABLE [dbo].[CTL_Field] CHECK CONSTRAINT [FK_CTL_Field_CTL_Form]
GO
ALTER TABLE [dbo].[CTL_Field]  WITH CHECK ADD  CONSTRAINT [FK_CTL_Fields_CTL_Types] FOREIGN KEY([id_type])
REFERENCES [dbo].[CTL_Type] ([id_type])
GO
ALTER TABLE [dbo].[CTL_Field] CHECK CONSTRAINT [FK_CTL_Fields_CTL_Types]
GO
ALTER TABLE [dbo].[CTL_Form]  WITH CHECK ADD  CONSTRAINT [FK_CTL_Form_PSA_Task] FOREIGN KEY([id_task])
REFERENCES [dbo].[CTL_Task] ([id_task])
GO
ALTER TABLE [dbo].[CTL_Form] CHECK CONSTRAINT [FK_CTL_Form_PSA_Task]
GO
ALTER TABLE [dbo].[CTL_Section]  WITH CHECK ADD  CONSTRAINT [FK_PSA_Section_PSA_Process] FOREIGN KEY([id_process])
REFERENCES [dbo].[CTL_Process] ([id_process])
GO
ALTER TABLE [dbo].[CTL_Section] CHECK CONSTRAINT [FK_PSA_Section_PSA_Process]
GO
ALTER TABLE [dbo].[CTL_Task]  WITH CHECK ADD  CONSTRAINT [FK_PSA_Task_CTL_Owner] FOREIGN KEY([id_owner])
REFERENCES [dbo].[CTL_Owner] ([id_owner])
GO
ALTER TABLE [dbo].[CTL_Task] CHECK CONSTRAINT [FK_PSA_Task_CTL_Owner]
GO
ALTER TABLE [dbo].[CTL_Task]  WITH CHECK ADD  CONSTRAINT [FK_PSA_Task_PSA_Section] FOREIGN KEY([id_section])
REFERENCES [dbo].[CTL_Section] ([id_section])
GO
ALTER TABLE [dbo].[CTL_Task] CHECK CONSTRAINT [FK_PSA_Task_PSA_Section]
GO
ALTER TABLE [dbo].[CTL_Task]  WITH CHECK ADD  CONSTRAINT [FK_PSA_Task_PSA_User] FOREIGN KEY([id_assigned_user])
REFERENCES [dbo].[PSA_User] ([id_user])
GO
ALTER TABLE [dbo].[CTL_Task] CHECK CONSTRAINT [FK_PSA_Task_PSA_User]
GO
ALTER TABLE [dbo].[PSA_Field_Request_Association]  WITH CHECK ADD  CONSTRAINT [FK_PSA_Field_Request_Association_CTL_Field] FOREIGN KEY([id_field])
REFERENCES [dbo].[CTL_Field] ([id_field])
GO
ALTER TABLE [dbo].[PSA_Field_Request_Association] CHECK CONSTRAINT [FK_PSA_Field_Request_Association_CTL_Field]
GO
ALTER TABLE [dbo].[PSA_Field_Request_Association]  WITH CHECK ADD  CONSTRAINT [FK_PSA_Field_Request_Association_PSA_Request] FOREIGN KEY([id_request])
REFERENCES [dbo].[PSA_Request] ([id_request])
GO
ALTER TABLE [dbo].[PSA_Field_Request_Association] CHECK CONSTRAINT [FK_PSA_Field_Request_Association_PSA_Request]
GO
ALTER TABLE [dbo].[PSA_Notification]  WITH CHECK ADD  CONSTRAINT [FK_notifications_requests] FOREIGN KEY([id_request])
REFERENCES [dbo].[PSA_Request] ([id_request])
GO
ALTER TABLE [dbo].[PSA_Notification] CHECK CONSTRAINT [FK_notifications_requests]
GO
ALTER TABLE [dbo].[PSA_Notification]  WITH CHECK ADD  CONSTRAINT [FK_notifications_users] FOREIGN KEY([id_user])
REFERENCES [dbo].[PSA_User] ([id_user])
GO
ALTER TABLE [dbo].[PSA_Notification] CHECK CONSTRAINT [FK_notifications_users]
GO
ALTER TABLE [dbo].[PSA_Request]  WITH CHECK ADD  CONSTRAINT [FK_PSA_Request_CTL_Process] FOREIGN KEY([id_process])
REFERENCES [dbo].[CTL_Process] ([id_process])
GO
ALTER TABLE [dbo].[PSA_Request] CHECK CONSTRAINT [FK_PSA_Request_CTL_Process]
GO
ALTER TABLE [dbo].[PSA_Request]  WITH CHECK ADD  CONSTRAINT [FK_PSA_Request_CTL_Section] FOREIGN KEY([id_section])
REFERENCES [dbo].[CTL_Section] ([id_section])
GO
ALTER TABLE [dbo].[PSA_Request] CHECK CONSTRAINT [FK_PSA_Request_CTL_Section]
GO
ALTER TABLE [dbo].[PSA_Request]  WITH CHECK ADD  CONSTRAINT [FK_requests_users] FOREIGN KEY([id_user])
REFERENCES [dbo].[PSA_User] ([id_user])
GO
ALTER TABLE [dbo].[PSA_Request] CHECK CONSTRAINT [FK_requests_users]
GO
/****** Object:  Trigger [dbo].[TR_Mail_Users_Insert]    Script Date: 05/02/2017 03:27:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		 Melvin Ricardo Nuñez
-- Create date:  27/01/2017
-- Description:	 Ingresar informacion para envio de correo
-- =============================================
CREATE TRIGGER [dbo].[TR_Mail_Users_Insert]
   ON  [dbo].[PSA_User] 
   AFTER  INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @mmCorreo nvarchar(50)
	DECLARE @mmFrom   nvarchar(50)
	DECLARE @mmLogin  nvarchar(50)
	DECLARE @mmId_user int 
	DECLARE @mmScope int
	DECLARE	@return_value nvarchar(40)
	DECLARE	@mmHint nvarchar(40)
	SET @mmId_user =  @@IDENTITY
	SET @mmCorreo = (SELECT PSA_User.email FROM PSA_User WHERE id_user = @mmId_user)
	SET @mmLogin = (SELECT PSA_User.login FROM PSA_User WHERE id_user = @mmId_user)
	SET @mmScope = (SELECT PSA_User.scope FROM PSA_User WHERE id_user = @mmId_user)
	SET @mmFrom = 'mrnrades11@hotmail.es'
	DECLARE @mmValSeccion table(hint nvarchar(50))

	 INSERT INTO @mmValSeccion (hint)
		 EXEC	@return_value = [dbo].[CTL_NewSession] @mmLogin = @mmLogin, @mmNivelSeguridad = @mmScope, @mmSubject = 'Usuario Nuevo'

    SET @mmHint = (SELECT hint from @mmValSeccion)


		   INSERT INTO [dbo].[PSA_Mails_To_Be_Sent]
           ([from]
      ,[to]
      ,[cc]
      ,[bcc]
      ,[subject]
      ,[body]
      ,[is_html_format]
      ,[priority]
      ,[id_user]
      ,[date_request]
      ,[date_send]
      ,[id_process]
      ,[id_task]
      ,[hint])
     VALUES
           (@mmFrom
           ,@mmCorreo
           ,''
           ,''
           ,'Nuevo Usuario'
           ,'Cuerpo'
           ,1
           ,0
           ,1
           ,GETDATE()
           ,GETDATE()
           ,1
           ,@mmId_user
           ,@mmHint)
		    IF (@@ROWCOUNT > 0) 
			    SELECT @@IDENTITY 
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador unico de la tabla de notificaciones' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'id_notification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla de solicitudes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'id_request'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador unico de la tabla de usuarios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'id_user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mensaje de Notificacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que la notificacion fue enviada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Notification', @level2type=N'COLUMN',@level2name=N'sent_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de tabla el cual se encriptara los datos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Registry_Control', @level2type=N'COLUMN',@level2name=N'tbl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador de registro el cual se encriptara ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Registry_Control', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave para desencriptar  cada registro especifico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_Registry_Control', @level2type=N'COLUMN',@level2name=N'hash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de usuario ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'id_user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de usuario ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'login'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contraseña personal de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo electronico de usuario ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nivel de seguridad o tipo de acceso que cuenta el usuario en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'scope'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creacion de usuario ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'creation_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se modifico o se elimino el usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'deletion_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe si el usario esta Activo o Desactivo en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave unica para poder entrar al sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSA_User', @level2type=N'COLUMN',@level2name=N'hint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 290
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 328
               Bottom = 136
               Right = 533
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 571
               Bottom = 136
               Right = 741
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ep"
            Begin Extent = 
               Top = 138
               Left = 276
               Bottom = 268
               Right = 446
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "f_1"
            Begin Extent = 
               Top = 138
               Left = 484
               Bottom = 268
               Right = 700
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PSA_Documentation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PSA_Documentation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PSA_Documentation'
GO
