
----------------------*****************************************************
----------------------*****************************************************
----------------------*****************************************************
----------------------*****************************************************
----------------------*****************************************************
----------------------*****************************************************VERSIUNE Noua
----------------------*****************************************************
----------------------*****************************************************
----------------------*****************************************************
----------------------*****************************************************
----------------------*****************************************************
----------------------*****************************************************
----------------------*****************************************************

USE [Test]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Test]
@NumeTabela nvarchar(200)
AS
BEGIN
	SET NOCOUNT ON;
		BEGIN TRY
	IF (@NumeTabela = '[dbo].[tblAdmCrossDockingRoutes_Yesterday]' OR @NumeTabela = 'tblAdmCrossDockingRoutes_Yesterday' OR @NumeTabela = '[tblAdmCrossDockingRoutes_Yesterday]' )
			BEGIN
					TRUNCATE TABLE [dbo].[tblAdmCrossDockingRoutes]

						SET IDENTITY_INSERT  [dbo].[tblAdmCrossDockingRoutes] ON;
						--ALTER TABLE [dbo].[tblAdmCrossDockingRoutes] DROP CONSTRAINT [DF_tblAdmCrossDockingRoutes_InsertDate];
						--ALTER TABLE [dbo].[tblAdmCrossDockingRoutes] DROP  CONSTRAINT [DF_tblAdmCrossDockingRoutes_Active];

					BEGIN TRY
									INSERT INTO [dbo].[tblAdmCrossDockingRoutes] ([ID]
											   ,[Path]
											   ,[idAdmWarehouseSource]
											   ,[idAdmWarehouseDestination]
											   ,[StartInterval]
											   ,[StopInterval]
											   ,[ArrivalTime]
											   ,[StartDay]
											   ,[StopDay]
											   ,[ArrivalDay]
											   ,[TotalMinutes]
											   ,[InsertDate]
											   ,[Active]
											   ,[SubRouteId]
											   ,[LeaveTime]
											   ,[LeaveDay]
											   ,[idAdmGeographicalZoneFirst]
											   ,[FirstZoneId]
											   ,[RunId]
											   ,[idDuplicateRoute]
											   ,[WarehousesInTransit]
											   ,[Warehouses]
											   ,[idAdmGeographicalZoneRequirement]
											   ,[idAdmAppointmentFirst]
											   ,[HUBWarehouseName]
											   ,[idHUBWarehouse]
											   ,[idLastNationalZone]
											   ,[XmlDetails])
									SELECT [ID]
											   ,[Path]
											   ,[idAdmWarehouseSource]
											   ,[idAdmWarehouseDestination]
											   ,[StartInterval]
											   ,[StopInterval]
											   ,[ArrivalTime]
											   ,[StartDay]
											   ,[StopDay]
											   ,[ArrivalDay]
											   ,[TotalMinutes]
											   ,[InsertDate]
											   ,[Active]
											   ,[SubRouteId]
											   ,[LeaveTime]
											   ,[LeaveDay]
											   ,[idAdmGeographicalZoneFirst]
											   ,[FirstZoneId]
											   ,[RunId]
											   ,[idDuplicateRoute]
											   ,[WarehousesInTransit]
											   ,[Warehouses]
											   ,[idAdmGeographicalZoneRequirement]
											   ,[idAdmAppointmentFirst]
											   ,[HUBWarehouseName]
											   ,[idHUBWarehouse]
											   ,[idLastNationalZone]
											   ,[XmlDetails]
									FROM [dbo].[tblAdmCrossDockingRoutes_Yesterday] WITH(NOLOCK);
	
							SET IDENTITY_INSERT  [dbo].[tblAdmCrossDockingRoutes] OFF;
							

						
		

				
			
			END TRY
				BEGIN CATCH
			SELECT  
			CONCAT(ERROR_NUMBER(), ' -- ', ERROR_MESSAGE()) AS ErrorNumber,
			CONCAT(ERROR_SEVERITY(), ' -- ', ERROR_MESSAGE()) AS ErrorSeverity,
			CONCAT(ERROR_STATE(), ' -- ', ERROR_MESSAGE()) AS ErrorState,
			CONCAT(ERROR_PROCEDURE(), ' -- ', ERROR_MESSAGE()) AS ErrorProcedure,
			CONCAT(ERROR_LINE(), ' -- ', ERROR_MESSAGE()) AS ErrorLine,
			CONCAT(ERROR_MESSAGE(), ' -- ', ERROR_MESSAGE()) AS ErrorMessage ;			 
	END CATCH;
END

	ELSE IF(@NumeTabela = '[dbo].[tblAdmCrossDockingRoutes_TwoDaysAgo]' OR @NumeTabela = 'tblAdmCrossDockingRoutes_TwoDaysAgo'  OR @NumeTabela = '[tblAdmCrossDockingRoutes_TwoDaysAgo]' )
			BEGIN
				TRUNCATE TABLE [dbo].[tblAdmCrossDockingRoutes]

						SET IDENTITY_INSERT  [dbo].[tblAdmCrossDockingRoutes] ON;
						--ALTER TABLE [dbo].[tblAdmCrossDockingRoutes] DROP CONSTRAINT [DF_tblAdmCrossDockingRoutes_InsertDate];
						--ALTER TABLE [dbo].[tblAdmCrossDockingRoutes] DROP  CONSTRAINT [DF_tblAdmCrossDockingRoutes_Active];

							BEGIN TRY	
									INSERT INTO [dbo].[tblAdmCrossDockingRoutes] ([ID]
											   ,[Path]
											   ,[idAdmWarehouseSource]
											   ,[idAdmWarehouseDestination]
											   ,[StartInterval]
											   ,[StopInterval]
											   ,[ArrivalTime]
											   ,[StartDay]
											   ,[StopDay]
											   ,[ArrivalDay]
											   ,[TotalMinutes]
											   ,[InsertDate]
											   ,[Active]
											   ,[SubRouteId]
											   ,[LeaveTime]
											   ,[LeaveDay]
											   ,[idAdmGeographicalZoneFirst]
											   ,[FirstZoneId]
											   ,[RunId]
											   ,[idDuplicateRoute]
											   ,[WarehousesInTransit]
											   ,[Warehouses]
											   ,[idAdmGeographicalZoneRequirement]
											   ,[idAdmAppointmentFirst]
											   ,[HUBWarehouseName]
											   ,[idHUBWarehouse]
											   ,[idLastNationalZone]
											   ,[XmlDetails])
									SELECT [ID]
											   ,[Path]
											   ,[idAdmWarehouseSource]
											   ,[idAdmWarehouseDestination]
											   ,[StartInterval]
											   ,[StopInterval]
											   ,[ArrivalTime]
											   ,[StartDay]
											   ,[StopDay]
											   ,[ArrivalDay]
											   ,[TotalMinutes]
											   ,[InsertDate]
											   ,[Active]
											   ,[SubRouteId]
											   ,[LeaveTime]
											   ,[LeaveDay]
											   ,[idAdmGeographicalZoneFirst]
											   ,[FirstZoneId]
											   ,[RunId]
											   ,[idDuplicateRoute]
											   ,[WarehousesInTransit]
											   ,[Warehouses]
											   ,[idAdmGeographicalZoneRequirement]
											   ,[idAdmAppointmentFirst]
											   ,[HUBWarehouseName]
											   ,[idHUBWarehouse]
											   ,[idLastNationalZone]
											   ,[XmlDetails]
									FROM [dbo].[tblAdmCrossDockingRoutes_TwoDaysAgo] WITH(NOLOCK);
	
							SET IDENTITY_INSERT  [dbo].[tblAdmCrossDockingRoutes] OFF;
							

			
			END TRY
				BEGIN CATCH
			SELECT  
			CONCAT(ERROR_NUMBER(), ' -- ', ERROR_MESSAGE()) AS ErrorNumber,
			CONCAT(ERROR_SEVERITY(), ' -- ', ERROR_MESSAGE()) AS ErrorSeverity,
			CONCAT(ERROR_STATE(), ' -- ', ERROR_MESSAGE()) AS ErrorState,
			CONCAT(ERROR_PROCEDURE(), ' -- ', ERROR_MESSAGE()) AS ErrorProcedure,
			CONCAT(ERROR_LINE(), ' -- ', ERROR_MESSAGE()) AS ErrorLine,
			CONCAT(ERROR_MESSAGE(), ' -- ', ERROR_MESSAGE()) AS ErrorMessage ;			 
	END CATCH;
END

	ELSE IF (@NumeTabela = '[dbo].[tblAdmCrossDockingRoutes_ThreeDaysAgo]' OR @NumeTabela = 'tblAdmCrossDockingRoutes_ThreeDaysAgo'  OR @NumeTabela = '[tblAdmCrossDockingRoutes_ThreeDaysAgo]' )
			BEGIN
			TRUNCATE TABLE [dbo].[tblAdmCrossDockingRoutes]

						SET IDENTITY_INSERT  [dbo].[tblAdmCrossDockingRoutes] ON;
						--ALTER TABLE [dbo].[tblAdmCrossDockingRoutes] DROP CONSTRAINT [DF_tblAdmCrossDockingRoutes_InsertDate];
						--ALTER TABLE [dbo].[tblAdmCrossDockingRoutes] DROP  CONSTRAINT [DF_tblAdmCrossDockingRoutes_Active];
						BEGIN TRY
	
									INSERT INTO [dbo].[tblAdmCrossDockingRoutes] ([ID]
											   ,[Path]
											   ,[idAdmWarehouseSource]
											   ,[idAdmWarehouseDestination]
											   ,[StartInterval]
											   ,[StopInterval]
											   ,[ArrivalTime]
											   ,[StartDay]
											   ,[StopDay]
											   ,[ArrivalDay]
											   ,[TotalMinutes]
											   ,[InsertDate]
											   ,[Active]
											   ,[SubRouteId]
											   ,[LeaveTime]
											   ,[LeaveDay]
											   ,[idAdmGeographicalZoneFirst]
											   ,[FirstZoneId]
											   ,[RunId]
											   ,[idDuplicateRoute]
											   ,[WarehousesInTransit]
											   ,[Warehouses]
											   ,[idAdmGeographicalZoneRequirement]
											   ,[idAdmAppointmentFirst]
											   ,[HUBWarehouseName]
											   ,[idHUBWarehouse]
											   ,[idLastNationalZone]
											   ,[XmlDetails])
									SELECT [ID]
											   ,[Path]
											   ,[idAdmWarehouseSource]
											   ,[idAdmWarehouseDestination]
											   ,[StartInterval]
											   ,[StopInterval]
											   ,[ArrivalTime]
											   ,[StartDay]
											   ,[StopDay]
											   ,[ArrivalDay]
											   ,[TotalMinutes]
											   ,[InsertDate]
											   ,[Active]
											   ,[SubRouteId]
											   ,[LeaveTime]
											   ,[LeaveDay]
											   ,[idAdmGeographicalZoneFirst]
											   ,[FirstZoneId]
											   ,[RunId]
											   ,[idDuplicateRoute]
											   ,[WarehousesInTransit]
											   ,[Warehouses]
											   ,[idAdmGeographicalZoneRequirement]
											   ,[idAdmAppointmentFirst]
											   ,[HUBWarehouseName]
											   ,[idHUBWarehouse]
											   ,[idLastNationalZone]
											   ,[XmlDetails]
									FROM [dbo].[tblAdmCrossDockingRoutes_ThreeDaysAgo] WITH(NOLOCK);
	
							SET IDENTITY_INSERT  [dbo].[tblAdmCrossDockingRoutes] OFF;
							
			
						END TRY
							BEGIN CATCH
						SELECT  
						CONCAT(ERROR_NUMBER(), ' -- ', ERROR_MESSAGE()) AS ErrorNumber,
						CONCAT(ERROR_SEVERITY(), ' -- ', ERROR_MESSAGE()) AS ErrorSeverity,
						CONCAT(ERROR_STATE(), ' -- ', ERROR_MESSAGE()) AS ErrorState,
						CONCAT(ERROR_PROCEDURE(), ' -- ', ERROR_MESSAGE()) AS ErrorProcedure,
						CONCAT(ERROR_LINE(), ' -- ', ERROR_MESSAGE()) AS ErrorLine,
						CONCAT(ERROR_MESSAGE(), ' -- ', ERROR_MESSAGE()) AS ErrorMessage ;			 
				END CATCH;
			END
	END TRY
	BEGIN CATCH
			SELECT  
			CONCAT(ERROR_NUMBER(), ' -- ', ERROR_MESSAGE()) AS ErrorNumber,
			CONCAT(ERROR_SEVERITY(), ' -- ', ERROR_MESSAGE()) AS ErrorSeverity,
			CONCAT(ERROR_STATE(), ' -- ', ERROR_MESSAGE()) AS ErrorState,
			CONCAT(ERROR_PROCEDURE(), ' -- ', ERROR_MESSAGE()) AS ErrorProcedure,
			CONCAT(ERROR_LINE(), ' -- ', ERROR_MESSAGE()) AS ErrorLine,
			CONCAT(ERROR_MESSAGE(), ' -- ', ERROR_MESSAGE()) AS ErrorMessage ;			 
	END CATCH;
END
						


---DROP PROC usp_Test 


---EXEC [dbo].[usp_Test] @NumeTabela = '[dbo].[tblAdmCrossDockingRoutes_ThreeDaysAgo]'


--SELECT * FROM [dbo].[tblAdmCrossDockingRoutes_Yesterday]
--SELECT * FROM [dbo].[tblAdmCrossDockingRoutes_ThreeDaysAgo]
--SELECT * FROM  [dbo].[tblAdmCrossDockingRoutes_TwoDaysAgo]

---SELECT * FROM [dbo].[tblAdmCrossDockingRoutes]
--TRUNCATE TABLE  [dbo].[tblAdmCrossDockingRoutes]

--INSERT INTO [dbo].[tblAdmCrossDockingRoutes_ThreeDaysAgo]
--SELECT * FROM [dbo].[tblAdmCrossDockingRoutes_Yesterday]

--INSERT INTO [dbo].[tblAdmCrossDockingRoutes_TwoDaysAgo]
--SELECT * FROM [dbo].[tblAdmCrossDockingRoutes_Yesterday]

--SELECT * FROM [dbo].[tblAdmCrossDockingRoutes_Yesterday]
--SELECT * FROM [dbo].[tblAdmCrossDockingRoutes_ThreeDaysAgo]
--SELECT * FROM [dbo].[tblAdmCrossDockingRoutes_TwoDaysAgo]


--TRUNCATE TABLE [dbo].[tblAdmCrossDockingRoutes_ThreeDaysAgo]