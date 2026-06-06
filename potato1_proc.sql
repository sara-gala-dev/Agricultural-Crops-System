USE [potatos]
GO
--------------------------------------------------------------------------------------------------------------------------------------
--------Insert procedure for " Persons  " table
CREATE PROCEDURE dbo.InsertInto_Persons
 
	(
    --@Person_id  int ,
	@Person_name nvarchar(150) =NULL,
	@Person_SSN nvarchar(50) =null,
	@phone nvarchar(50) =NULL,
	@mobile nvarchar(50) =NULL,
	@address nvarchar(150) =NULL,
	@city nvarchar(50)  =null, 
	@Person_type nvarchar(20) ,
	@notes nvarchar(max) =NULL
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.Persons(
    --Person_id   ,
	Person_name ,
	Person_SSN ,
	phone ,
	mobile ,
	[address] ,
	city , 
	Person_type ,
	notes 
  )
 values (
   -- @Person_id   ,
	@Person_name ,
	@Person_SSN ,
	@phone ,
	@mobile ,
	@address ,
	@city , 
	@Person_type ,
	@notes 
	)

END
GO
--===================================
-- Update procedure for "Persons" table
CREATE PROCEDURE dbo.Update_Persons
      (
    @Person_id  int ,
	@Person_name nvarchar(150) =NULL,
	@Person_SSN nvarchar(50) =null,
	@phone nvarchar(50) =NULL,
	@mobile nvarchar(50) =NULL,
	@address nvarchar(150) =NULL,
	@city nvarchar(50)  =null, 
	@Person_type nvarchar(20) ,
	@notes nvarchar(max) =NULL
	)
AS

      UPDATE dbo.Persons
      SET 
   	Person_name =@Person_name,
	Person_SSN=@Person_SSN ,
	phone =@phone ,
	mobile =@mobile,
	[address] =@address,
	city =@city, 
	Person_type =@Person_type,
	notes =@notes
      WHERE  
     Person_id    = @Person_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "Persons" table

CREATE procedure  dbo.Delete_Persons
  @Person_id int
AS
BEGIN

	DELETE FROM Persons
	WHERE Person_id=@Person_id

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_Persons
AS 
BEGIN
SELECT  * FROM Persons          
END
go
------------------------------------------------------------------------
create PROC SelectByName_Persons (@Person_name nvarchar(150))
AS 
BEGIN
SELECT  * FROM Persons where
    	Person_name =@Person_name    
END
go
------------------------------------------------------------------------
create PROC SelectByType_Persons (@Person_type nvarchar(20) )
AS 
BEGIN
SELECT  * FROM Persons where
    	Person_type =@Person_type    
END
go
------------------------------------------------------------------------
--create PROC SelectAll_Person_Type
--AS 
--BEGIN
--SELECT  * FROM Person_Type          
--END
--go
------------------------------------------------------------------------
--------Insert procedure for " Emp  " table
create PROCEDURE dbo.InsertInto_Emp
 
	(
   -- @Emp_id  int ,
	@Emp_name nvarchar(150) =NULL,
	@Emp_SSN nvarchar(50) =null,
	@phone nvarchar(50) =NULL,
	@mobile nvarchar(50) =NULL,
	@address nvarchar(150) =NULL,
	@city nvarchar(50)  =null, 
	@Emp_type nvarchar(20) ,
	@notes nvarchar(max) =NULL
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.Emp(
  --  Emp_id   ,
	Emp_name ,
	Emp_SSN ,
	phone ,
	mobile ,
	[address] ,
	city , 
	Emp_type ,
	notes 
  )
 values (
    --@Emp_id  ,    
	@Emp_name ,
	@Emp_SSN ,
	@phone ,
	@mobile ,
	@address ,
	@city , 
	@Emp_type ,
	@notes 
	)

END
GO
--===================================
-- Update procedure for "Emp" table
CREATE PROCEDURE dbo.Update_Emp
      (
    @Emp_id  int ,
	@Emp_name nvarchar(150) =NULL,
	@Emp_SSN nvarchar(50) =null,
	@phone nvarchar(50) =NULL,
	@mobile nvarchar(50) =NULL,
	@address nvarchar(150) =NULL,
	@city nvarchar(50)  =null, 
	@Emp_type nvarchar(20) ,
	@notes nvarchar(max) =NULL
	)
AS

      UPDATE dbo.Emp
      SET 
   	Emp_name =@Emp_name,
	Emp_SSN=@Emp_SSN ,
	phone =@phone ,
	mobile =@mobile,
	[address] =@address,
	city =@city, 
	Emp_type =@Emp_type,
	notes =@notes
      WHERE  
     Emp_id    = @Emp_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "Emp" table
CREATE procedure  dbo.Delete_Emp
  @Emp_id int
AS
BEGIN

	DELETE FROM Emp
	WHERE Emp_id=@Emp_id

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_Emp
AS 
BEGIN
SELECT  * FROM Emp          
END
go
------------------------------------------------------------------------
create PROC SelectByName_Emp (@Emp_name nvarchar(150))
AS 
BEGIN
SELECT  * FROM Emp where
    	Emp_name =@Emp_name    
END
go
------------------------------------------------------------------------
create PROC SelectByType_Emp (@Emp_type nvarchar(20) )
AS 
BEGIN
SELECT  * FROM Emp where
    	Emp_type =@Emp_type    
END
go
------------------------------------------------------------------------
--create PROC SelectAll_Emp_Type
--AS 
--BEGIN
--SELECT  * FROM Emp_Type          
--END
--go
--------------------------------------------------------------------------
--------Insert procedure for " potato_Types  " table
create PROCEDURE dbo.InsertInto_potato_Types
 
	(
	@potato_Types_name nvarchar(150) ,
	@potato_session nvarchar(50) =null,
	@notes nvarchar(150) =NULL
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.potato_Types(
    potato_Types_name  ,
	potato_session ,
	notes 
  )
 values (
    @potato_Types_name  ,
	@potato_session ,
	@notes 
	)

END
GO
--===================================
-- Update procedure for "potato_Types" table
CREATE PROCEDURE dbo.Update_potato_Types
      (
    @potato_Types_id  int ,
	@potato_Types_name nvarchar(150) ,
	@potato_session nvarchar(50) =null,
	@notes nvarchar(150) =NULL
	)
AS

      UPDATE dbo.potato_Types
      SET 
   	potato_Types_name =@potato_Types_name ,
	potato_session =@potato_session ,
	notes = @notes
      WHERE  
     potato_Types_id    = @potato_Types_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "potato_Types" table
CREATE procedure  dbo.Delete_potato_Types
  @potato_Types_id int
AS
BEGIN

	DELETE FROM potato_Types
	WHERE potato_Types_id=@potato_Types_id

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_potato_Types
AS 
BEGIN
SELECT  * FROM potato_Types          
END
go
------------------------------------------------------------------------
--------Insert procedure for " monthly_salary_employee  " table
create PROCEDURE dbo.InsertInto_monthly_salary_employee
 
	(
	@Salary_date datetime ,
	@Base_Salary decimal (18, 2) ,
	@Incentives decimal (18, 2) =null , 
	@Rewords decimal (18, 2) =null , 
	@Add_others decimal (18, 2) =null,
	@Discount_others decimal (18, 2) =null,
	@Total_Salary decimal (18, 2) ,
	@Salary_ok varchar(10) 
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.monthly_salary_employee(
    Salary_date  ,
	Base_Salary  ,
	Incentives  , 
	Rewords  , 
	Add_others ,
	Discount_others ,
	Total_Salary  ,
	Salary_ok  
  )
 values (
    @Salary_date  ,
	@Base_Salary  ,
	@Incentives  , 
	@Rewords  , 
	@Add_others ,
	@Discount_others ,
	@Total_Salary  ,
	@Salary_ok  
	)

END
GO
--===================================
-- Update procedure for "monthly_salary_employee" table
CREATE PROCEDURE dbo.Update_monthly_salary_employee
      (
    @monthly_salary_employee_id int  ,
	@Salary_date datetime ,
	@Base_Salary decimal (18, 2) ,
	@Incentives decimal (18, 2) =null , 
	@Rewords decimal (18, 2) =null , 
	@Add_others decimal (18, 2) =null,
	@Discount_others decimal (18, 2) =null,
	@Total_Salary decimal (18, 2) ,
	@Salary_ok varchar(10) 
	)
AS

      UPDATE dbo.monthly_salary_employee
      SET 
   	Salary_date= @Salary_date ,
	Base_Salary =@Base_Salary ,
	Incentives =@Incentives , 
	Rewords =@Rewords , 
	Add_others =@Add_others,
	Discount_others =@Discount_others,
	Total_Salary =@Total_Salary ,
	Salary_ok =@Salary_ok 
      WHERE  
     monthly_salary_employee_id    = @monthly_salary_employee_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "monthly_salary_employee" table
CREATE procedure  dbo.Delete_monthly_salary_employee
  @monthly_salary_employee_id int
AS
BEGIN

	DELETE FROM monthly_salary_employee
	WHERE
     monthly_salary_employee_id    = @monthly_salary_employee_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_monthly_salary_employee
AS 
BEGIN
SELECT  * FROM monthly_salary_employee          
END
go
------------------------------------------------------------------------
--------Insert procedure for " weekly_salary_employee  " table
create PROCEDURE dbo.InsertInto_weekly_salary_employee
 
	(
	@Emp_id  int ,
	@Salary_date datetime ,
	@Base_Salary decimal (18, 2) ,
	@No_Of_days int ,
	@Add_others decimal (18, 2) =null,
	@Discount_others decimal (18, 2) =null,
	@Total_Salary decimal (18, 2) ,
	@Salary_ok varchar(10)  
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.weekly_salary_employee(
    Emp_id   ,
	Salary_date  ,
	Base_Salary ,
	No_Of_days ,
	Add_others ,
	Discount_others ,
	Total_Salary  ,
	Salary_ok 
  )
 values (
	@Emp_id   ,
	@Salary_date  ,
	@Base_Salary ,
	@No_Of_days ,
	@Add_others ,
	@Discount_others ,
	@Total_Salary  ,
	@Salary_ok  
	)

END
GO
--===================================
-- Update procedure for "weekly_salary_employee" table
CREATE PROCEDURE dbo.Update_weekly_salary_employee
      (
    @weekly_salary_employee_id int ,
	@Emp_id  int ,
	@Salary_date datetime ,
	@Base_Salary decimal (18, 2) ,
	@No_Of_days int ,
	@Add_others decimal (18, 2) =null,
	@Discount_others decimal (18, 2) =null,
	@Total_Salary decimal (18, 2) ,
	@Salary_ok varchar(10)  
	)
AS

      UPDATE dbo.weekly_salary_employee
      SET 
	Emp_id =@Emp_id  ,
   	Salary_date =@Salary_date ,
	Base_Salary  =@Base_Salary,
	No_Of_days=@No_Of_days ,
	Add_others =@Add_others,
	Discount_others =@Discount_others,
	Total_Salary  =@Total_Salary,
	Salary_ok  =@Salary_ok
      WHERE  
     weekly_salary_employee_id    = @weekly_salary_employee_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "weekly_salary_employee" table
CREATE procedure  dbo.Delete_weekly_salary_employee
  @weekly_salary_employee_id int
AS
BEGIN

	DELETE FROM weekly_salary_employee
	WHERE
    weekly_salary_employee_id    = @weekly_salary_employee_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_weekly_salary_employee
AS 
BEGIN
SELECT  * FROM weekly_salary_employee          
END
go
-----------------------------------------------------
--------Insert procedure for " Daily_salary_employee  " table
create PROCEDURE dbo.InsertInto_Daily_salary_employee
 
	(
	@Emp_id  int ,
	@Salary_date datetime ,
	@Base_Salary decimal (18, 2) ,
	@Add_others decimal (18, 2) =null,
	@Discount_others decimal (18, 2) =null,
	@Total_Salary decimal (18, 2) ,
	@Salary_ok varchar(10)  
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.Daily_salary_employee(
    Emp_id   ,
	Salary_date  ,
	Base_Salary ,
	Add_others ,
	Discount_others ,
	Total_Salary  ,
	Salary_ok 
  )
 values (
	@Emp_id   ,
	@Salary_date  ,
	@Base_Salary ,
	@Add_others ,
	@Discount_others ,
	@Total_Salary  ,
	@Salary_ok  
	)

END
GO
--===================================
-- Update procedure for "Daily_salary_employee" table
CREATE PROCEDURE dbo.Update_Daily_salary_employee
      (
    @Daily_salary_employee_id int ,
	@Emp_id  int ,
	@Salary_date datetime ,
	@Base_Salary decimal (18, 2) ,
	@Add_others decimal (18, 2) =null,
	@Discount_others decimal (18, 2) =null,
	@Total_Salary decimal (18, 2) ,
	@Salary_ok varchar(10)  
	)
AS

      UPDATE dbo.Daily_salary_employee
      SET 
	Emp_id =@Emp_id  ,
   	Salary_date =@Salary_date ,
	Base_Salary  =@Base_Salary,
	Add_others =@Add_others,
	Discount_others =@Discount_others,
	Total_Salary  =@Total_Salary,
	Salary_ok  =@Salary_ok
      WHERE  
     Daily_salary_employee_id    = @Daily_salary_employee_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "Daily_salary_employee" table
CREATE procedure  dbo.Delete_Daily_salary_employee
  @Daily_salary_employee_id int
AS
BEGIN

	DELETE FROM Daily_salary_employee
	WHERE
    Daily_salary_employee_id    = @Daily_salary_employee_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_Daily_salary_employee
AS 
BEGIN
SELECT  * FROM Daily_salary_employee          
END
go
------------------------------------------------------------------------
----------Insert procedure for " Income_Total  " table
--create PROCEDURE dbo.InsertInto_Income_Total
 
--	(
--   -- @Income_data datetime ,
--    @Income_Total decimal (18 ,2) 
--	)
--AS
--BEGIN
--	SET NOCOUNT ON;
--    -- Insert statements for procedure here
--INSERT INTO dbo.Income_Total(
--    --Income_data  ,
--    Income_Total 
--  )
-- values (
--	--@Income_data  ,
--    @Income_Total 
--	)

--END
--GO
----===================================
---- Update procedure for "Income_Total" table
--CREATE PROCEDURE dbo.Update_Income_Total
--      (
--    @Income_ID int   ,
--   -- @Income_data datetime ,
--    @Income_Total decimal (18 ,2) 
--	)
--AS

--      UPDATE dbo.Income_Total
--      SET 
--	--Income_data =@Income_data ,
--    Income_Total =@Income_Total
--      WHERE  
--     Income_ID    = @Income_ID                  

--GO
-----------------------------------------------------------------
----===========================================
---- Delete Procedure for "Income_Total" table

--CREATE procedure  dbo.Delete_Income_Total
--  @Income_ID int
--AS
--BEGIN

--	DELETE FROM Income_Total
--	WHERE
--     Income_ID    = @Income_ID                  

--END
--GO
--------------------------------------------------------------------------------------
--create PROC SelectAll_Income_Total
--AS 
--BEGIN
--SELECT  * FROM Income_Total          
--END
--go
--------------------------------------------------------------------------
----------Insert procedure for " outcome_Total  " table
--create PROCEDURE dbo.InsertInto_outcome_Total
 
--	(
--   -- @outcome_data datetime ,
--    @outcome_Total decimal (18 ,2) 
--	)
--AS
--BEGIN
--	SET NOCOUNT ON;
--    -- Insert statements for procedure here
--INSERT INTO dbo.outcome_Total(
--    --outcome_data  ,
--    outcome_Total 
--  )
-- values (
--	--@outcome_data  ,
--    @outcome_Total 
--	)

--END
--GO
----===================================
---- Update procedure for "outcome_Total" table
--CREATE PROCEDURE dbo.Update_outcome_Total
--      (
--    @outcome_ID int   ,
--   -- @outcome_data datetime ,
--    @outcome_Total decimal (18 ,2) 
--	)
--AS

--      UPDATE dbo.outcome_Total
--      SET 
--	--outcome_data =@outcome_data ,
--    outcome_Total =@outcome_Total
--      WHERE  
--     outcome_ID    = @outcome_ID                  

--GO
-----------------------------------------------------------------
----===========================================
---- Delete Procedure for "outcome_Total" table

--CREATE procedure  dbo.Delete_outcome_Total
--  @outcome_ID int
--AS
--BEGIN

--	DELETE FROM outcome_Total
--	WHERE
--     outcome_ID    = @outcome_ID                  

--END
--GO
--------------------------------------------------------------------------------------
--create PROC SelectAll_outcome_Total
--AS 
--BEGIN
--SELECT  * FROM outcome_Total          
--END
--go
------------------------------------------------------------------------------------
--------Insert procedure for " Income_Details  " table
create PROCEDURE dbo.InsertInto_Income_Details
 
	(
    @Income_name nvarchar(300) ,
    @Income_cost decimal (18 ,2) ,
    @Income_from nvarchar(50) =null,
    @Income_data datetime ,
    @notes nvarchar(max) =NULL
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.Income_Details(
    Income_name ,
    Income_cost  ,
    Income_from ,
    Income_data ,
    notes  
  )
 values (
    @Income_name ,
    @Income_cost  ,
    @Income_from ,
    @Income_data ,
    @notes  
	)

END
GO
--===================================
-- Update procedure for "Income_Details" table
CREATE PROCEDURE dbo.Update_Income_Details
      (
    @Income_Details_id int ,
    @Income_name nvarchar(300) ,
    @Income_cost decimal (18 ,2) ,
    @Income_from nvarchar(50) =null,
    @Income_data datetime ,
    @notes nvarchar(max) =NULL
	)
AS

      UPDATE dbo.Income_Details
      SET 
	Income_name =@Income_name,
    Income_cost =@Income_cost ,
    Income_from =@Income_from,
    Income_data =@Income_data,
    notes  =@notes
      WHERE  
     Income_Details_id    = @Income_Details_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "Income_Details" table

CREATE procedure  dbo.Delete_Income_Details
  @Income_Details_id int
AS
BEGIN

	DELETE FROM Income_Details
	WHERE
     Income_Details_id    = @Income_Details_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_Income_Details
AS 
BEGIN
SELECT  * FROM Income_Details          
END
go
------------------------------------------------------------------------
--------Insert procedure for " outcome_Details  " table
create PROCEDURE dbo.InsertInto_outcome_Details
 
	(
    @outcome_name nvarchar(300) ,
    @outcome_cost decimal (18 ,2) ,
    @outcome_to nvarchar(50) =null,
    @outcome_data datetime ,
    @notes nvarchar(max) =NULL
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.outcome_Details(
   outcome_name ,
    outcome_cost  ,
    outcome_to ,
    outcome_data ,
    notes  
  )
 values (
    @outcome_name ,
    @outcome_cost  ,
    @outcome_to ,
    @outcome_data ,
    @notes  
	)

END
GO
--===================================
-- Update procedure for "outcome_Details" table
CREATE PROCEDURE dbo.Update_outcome_Details
      (
    @outcome_Details_id int ,
    @outcome_name nvarchar(300) ,
    @outcome_cost decimal (18 ,2) ,
    @outcome_to nvarchar(50) =null,
    @outcome_data datetime ,
    @notes nvarchar(max) =NULL
	)
AS

      UPDATE dbo.outcome_Details
      SET 
	outcome_name =@outcome_name,
    outcome_cost =@outcome_cost ,
    outcome_to =@outcome_to,
    outcome_data =@outcome_data,
    notes  =@notes
      WHERE  
     outcome_Details_id    = @outcome_Details_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "outcome_Details" table

CREATE procedure  dbo.Delete_outcome_Details
  @outcome_Details_id int
AS
BEGIN

	DELETE FROM outcome_Details
	WHERE
     outcome_Details_id    = @outcome_Details_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_outcome_Details
AS 
BEGIN
SELECT  * FROM outcome_Details          
END
go
 -----------------------------------------------------
--------Insert procedure for " daily_stores_seed  " table
create PROCEDURE dbo.InsertInto_daily_stores_seed
 
	(
	@date datetime ,
	@potato_Types_id int ,
	@last_qty_tons decimal(18, 0) ,
	@last_qty_kilo decimal(18, 0) =NULL,
	@last_qty_num decimal(18, 0)  =NULL,
	@today_qty_tons decimal(18, 0) ,
	@today_qty_kilo decimal(18, 0) =NULL,
	@today_qty_num decimal(18, 0) =NULL,
	@person_id int ,
	@total_qty_tons decimal(18, 0) ,
	@total_qty_kilo decimal(18, 0)  =NULL,
	@total_qty_num decimal(18, 0)  =NULL,
	@sales_today_tons decimal(18, 0) ,
	@sales_today_kilo decimal(18, 0) =NULL,
	@sales_today_num decimal(18, 0) =NULL,
	@remaining_tons decimal(18, 0) ,
	@remaining_kilo decimal(18, 0) =NULL,
	@remaining_num decimal(18, 0) =NULL,
	@Store_place_name nvarchar(150) 
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.daily_stores_seed(
    [date]  ,
	potato_Types_id  ,
	last_qty_tons ,
	last_qty_kilo ,
	last_qty_num ,
	today_qty_tons ,
	today_qty_kilo ,
	today_qty_num ,
	person_id  ,
	total_qty_tons  ,
	total_qty_kilo ,
	total_qty_num ,
	sales_today_tons  ,
	sales_today_kilo ,
	sales_today_num ,
	remaining_tons  ,
	remaining_kilo ,
	remaining_num ,
	Store_place_name  
  )
 values (
	@date  ,
	@potato_Types_id  ,
	@last_qty_tons ,
	@last_qty_kilo ,
	@last_qty_num ,
	@today_qty_tons ,
	@today_qty_kilo ,
	@today_qty_num ,
	@person_id  ,
	@total_qty_tons  ,
	@total_qty_kilo ,
	@total_qty_num ,
	@sales_today_tons  ,
	@sales_today_kilo ,
	@sales_today_num ,
	@remaining_tons  ,
	@remaining_kilo ,
	@remaining_num ,
	@Store_place_name  
	)

END
GO

--===================================
-- Update procedure for "daily_stores_seed" table
CREATE PROCEDURE dbo.Update_daily_stores_seed
      (
    @daily_stores_seed_id int ,
	@date datetime ,
	@potato_Types_id int ,
	@last_qty_tons decimal(18, 0) ,
	@last_qty_kilo decimal(18, 0) =NULL,
	@last_qty_num decimal(18, 0)  =NULL,
	@today_qty_tons decimal(18, 0) ,
	@today_qty_kilo decimal(18, 0) =NULL,
	@today_qty_num decimal(18, 0) =NULL,
	@person_id int ,
	@total_qty_tons decimal(18, 0) ,
	@total_qty_kilo decimal(18, 0)  =NULL,
	@total_qty_num decimal(18, 0)  =NULL,
	@sales_today_tons decimal(18, 0) ,
	@sales_today_kilo decimal(18, 0) =NULL,
	@sales_today_num decimal(18, 0) =NULL,
	@remaining_tons decimal(18, 0) ,
	@remaining_kilo decimal(18, 0) =NULL,
	@remaining_num decimal(18, 0) =NULL,
	@Store_place_name nvarchar(150) 
	)
AS

      UPDATE dbo.daily_stores_seed
      SET 
	[date] =@date ,
	potato_Types_id =@potato_Types_id  ,
	last_qty_tons =@last_qty_tons,
	last_qty_kilo =@last_qty_kilo,
	last_qty_num =@last_qty_num,
	today_qty_tons =@today_qty_tons,
	today_qty_kilo =@today_qty_kilo,
	today_qty_num =@today_qty_num,
	person_id  =@person_id,
	total_qty_tons  =@today_qty_tons,
	total_qty_kilo =@today_qty_kilo,
	total_qty_num =@today_qty_num,
	sales_today_tons =@sales_today_tons,
	sales_today_kilo =@sales_today_kilo,
	sales_today_num =@sales_today_num,
	remaining_tons  =@remaining_tons,
	remaining_kilo =@remaining_kilo,
	remaining_num =@remaining_num,
	Store_place_name =@Store_place_name 
      WHERE  
     daily_stores_seed_id    = @daily_stores_seed_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "Daily_salary_employee" table

CREATE procedure  dbo.Delete_daily_stores_seed
  @daily_stores_seed_id int
AS
BEGIN

	DELETE FROM daily_stores_seed
	WHERE
   daily_stores_seed_id    = @daily_stores_seed_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_daily_stores_seed
AS 
BEGIN
SELECT  * FROM daily_stores_seed          
END
go
------------------------------------------------------------------------
--------Insert procedure for " CustomerAccount_details  " table
create PROCEDURE dbo.InsertInto_CustomerAccount_details
 
	(
	@transaction_type nvarchar(20) , 
	@person_id int ,
	@transation_date datetime ,
	@potato_Types_id int ,
	@car_num int =NULL,
	@Factory_name nvarchar (50) =null,
	@card_num int =NULL,
	@qty_tons decimal(18, 0) ,
	@qty_kilo decimal(18, 0) =NULL,
	@qty_num decimal(18, 0)  =NULL,  
	@Tons_price decimal(18, 0) ,
	@required_value decimal(18, 0) ,
	@paid decimal(18, 0) , 
	@add_other_accounts decimal(18, 0)  =NULL,
	@dicount_other_accounts decimal(18, 0) = NULL,
	@remain_Creditor decimal(18, 0)  =NULL, 
	@remain_Debtor decimal(18, 0)  =NULL,
	@payment_method nvarchar(20) ,
	@bank_name nvarchar(50) =null , 
	@voucher_num int =null, 
	@notes nvarchar(max)
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.CustomerAccount_details(
    transaction_type  , 
	person_id  ,
	transation_date  ,
	potato_Types_id  ,
	car_num ,
	Factory_name ,
	card_num ,
	qty_tons  ,
	qty_kilo ,
	qty_num ,  
	Tons_price  ,
	required_value ,
	paid  , 
	add_other_accounts ,
	dicount_other_accounts ,
	remain_Creditor , 
	remain_Debtor ,
	payment_method  ,
	bank_name  , 
	voucher_num , 
	notes 
  )
 values (
	@transaction_type , 
	@person_id  ,
	@transation_date  ,
	@potato_Types_id  ,
	@car_num ,
	@Factory_name ,
	@card_num ,
	@qty_tons  ,
	@qty_kilo ,
	@qty_num ,  
	@Tons_price  ,
	@required_value ,
	@paid  , 
	@add_other_accounts ,
	@dicount_other_accounts ,
	@remain_Creditor , 
	@remain_Debtor ,
	@payment_method ,
	@bank_name  , 
	@voucher_num , 
	@notes 
	)

END
GO
--===================================
-- Update procedure for "CustomerAccount_details" table
CREATE PROCEDURE dbo.Update_CustomerAccount_details
      (
    @CustomerAccount_details_id int ,
	@transaction_type nvarchar(20) , 
	@person_id int ,
	@transation_date datetime ,
	@potato_Types_id int ,
	@car_num int =NULL,
	@Factory_name nvarchar (50) =null,
	@card_num int =NULL,
	@qty_tons decimal(18, 0) ,
	@qty_kilo decimal(18, 0) =NULL,
	@qty_num decimal(18, 0)  =NULL,  
	@Tons_price decimal(18, 0) ,
	@required_value decimal(18, 0) ,
	@paid decimal(18, 0) , 
	@add_other_accounts decimal(18, 0)  =NULL,
	@dicount_other_accounts decimal(18, 0) = NULL,
	@remain_Creditor decimal(18, 0)  =NULL, 
	@remain_Debtor decimal(18, 0)  =NULL,
	@payment_method nvarchar(20) ,
	@bank_name nvarchar(50) =null , 
	@voucher_num int =null, 
	@notes nvarchar(max)
	)
AS

      UPDATE dbo.CustomerAccount_details
      SET 
	transaction_type  =@transaction_type, 
	person_id  =@person_id,
	transation_date  =@transation_date,
	potato_Types_id  =@potato_Types_id,
	car_num =@car_num,
	Factory_name =@Factory_name,
	card_num =@card_num,
	qty_tons  =@qty_tons,
	qty_kilo =@qty_kilo,
	qty_num =@qty_num,  
	Tons_price  =@Tons_price,
	required_value=@required_value ,
	paid =@paid , 
	add_other_accounts =@add_other_accounts,
	dicount_other_accounts =@dicount_other_accounts,
	remain_Creditor =@remain_Creditor, 
	remain_Debtor =@remain_Debtor,
	payment_method =@payment_method ,
	bank_name  =@bank_name, 
	voucher_num =@voucher_num, 
	notes =@notes
      WHERE  
     CustomerAccount_details_id    = @CustomerAccount_details_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "CustomerAccount_details" table
CREATE procedure  dbo.Delete_CustomerAccount_details
  @CustomerAccount_details_id int
AS
BEGIN

	DELETE FROM CustomerAccount_details
	WHERE
   CustomerAccount_details_id    = @CustomerAccount_details_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_CustomerAccount_details
AS 
BEGIN
SELECT  * FROM CustomerAccount_details          
END
go
------------------------------------------------------------------------
create PROC SelectByDate_CustomerAccount_details (@transation_date datetime)
AS 
BEGIN
SELECT  * FROM CustomerAccount_details 
where   transation_date =@transation_date       
END
go
------------------------------------------------------------------------

 go
 --------Insert procedure for " CampanyAccount_details  " table
create PROCEDURE dbo.InsertInto_CampanyAccount_details
 
	(
	@transaction_type nvarchar(20) , 
	@person_id int ,
	@transation_date datetime ,
	@potato_Types_id int ,
	@car_num int =NULL,
	--@Factory_name nvarchar (50) =null,
	--@card_num int =NULL,
	@qty_tons decimal(18, 0) ,
	@qty_kilo decimal(18, 0) =NULL,
	@qty_num decimal(18, 0)  =NULL,  
	@Tons_price decimal(18, 0) ,
	@required_value decimal(18, 0) ,
	@paid decimal(18, 0) , 
	@add_other_accounts decimal(18, 0)  =NULL,
	@dicount_other_accounts decimal(18, 0) = NULL,
	@remain_Creditor decimal(18, 0)  =NULL, 
	@remain_Debtor decimal(18, 0)  =NULL,
	@payment_method nvarchar(20) ,
	@bank_name nvarchar(50) =null , 
	@voucher_num int =null, 
	@notes nvarchar(max)
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.CampanyAccount_details(
    transaction_type  , 
	person_id  ,
	transation_date  ,
	potato_Types_id  ,
	car_num ,
	--Factory_name ,
	--card_num ,
	qty_tons  ,
	qty_kilo ,
	qty_num ,  
	Tons_price  ,
	required_value ,
	paid  , 
	add_other_accounts ,
	dicount_other_accounts ,
	remain_Creditor , 
	remain_Debtor ,
	payment_method ,
	bank_name  , 
	voucher_num , 
	notes 
  )
 values (
	@transaction_type  , 
	@person_id  ,
	@transation_date  ,
	@potato_Types_id  ,
	@car_num ,
	--@Factory_name ,
	--@card_num ,
	@qty_tons  ,
	@qty_kilo ,
	@qty_num ,  
	@Tons_price  ,
	@required_value ,
	@paid  , 
	@add_other_accounts ,
	@dicount_other_accounts ,
	@remain_Creditor , 
	@remain_Debtor ,
	@payment_method ,
	@bank_name  , 
	@voucher_num , 
	@notes 
	)

END
GO

--===================================
-- Update procedure for "CampanyAccount_details" table
CREATE PROCEDURE dbo.Update_CampanyAccount_details
      (
    @CampanyAccount_details_id int ,
	@transaction_type nvarchar(20) , 
	@person_id int ,
	@transation_date datetime ,
	@potato_Types_id int ,
	@car_num int =NULL,
	--@Factory_name nvarchar (50) =null,
	--@card_num int =NULL,
	@qty_tons decimal(18, 0) ,
	@qty_kilo decimal(18, 0) =NULL,
	@qty_num decimal(18, 0)  =NULL,  
	@Tons_price decimal(18, 0) ,
	@required_value decimal(18, 0) ,
	@paid decimal(18, 0) , 
	@add_other_accounts decimal(18, 0)  =NULL,
	@dicount_other_accounts decimal(18, 0) = NULL,
	@remain_Creditor decimal(18, 0)  =NULL, 
	@remain_Debtor decimal(18, 0)  =NULL,
	@payment_method nvarchar(20) ,
	@bank_name nvarchar(50) =null , 
	@voucher_num int =null, 
	@notes nvarchar(max)
	)
AS

      UPDATE dbo.CampanyAccount_details
      SET 
	transaction_type  =@transaction_type, 
	person_id  =@person_id,
	transation_date  =@transation_date,
	potato_Types_id  =@potato_Types_id,
	car_num =@car_num,
	--Factory_name =@Factory_name,
	--card_num =@card_num,
	qty_tons  =@qty_tons,
	qty_kilo =@qty_kilo,
	qty_num =@qty_num,  
	Tons_price  =@Tons_price,
	required_value=@required_value ,
	paid =@paid , 
	add_other_accounts =@add_other_accounts,
	dicount_other_accounts =@dicount_other_accounts,
	remain_Creditor =@remain_Creditor, 
	remain_Debtor =@remain_Debtor,
	payment_method =@payment_method  ,
	bank_name  =@bank_name, 
	voucher_num =@voucher_num, 
	notes =@notes
      WHERE  
     CampanyAccount_details_id    = @CampanyAccount_details_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "CampanyAccount_details" table

CREATE procedure  dbo.Delete_CampanyAccount_details
  @CampanyAccount_details_id int
AS
BEGIN

	DELETE FROM CampanyAccount_details
	WHERE
   CampanyAccount_details_id    = @CampanyAccount_details_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_CampanyAccount_details
AS 
BEGIN
SELECT  * FROM CampanyAccount_details          
END
go
------------------------------------------------------------------------
create PROC SelectByDate_CampanyAccount_details (@transation_date datetime)
AS 
BEGIN
SELECT  * FROM CampanyAccount_details 
where   transation_date =@transation_date       
END
go
------------------------------------------------------------------------
 --------Insert procedure for " FarmarAccount_details  " table
create PROCEDURE dbo.InsertInto_FarmarAccount_details
 
	(
	@transaction_type nvarchar(20) , 
	@person_id int ,
	@transation_date datetime ,
	@potato_Types_id int ,
	@qty_tons decimal(18, 0) ,
	@qty_kilo decimal(18, 0) =NULL,
	@qty_num decimal(18, 0)  =NULL,  
	@Tons_price decimal(18, 0) ,
	@required_value decimal(18, 0) ,
	@discount_3arbon decimal(18, 0)  =NULL,
	@discount_seeds decimal(18, 0)  =NULL,
	@discount_agel decimal(18, 0)  =NULL,
	@discount_RefrColdAccount decimal(18, 0)  =NULL,
	@required_after_discount decimal(18, 0) ,
	@date_of_paid datetime  =NULL, 
	@add_other_accounts decimal(18, 0)  =NULL,
	@dicount_other_accounts decimal(18, 0) = NULL,
	@remain_Creditor decimal(18, 0)  =NULL, 
	@remain_Debtor decimal(18, 0)  =NULL,
	@payment_method nvarchar(20) ,
	@bank_name nvarchar(50) =null , 
	@voucher_num int =null, 
	@notes nvarchar(max)
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.FarmarAccount_details(
    transaction_type  , 
	person_id  ,
	transation_date  ,
	potato_Types_id  ,
	qty_tons ,
	qty_kilo ,
	qty_num ,  
	Tons_price  ,
	required_value  ,
	discount_3arbon ,
	discount_seeds ,
	discount_agel ,
	discount_RefrColdAccount ,
	required_after_discount  ,
	date_of_paid , 
	add_other_accounts ,
	dicount_other_accounts ,
	remain_Creditor , 
	remain_Debtor ,
	payment_method  ,
	bank_name  , 
	voucher_num , 
	notes 
  )
 values (
	@transaction_type , 
	@person_id  ,
	@transation_date  ,
	@potato_Types_id  ,
	@qty_tons ,
	@qty_kilo ,
	@qty_num ,  
	@Tons_price  ,
	@required_value  ,
	@discount_3arbon ,
	@discount_seeds ,
	@discount_agel ,
	@discount_RefrColdAccount ,
	@required_after_discount  ,
	@date_of_paid , 
	@add_other_accounts ,
	@dicount_other_accounts ,
	@remain_Creditor , 
	@remain_Debtor ,
	@payment_method  ,
	@bank_name  , 
	@voucher_num , 
	@notes 
	)

END
GO

--===================================
-- Update procedure for "FarmarAccount_details" table
CREATE PROCEDURE dbo.Update_FarmarAccount_details
      (
    @FarmarAccount_details_id int ,
	@transaction_type nvarchar (20) , 
	@person_id int ,
	@transation_date datetime ,
	@potato_Types_id int ,
	@qty_tons decimal(18, 0) ,
	@qty_kilo decimal(18, 0) =NULL,
	@qty_num decimal(18, 0)  =NULL,  
	@Tons_price decimal(18, 0) ,
	@required_value decimal(18, 0) ,
	@discount_3arbon decimal(18, 0)  =NULL,
	@discount_seeds decimal(18, 0)  =NULL,
	@discount_agel decimal(18, 0)  =NULL,
	@discount_RefrColdAccount decimal(18, 0)  =NULL,
	@required_after_discount decimal(18, 0) ,
	@date_of_paid datetime  =NULL, 
	@add_other_accounts decimal(18, 0)  =NULL,
	@dicount_other_accounts decimal(18, 0) = NULL,
	@remain_Creditor decimal(18, 0)  =NULL, 
	@remain_Debtor decimal(18, 0)  =NULL,
	@payment_method nvarchar(20) ,
	@bank_name nvarchar(50) =null , 
	@voucher_num int =null, 
	@notes nvarchar(max)
	)
AS

      UPDATE dbo.FarmarAccount_details
      SET 
	transaction_type =@transaction_type , 
	person_id =@person_id ,
	transation_date  =@transation_date,
	potato_Types_id  =@potato_Types_id,
	qty_tons =@qty_tons,
	qty_kilo =@qty_kilo,
	qty_num =@qty_num,  
	Tons_price =@Tons_price ,
	required_value =@required_value ,
	discount_3arbon =@discount_3arbon,
	discount_seeds =@discount_seeds,
	discount_agel =@discount_agel,
	discount_RefrColdAccount =@discount_RefrColdAccount,
	required_after_discount  =@required_after_discount,
	date_of_paid =@date_of_paid, 
	add_other_accounts =@add_other_accounts,
	dicount_other_accounts =@dicount_other_accounts,
	remain_Creditor =@remain_Creditor, 
	remain_Debtor =@remain_Debtor,
	payment_method =@payment_method,
	bank_name  =@bank_name, 
	voucher_num =@voucher_num, 
	notes =@notes
      WHERE  
     FarmarAccount_details_id    = @FarmarAccount_details_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "FarmarAccount_details" table

CREATE procedure  dbo.Delete_FarmarAccount_details
  @FarmarAccount_details_id int
AS
BEGIN

	DELETE FROM FarmarAccount_details
	WHERE
   FarmarAccount_details_id    = @FarmarAccount_details_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_FarmarAccount_details
AS 
BEGIN
SELECT  * FROM FarmarAccount_details          
END
go
------------------------------------------------------------------------
create PROC SelectByDate_FarmarAccount_details (@transation_date datetime)
AS 
BEGIN
SELECT  * FROM FarmarAccount_details 
where   transation_date =@transation_date       
END
go



--------------------------------------------------------------------------
----------Insert procedure for " CustomerAccount_total  " table
--create PROCEDURE dbo.InsertInto_CustomerAccount_total
 
--	(
--	@Person_id int ,
--	@transaction_type_id int ,
--	--@from_date date ,
--	--@to_date date ,
--	@total_qty_tons decimal(18, 0),
--	@total_qty_kilo decimal(18, 0) =NULL,
--	@total_qty_num decimal(18, 0) =NULL,
--	@total_required_value decimal(18, 0),
--	@total_paid decimal(18, 0)
--	)
--AS
--BEGIN
--	SET NOCOUNT ON;
--    -- Insert statements for procedure here
--INSERT INTO dbo.CustomerAccount_total(
--    Person_id  ,
--	transaction_type_id  ,
--	--from_date  ,
--	--to_date  ,
--	total_qty_tons ,
--	total_qty_kilo ,
--	total_qty_num ,
--	total_required_value ,
--	total_paid 
--  )
-- values (
--	@Person_id  ,
--	@transaction_type_id  ,
--	--@from_date  ,
--	--@to_date  ,
--	@total_qty_tons ,
--	@total_qty_kilo ,
--	@total_qty_num ,
--	@total_required_value ,
--	@total_paid 
--	)

--END
--GO
----===================================
---- Update procedure for "CustomerAccount_total" table
--CREATE PROCEDURE dbo.Update_CustomerAccount_total
--      (
--    @CustomerAccount_total_id int ,
--	@Person_id int ,
--	@transaction_type_id int ,
--	--@from_date date ,
--	--@to_date date ,
--	@total_qty_tons decimal(18, 0),
--	@total_qty_kilo decimal(18, 0) =NULL,
--	@total_qty_num decimal(18, 0) =NULL,
--	@total_required_value decimal(18, 0),
--	@total_paid decimal(18, 0)
--	)
--AS

--      UPDATE dbo.CustomerAccount_total
--      SET 
--   	Person_id  =@Person_id,
--	transaction_type_id  =@transaction_type_id,
--	--from_date  =@from_date,
--	--to_date  =@to_date,
--	total_qty_tons =@total_qty_tons,
--	total_qty_kilo =@total_qty_kilo,
--	total_qty_num =@total_qty_num,
--	total_required_value =@total_required_value,
--	total_paid =@total_paid
--      WHERE  
--     CustomerAccount_total_id    = @CustomerAccount_total_id                  

--GO
-----------------------------------------------------------------
----===========================================
---- Delete Procedure for "CustomerAccount_total" table
--CREATE procedure  dbo.Delete_CustomerAccount_total
--  @CustomerAccount_total_id int
--AS
--BEGIN

--	DELETE FROM CustomerAccount_total
--	WHERE CustomerAccount_total_id=@CustomerAccount_total_id

--END
--GO
--------------------------------------------------------------------------------------
--create PROC SelectAll_CustomerAccount_total
--AS 
--BEGIN
--SELECT  * FROM CustomerAccount_total          
--END
--go
--------------------------------------------------------------------------

----------Insert procedure for " CampanyAccount_total  " table
--create PROCEDURE dbo.InsertInto_CampanyAccount_total
 
--	(
--	@Person_id int ,
--	@transaction_type_id int ,
--	--@from_date date ,
--	--@to_date date ,
--	@total_qty_tons decimal(18, 0),
--	@total_qty_kilo decimal(18, 0) =NULL,
--	@total_qty_num decimal(18, 0) =NULL,
--	@total_required_value decimal(18, 0),
--	@total_paid decimal(18, 0)
--	)
--AS
--BEGIN
--	SET NOCOUNT ON;
--    -- Insert statements for procedure here
--INSERT INTO dbo.CampanyAccount_total(
--    Person_id  ,
--	transaction_type_id  ,
--	--from_date  ,
--	--to_date  ,
--	total_qty_tons ,
--	total_qty_kilo ,
--	total_qty_num ,
--	total_required_value ,
--	total_paid 
--  )
-- values (
--	@Person_id  ,
--	@transaction_type_id  ,
--	--@from_date  ,
--	--@to_date  ,
--	@total_qty_tons ,
--	@total_qty_kilo ,
--	@total_qty_num ,
--	@total_required_value ,
--	@total_paid 
--	)

--END
--GO
----===================================
---- Update procedure for "CampanyAccount_total" table
--CREATE PROCEDURE dbo.Update_CampanyAccount_total
--      (
--    @CampanyAccount_total_id int ,
--	@Person_id int ,
--	@transaction_type_id int ,
--	--@from_date date ,
--	--@to_date date ,
--	@total_qty_tons decimal(18, 0),
--	@total_qty_kilo decimal(18, 0) =NULL,
--	@total_qty_num decimal(18, 0) =NULL,
--	@total_required_value decimal(18, 0),
--	@total_paid decimal(18, 0)
--	)
--AS

--      UPDATE dbo.CampanyAccount_total
--      SET 
--   	Person_id  =@Person_id,
--	transaction_type_id  =@transaction_type_id,
--	--from_date  =@from_date,
--	--to_date  =@to_date,
--	total_qty_tons =@total_qty_tons,
--	total_qty_kilo =@total_qty_kilo,
--	total_qty_num =@total_qty_num,
--	total_required_value =@total_required_value,
--	total_paid =@total_paid
--      WHERE  
--     CampanyAccount_total_id    = @CampanyAccount_total_id                  

--GO
-----------------------------------------------------------------
----===========================================
---- Delete Procedure for "CampanyAccount_total" table
--CREATE procedure  dbo.Delete_CampanyAccount_total
--  @CampanyAccount_total_id int
--AS
--BEGIN

--	DELETE FROM CampanyAccount_total
--	WHERE CampanyAccount_total_id=@CampanyAccount_total_id

--END
--GO
--------------------------------------------------------------------------------------
--create PROC SelectAll_CampanyAccount_total
--AS 
--BEGIN
--SELECT  * FROM CampanyAccount_total          
--END
--go
--------------------------------------------------------------------------
----------Insert procedure for " FarmarAccount_total  " table
--create PROCEDURE dbo.InsertInto_FarmarAccount_total
 
--	(
--	@Person_id int ,
--	@transaction_type_id int ,
--	--@from_date date ,
--	--@to_date date ,
--	@total_qty_tons decimal(18, 0),
--	@total_qty_kilo decimal(18, 0) =NULL,
--	@total_qty_num decimal(18, 0) =NULL,
--	@total_required_value decimal(18, 0),
--    @total_discounts decimal(18, 0)  =NULL,
--	@total_after_discounts decimal(18, 0)  =NULL,
--	@total_paid decimal(18, 0)
--	)
--AS
--BEGIN
--	SET NOCOUNT ON;
--    -- Insert statements for procedure here
--INSERT INTO dbo.FarmarAccount_total(
--    Person_id  ,
--	transaction_type_id  ,
--	--from_date  ,
--	--to_date  ,
--	total_qty_tons ,
--	total_qty_kilo ,
--	total_qty_num ,
--	total_required_value ,
--	total_discounts ,
--	total_after_discounts ,
--	total_paid 
--  )
-- values (
--	@Person_id  ,
--	@transaction_type_id  ,
--	--@from_date  ,
--	--@to_date  ,
--	@total_qty_tons ,
--	@total_qty_kilo ,
--	@total_qty_num ,
--	@total_required_value ,
--	@total_discounts ,
--	@total_after_discounts , 
--	@total_paid 
--	)

--END
--GO
----===================================
---- Update procedure for "FarmarAccount_total" table
--CREATE PROCEDURE dbo.Update_FarmarAccount_total
--      (
--    @FarmarAccount_total_id int ,
--	@Person_id int ,
--	@transaction_type_id int ,
--	--@from_date date ,
--	--@to_date date ,
--	@total_qty_tons decimal(18, 0),
--	@total_qty_kilo decimal(18, 0) =NULL,
--	@total_qty_num decimal(18, 0) =NULL,
--	@total_required_value decimal(18, 0),
--	@total_discounts decimal(18, 0)  =NULL,
--	@total_after_discounts decimal(18, 0)  =NULL,
--	@total_paid decimal(18, 0)
--	)
--AS

--      UPDATE dbo.FarmarAccount_total
--      SET 
--   	Person_id  =@Person_id,
--	transaction_type_id  =@transaction_type_id,
--	--from_date  =@from_date,
--	--to_date  =@to_date,
--	total_qty_tons =@total_qty_tons,
--	total_qty_kilo =@total_qty_kilo,
--	total_qty_num =@total_qty_num,
--	total_required_value =@total_required_value,
--	total_discounts = @total_discounts,
--	total_after_discounts = @total_after_discounts ,
--	total_paid =@total_paid
--      WHERE  
--    FarmarAccount_total_id    = @FarmarAccount_total_id                  

--GO
-----------------------------------------------------------------
----===========================================
---- Delete Procedure for "FarmarAccount_total" table
--CREATE procedure  dbo.Delete_FarmarAccount_total
--  @FarmarAccount_total_id int
--AS
--BEGIN

--	DELETE FROM FarmarAccount_total
--	WHERE FarmarAccount_total_id=@FarmarAccount_total_id

--END
--GO
--------------------------------------------------------------------------------------
--create PROC SelectAll_FarmarAccount_total
--AS 
--BEGIN
--SELECT  * FROM FarmarAccount_total          
--END
--go
------------------------------------------------------------------------
------------------------------------------------------------------------
--------Insert procedure for " payment_sales_seeds_method  " table
--create PROCEDURE dbo.InsertInto_payment_sales_seeds_method
 
--	(
--	@payment_sales_seeds_method_name nvarchar(150)
--	)
--AS
--BEGIN
--	SET NOCOUNT ON;
--    -- Insert statements for procedure here
--INSERT INTO dbo.payment_sales_seeds_method(

--   payment_sales_seeds_method_name
--  )
-- values 
-- (
--   @payment_sales_seeds_method_name
--	)

--END
--GO
--===================================
-- Update procedure for "payment_sales_seeds_method" table
--CREATE PROCEDURE dbo.Update_payment_sales_seeds_method
--      (
--    @payment_sales_seeds_method_id int,
--    @payment_sales_seeds_method_name nvarchar(150)
--	)
--AS

--      UPDATE dbo.payment_sales_seeds_method
--      SET 
--    payment_sales_seeds_method_name = @payment_sales_seeds_method_name
--      WHERE  
--     payment_sales_seeds_method_id    = @payment_sales_seeds_method_id                  

--GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "payment_sales_seeds_method" table
--CREATE procedure  dbo.Delete_payment_sales_seeds_method
--  @payment_sales_seeds_method_id int
--AS
--BEGIN

--	DELETE FROM payment_sales_seeds_method
--	WHERE payment_sales_seeds_method_id=@payment_sales_seeds_method_id

--END
--GO
------------------------------------------------------------------------------------
--create PROC SelectAll_payment_sales_seeds_method
--AS 
--BEGIN
--SELECT  * FROM payment_sales_seeds_method          
--END
--go
---------------------------------------------------------
  --------Insert procedure for " Daily_sales_seeds  " table
create PROCEDURE dbo.InsertInto_Daily_sales_seeds
 
	(
	@transaction_type nvarchar(20) , 
	@person_id int ,
	@transation_date datetime ,
	@potato_Types_id int ,
	@qty_tons decimal(18, 0) ,
	@qty_kilo decimal(18, 0)= NULL,
	@qty_num decimal(18, 0)  =NULL, --  
	@Package_price decimal(18, 0) ,
	@value decimal(18, 0) , --
	@payment_sales_seeds_method nvarchar(20)  ,
	@remain_Creditor decimal(18, 0) = NULL, --
	@remain_Debtor decimal(18, 0)  =NULL,--
	@far9_agel decimal(18, 0)  =NULL,
	@required_after_far9_agel decimal(18, 0) ,
	@add_other_accounts decimal(18, 0)  =NULL,
	@dicount_other_accounts decimal(18, 0) = NULL,
	@total_required_value decimal(18, 0)  =NULL,
	@notes nvarchar(max)
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.Daily_sales_seeds(
    transaction_type  , 
	person_id  ,
	transation_date  ,
	potato_Types_id  ,
	qty_tons  ,
	qty_kilo ,
	qty_num , --  
	Package_price ,
	value  , --
	payment_sales_seeds_method  ,
	remain_Creditor , --
	remain_Debtor ,--
	far9_agel ,
	required_after_far9_agel  ,
	add_other_accounts ,
	dicount_other_accounts ,
	total_required_value ,
	notes 
  )
 values (
	@transaction_type , 
	@person_id  ,
	@transation_date  ,
	@potato_Types_id  ,
	@qty_tons  ,
	@qty_kilo ,
	@qty_num , --  
	@Package_price ,
	@value  , --
	@payment_sales_seeds_method  ,
	@remain_Creditor , --
	@remain_Debtor ,--
	@far9_agel ,
	@required_after_far9_agel  ,
	@add_other_accounts ,
	@dicount_other_accounts ,
	@total_required_value ,
	@notes 
	)

END
GO

--===================================
-- Update procedure for "Daily_sales_seeds" table
CREATE PROCEDURE dbo.Update_Daily_sales_seeds
      (
    @Daily_sales_seeds_id int ,
	@transaction_type nvarchar(20) , 
	@person_id int ,
	@transation_date datetime ,
	@potato_Types_id int ,
	@qty_tons decimal(18, 0) ,
	@qty_kilo decimal(18, 0)= NULL,
	@qty_num decimal(18, 0)  =NULL, --  
	@Package_price decimal(18, 0) ,
	@value decimal(18, 0) , --
	@payment_sales_seeds_method nvarchar(20)  ,
	@remain_Creditor decimal(18, 0) = NULL, --
	@remain_Debtor decimal(18, 0)  =NULL,--
	@far9_agel decimal(18, 0)  =NULL,
	@required_after_far9_agel decimal(18, 0) ,
	@add_other_accounts decimal(18, 0)  =NULL,
	@dicount_other_accounts decimal(18, 0) = NULL,
	@total_required_value decimal(18, 0)  =NULL,
	@notes nvarchar(max)
	)
AS

      UPDATE dbo.Daily_sales_seeds
      SET 
	transaction_type =@transaction_type , 
	person_id  =@person_id,
	transation_date  =@transation_date,
	potato_Types_id  =@potato_Types_id,
	qty_tons  =@qty_tons,
	qty_kilo =@qty_kilo,
	qty_num =@qty_num,  
	Package_price =@Package_price,
	value =@value , 
	payment_sales_seeds_method   =@payment_sales_seeds_method,
	remain_Creditor =@remain_Creditor, 
	remain_Debtor =@remain_Debtor ,
	far9_agel =@far9_agel,
	required_after_far9_agel =@required_after_far9_agel ,
	add_other_accounts =@add_other_accounts,
	dicount_other_accounts =@dicount_other_accounts,
	total_required_value =@total_required_value,
	notes =@notes 
      WHERE  
     Daily_sales_seeds_id    = @Daily_sales_seeds_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "Daily_sales_seeds" table

CREATE procedure  dbo.Delete_Daily_sales_seeds
  @Daily_sales_seeds_id int
AS
BEGIN

	DELETE FROM Daily_sales_seeds
	WHERE
   Daily_sales_seeds_id    = @Daily_sales_seeds_id                  

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_Daily_sales_seeds
AS 
BEGIN
SELECT  * FROM Daily_sales_seeds          
END
go
------------------------------------------------------------------------
create PROC SelectByFarmarName_Daily_sales_seeds (@person_id int)
AS 
BEGIN
SELECT  * FROM Daily_sales_seeds 
where   person_id =@person_id       
END
go
------------------------------------------------------------------------
-- create PROC SelectAll_transaction_type
--AS 
--BEGIN
--SELECT  * FROM transaction_type          
--END
--go
--------------------------------------------------------------------------
--create PROC SelectAll_payment_method
--AS 
--BEGIN
--SELECT  * FROM payment_method          
--END
--go
------------------------------------------------------------------------
--------Insert procedure for " Cash  " table
create PROCEDURE dbo.InsertInto_Cash
 
	(
    @Cash_data datetime ,
    @Total_Income decimal (18 ,2) ,
    @Total_Outcome decimal (18 ,2)  ,
    @notes nvarchar(max)= NULL
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.Cash(
    Cash_data ,
    Total_Income ,
    Total_Outcome  ,
    notes 
  )
 values (
    @Cash_data ,
    @Total_Income ,
    @Total_Outcome  ,
    @notes 
	)

END
GO
--===================================
-- Update procedure for "Cash" table
CREATE PROCEDURE dbo.Update_Cash
      (
    @Cash_id int ,
    @Cash_data datetime ,
    @Total_Income decimal (18 ,2) ,
    @Total_Outcome decimal (18 ,2)  ,
    @notes nvarchar(max)= NULL
	)
AS

      UPDATE dbo.Cash
      SET 
   	Cash_data =@Cash_data,
    Total_Income =@Total_Income,
    Total_Outcome =@Total_Outcome  ,
    notes =@notes
      WHERE  
     Cash_id    = @Cash_id                  

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "Cash" table
CREATE procedure  dbo.Delete_Cash
  @Cash_id int
AS
BEGIN

	DELETE FROM Cash
	WHERE Cash_id=@Cash_id

END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_Cash
AS 
BEGIN
SELECT  * FROM Cash          
END
go
------------------------------------------------------------------------
create PROC SelectByDate_Cash (@Cash_date datetime)
AS 
BEGIN
SELECT  * FROM Cash 
where   Cash_date =@Cash_date       
END
go
------------------------------------------------------------------------
CREATE TABLE dbo.Store_place(
	Store_place_id int IDENTITY NOT NULL,
	Store_place_name nvarchar(150) not NULL,
	Emp_id int not null ,
 CONSTRAINT [PK_Store_place] PRIMARY KEY (Store_place_id)
 );
 go
-------Insert procedure for " Store_place  " table
create PROCEDURE dbo.InsertInto_Store_place
 
	(
	@Store_place_id int ,
	@Store_place_name nvarchar(150) ,
	@Emp_id int
	)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
INSERT INTO dbo.Store_place(
    Store_place_id ,
	Store_place_name ,
	Emp_id 
  )
 values (
    @Store_place_id ,
	@Store_place_name ,
	@Emp_id 
	)

END
GO
--===================================
-- Update procedure for "Store_place" table
CREATE PROCEDURE dbo.Update_Store_place
      (
    @Store_place_id int ,
	@Store_place_name nvarchar(150) ,
	@Emp_id int
	)
AS

      UPDATE dbo.Store_place
      SET 
	Store_place_name =@Store_place_name ,
	Emp_id =@Emp_id
      WHERE  
    Store_place_id = @Store_place_id

GO
---------------------------------------------------------------
--===========================================
-- Delete Procedure for "Store_place" table
CREATE procedure  dbo.Delete_Store_place
  @potato_Types_id int
AS
BEGIN

	DELETE FROM Store_place
	WHERE
    Store_place_id = @Store_place_id
END
GO
------------------------------------------------------------------------------------
create PROC SelectAll_Store_place
AS 
BEGIN
SELECT  * FROM Store_place          
END
go
------------------------------------------------------------------------