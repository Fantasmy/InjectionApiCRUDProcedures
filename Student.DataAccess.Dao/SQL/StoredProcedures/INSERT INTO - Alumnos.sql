-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jenny
-- Create date: 2018-18-07
-- Description:	Inserts new alumno into Alumnos table
-- =============================================
CREATE PROCEDURE [dbo].[INSERT INTO - Alumnos]   
	-- Add the parameters for the stored procedure here
	@Id			int,
	@Guid		uniqueidentifier,
	@Nombre		nvarchar(50),
	@Apellidos	nvarchar(50),
	@Dni		nvarchar(14),
	@Edad		int,
	@Nacimiento	date,
	@Registro	date 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Alumnos (Id, Guid, Nombre, Apellidos, Dni, Edad, Nacimiento, Registro)
	SELECT @Id, @Guid, @Nombre, @Apellidos, @Dni, @Edad, @Nacimiento, @Registro
END
GO
