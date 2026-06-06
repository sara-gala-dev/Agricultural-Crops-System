USE master;
go
-- Drop database
IF DB_ID('potatos') IS NOT NULL DROP DATABASE potatos;
go
	-- If database could not be created due to open connections, abort
IF @@ERROR = 3702 
   RAISERROR('Database cannot be dropped because there are still open connections.', 127, 127) WITH NOWAIT, LOG;
go
-- Create database
CREATE DATABASE potatos;
GO

USE [potatos]
GO

create TABLE dbo.Persons(
	Person_id  int identity  NOT NULL,
	Person_name nvarchar(150) NULL,
	Person_SSN nvarchar(50) null, --الرقم القومى =serial social number
	phone nvarchar(50) NULL,
	mobile nvarchar(50) NULL,
	[address] nvarchar(150) NULL,
	city nvarchar(50)  null, --البلد مهمه
	Person_type  nvarchar(20) NOT NULL,
	notes nvarchar(max) NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY (Person_id)
 );
 go
 ------------------------------------------------------
 --CREATE TABLE dbo.Person_Type(
	--Person_Type_id int IDENTITY(1,1) NOT NULL,
	--Person_Type_name nvarchar(150) not NULL,
 --CONSTRAINT [PK_Person_Type] PRIMARY KEY (Person_Type_id)
 --);
 --go
 ------------------------------------------------------------
 CREATE TABLE dbo.potato_Types(
	potato_Types_id int IDENTITY NOT NULL,
	potato_Types_name nvarchar(150) not NULL,
	potato_session nvarchar(50) null , 
	notes nvarchar(150) NULL,
 CONSTRAINT [PK_potato_Types] PRIMARY KEY (potato_Types_id)
 );
 go
 ----------------------------------------------------------
 CREATE TABLE dbo.Emp(
	Emp_id  int IDENTITY NOT NULL,
	Emp_name nvarchar(150) NULL,
	Emp_SSN nvarchar(50) null, --الرقم القومى =serial social number
	phone nvarchar(50) NULL,
	mobile nvarchar(50) NULL,
	[address] nvarchar(150) NULL,
	city nvarchar(50)  null, --البلد مهمه
	Emp_type nvarchar(20) NOT NULL,
	notes nvarchar(max) NULL,
 CONSTRAINT [PK_Emp] PRIMARY KEY (Emp_id)
 );
 go
 ------------------------------------------------------
 --drop TABLE dbo.Emp_Type(
	--Emp_Type_id int IDENTITY(1,1) NOT NULL,
	--Emp_Type_name nvarchar(150) not NULL,
 --CONSTRAINT [PK_Emp_Type] PRIMARY KEY (Emp_Type_id)
 --);
 --go
 ------------------------------------------------------------
 CREATE TABLE dbo.monthly_salary_employee(
	monthly_salary_employee_id int IDENTITY NOT NULL,
	Emp_id  int not NULL,
	Salary_date datetime not null,
	Base_Salary decimal (18, 2) not null,
	Incentives decimal (18, 2) null , --حوافز
	Rewords decimal (18, 2) null , --مكافأت
	Add_others decimal (18, 2) null,
	Discount_others decimal (18, 2) null,
	Total_Salary decimal (18, 2) not null,
	Salary_ok varchar(10) not null,
 CONSTRAINT [PK_monthly_salary_employee] PRIMARY KEY (monthly_salary_employee_id)
 );
 go
-----------------------------------------------------
CREATE TABLE dbo.weekly_salary_employee(
	weekly_salary_employee_id int IDENTITY NOT NULL,
	Emp_id  int not NULL,
	Salary_date datetime not null,
	Base_Salary decimal (18, 2) not null,
	No_Of_days int not null,
	Add_others decimal (18, 2) null,
	Discount_others decimal (18, 2) null,
	Total_Salary decimal (18, 2) not null,
	Salary_ok varchar(10) not null,
 CONSTRAINT [PK_weekly_salary_employee_detailes] PRIMARY KEY (weekly_salary_employee_id)
 );
 go
-----------------------------------------------------
CREATE TABLE dbo.Daily_salary_employee(
	Daily_salary_employee_id int IDENTITY NOT NULL,
	Emp_id  int not NULL,
	Salary_date datetime not null,
	Base_Salary decimal (18, 2) not null,
	Add_others decimal (18, 2) null,
	Discount_others decimal (18, 2) null,
	Total_Salary decimal (18, 2) not null,
	Salary_ok varchar(10) not null,
 CONSTRAINT [PK_Daily_salary_employee_detailes] PRIMARY KEY (Daily_salary_employee_id)
 );
 go
-----------------------------------------------------
--create table Income_Total (
--Income_ID int  not null ,
--Income_data datetime not null,
--Income_Total decimal (18 ,2)not null ,
--constraint PK_Income_Total primary key (Income_ID)
--);
--go
-------------------------------------------------------------------
create table Income_Details (
Income_Details_id int identity not null,
Income_name nvarchar(300) not null,
Income_cost decimal (18 ,2) not null ,
Income_from nvarchar(50) null,
Income_data datetime not null,
notes nvarchar(max) NULL,
constraint PK_Income_Details primary key (Income_Details_id)
);
go
-----------------------------------------------------
--create table outcome_Total (
--outcome_ID int  not null ,
--outcome_data datetime not null,
--outcome_Total decimal (18 ,2) not null ,
--constraint PK_outcome_Total primary key (Outcome_ID)
--);
--go
-------------------------------------------------------------------
create table outcome_Details (
outcome_Details_id int Identity not null,
outcome_name nvarchar(300) not null,
outcome_cost decimal (18 ,2) not null ,
outcome_to nvarchar(300)  null,
outcome_data datetime not null,
notes nvarchar(max) NULL,
constraint PK_outcome_Details primary key (outcome_Details_id)
);
go
----------------------------------------------------------------------
CREATE TABLE [dbo].daily_stores_seed(
	daily_stores_seed_id int IDENTITY NOT NULL,
	[date] datetime NOT NULL,
	potato_Types_id int NOT NULL,
	last_qty_tons decimal(18, 0) not NULL,
	last_qty_kilo decimal(18, 0) NULL,
	last_qty_num decimal(18, 0)  NULL,
	today_qty_tons decimal(18, 0) not NULL,
	today_qty_kilo decimal(18, 0) NULL,
	today_qty_num decimal(18, 0) NULL,
	person_id int NOT NULL,
	total_qty_tons decimal(18, 0) NOT NULL,
	total_qty_kilo decimal(18, 0)  NULL,
	total_qty_num decimal(18, 0)  NULL,
	sales_today_tons decimal(18, 0) not NULL,
	sales_today_kilo decimal(18, 0) NULL,
	sales_today_num decimal(18, 0) NULL,
	remaining_tons decimal(18, 0) not NULL,
	remaining_kilo decimal(18, 0) NULL,
	remaining_num decimal(18, 0) NULL,
	[store_place_id] [int] NULL,
 CONSTRAINT [PK_daily_stores_seed] PRIMARY KEY (daily_stores_seed_id)
 );
 go
 ----------------------------------------------------------------------------
 CREATE TABLE dbo.Store_place(
	Store_place_id int IDENTITY NOT NULL,
	Store_place_name nvarchar(150) not NULL,
	Emp_id int not null ,
 CONSTRAINT [PK_Store_place] PRIMARY KEY (Store_place_id)
 );
 go
 ----------------------------------------------------------------------------
 -- CREATE TABLE dbo.Daily_Store_Total(
	--Daily_Store_Total_id int IDENTITY(1,1) NOT NULL,
	--person_id int NOT NULL,
	--from_date date not null,
	--to_date date not null,
	--total_qty_tons decimal(18, 0) not NULL,
	--total_qty_kilo decimal(18, 0) NULL,
	--total_qty_num decimal(18, 0)  NULL,
	--total_required_value decimal(18, 0) NOT NULL,
	--total_paid decimal(18, 0) NOT NULL,
 --CONSTRAINT [PK_Daily_Store_Total] PRIMARY KEY (Daily_Store_Total_id)
 --);
 --go
 --------------------------------------------------------------------------
 -- CREATE TABLE dbo.transaction_type(
	--transaction_type_id int IDENTITY(1,1) NOT NULL,
	--transaction_type_name nvarchar(150) not NULL,
 --CONSTRAINT [PK_transaction_type] PRIMARY KEY (transaction_type_id)
 --);
 --go
 --------------------------------------------------------------------------
 -- CREATE TABLE dbo.payment_method(
	--payment_method_id int IDENTITY(1,1) NOT NULL,
	--payment_method_name nvarchar(150) not NULL,
 --CONSTRAINT [PK_payment_method] PRIMARY KEY (payment_method_id)
 --);
 --go
 ------------------------------------------------------------
 
--CREATE TABLE dbo.CustomerAccount_total(
--	CustomerAccount_total_id int IDENTITY(1,1) NOT NULL,
--	Person_id int NOT NULL,
--	transaction_type_id int not null,
--	--from_date date not null,
--	--to_date date not null,
--	total_qty_tons decimal(18, 0) not NULL,
--	total_qty_kilo decimal(18, 0) NULL,
--	total_qty_num decimal(18, 0) NULL,
--	total_required_value decimal(18, 0) NOT NULL,
--	total_paid decimal(18, 0) NOT NULL,
-- CONSTRAINT [PK_CustomerAccount_total] PRIMARY KEY (CustomerAccount_total_id)
-- );
-- go
-- -------------------------------------------------------------------------- 
 CREATE TABLE dbo.CustomerAccount_details(
	CustomerAccount_details_id int IDENTITY NOT NULL,
	transaction_type nvarchar (20) not null, --نوع العميله بيع بطاطس ام شراء تقاوى
	person_id int NOT NULL,
	transation_date datetime NOT NULL,
	--transation_time time NOT NULL,
	potato_Types_id int NOT NULL,
	car_num int NULL,
	Factory_name nvarchar (50) null,
	card_num int NULL,
	qty_tons decimal(18, 0) NOT NULL,
	qty_kilo decimal(18, 0) NULL,
	qty_num decimal(18, 0)  NULL, --احتياطى عدد الاجوله 
	Tons_price decimal(18, 0) NOT NULL,
	required_value decimal(18, 0) NOT NULL, --القيمه=الكميه بالطن ف سعر الطن
	paid decimal(18, 0) NOT NULL, -- السداد=المدفوع من القيمه المطلوبه
	add_other_accounts decimal(18, 0)  NULL,
	dicount_other_accounts decimal(18, 0)  NULL,
	remain_Creditor decimal(18, 0)  NULL, --المتبقى (دائن)
	remain_Debtor decimal(18, 0)  NULL,--المتبقى (مدين)
	payment_method nvarchar(20) not null,--نوع السداد = بنك او نقدى او ايصال
	bank_name nvarchar(50) null , --لو نوع السداد عن طريق البنك
	voucher_num int null, --رقم الايصال = لو نوع السداد عن طريق ايصال
	[store_place_id] [int] NULL,
	notes nvarchar(max),
 CONSTRAINT [PK_CustomerAccount_details] PRIMARY KEY (CustomerAccount_details_id)
 );
 go
 ---------------------------------------------------------------------------------------------
 --CREATE TABLE dbo.CampanyAccount_total(
	--CampanyAccount_total_id int IDENTITY(1,1) NOT NULL,
	--person_id int NOT NULL,
	--transaction_type_id int not null,
	----from_date date not null,
	----to_date date not null,
	--total_qty_tons decimal(18, 0) not NULL,
	--total_qty_kilo decimal(18, 0) NULL,
	--total_qty_num decimal(18, 0)  NULL,
	--total_required_value decimal(18, 0) NOT NULL,
	--total_paid decimal(18, 0) NOT NULL,
 --CONSTRAINT [PK_CampanyAccount_total] PRIMARY KEY (CampanyAccount_total_id)
 --);
 --go
 --------------------------------------------------------------------------
 CREATE TABLE dbo.CampanyAccount_details(
	CampanyAccount_details_id int IDENTITY NOT NULL,
	transaction_type nvarchar(20) not null, --نوع العميله بيع بطاطس ام شراء تقاوى
	person_id int NOT NULL,
	transation_date datetime NOT NULL,
	--transation_time time NOT NULL,
	potato_Types_id int NOT NULL,
	car_num int NULL,
	qty_tons decimal(18, 0) NOT NULL,
	qty_kilo decimal(18, 0) NULL,
	qty_num decimal(18, 0)  NULL, -- عدد الاجوله 
	Tons_price decimal(18, 0) NOT NULL,
	required_value decimal(18, 0) NOT NULL, --القيمه=الكميه بالطن ف سعر الطن
	paid decimal(18, 0) NOT NULL, -- السداد=المدفوع من القيمه المطلوبه
	add_other_accounts decimal(18, 0)  NULL,
	dicount_other_accounts decimal(18, 0)  NULL,
	remain_Creditor decimal(18, 0)  NULL, --المتبقى (دائن)
	remain_Debtor decimal(18, 0)  NULL,--المتبقى (مدين)
	payment_method nvarchar(20) not null,--نوع السداد = بنك او نقدى او ايصال
	bank_name nvarchar(50) null , --لو نوع السداد عن طريق البنك
	voucher_num int null, --رقم الايصال = لو نوع السداد عن طريق ايصال
	[store_place_id] [int] NULL,
	notes nvarchar(max),
 CONSTRAINT [PK_CampanyAccount_details] PRIMARY KEY (CampanyAccount_details_id)
 );
 go
 ------------------------------------------------------------------------------------------------------
 --CREATE TABLE dbo.FarmarAccount_total(
	--FarmarAccount_total_id int IDENTITY(1,1) NOT NULL,
	--person_id int NOT NULL,
	--transaction_type_id int not null,
	----from_date date not null,
	----to_date date not null,
	--total_qty_tons decimal(18, 0) not NULL,
	--total_qty_kilo decimal(18, 0) NULL,
	--total_qty_num decimal(18, 0)  NULL,
	--total_required_value decimal(18, 0) NOT NULL,
	--total_discounts decimal(18, 0)  NULL,
	--total_after_discounts decimal(18, 0)  NULL,
	--total_paid decimal(18, 0) NOT NULL,
 --CONSTRAINT [PK_FarmarAccount_total] PRIMARY KEY (FarmarAccount_total_id)
 --);
 --go
 --------------------------------------------------------------------------
 CREATE TABLE dbo.FarmarAccount_details(
	FarmarAccount_details_id int IDENTITY NOT NULL,
	transaction_type nvarchar(20) not null, --نوع العميله بيع تقاوى ام شراء بطاطس
	person_id int NOT NULL,
	transation_date datetime NOT NULL,
	--transation_time time NOT NULL,
	potato_Types_id int NOT NULL,
	qty_tons decimal(18, 0) NOT NULL,
	qty_kilo decimal(18, 0) NULL,
	qty_num decimal(18, 0)  NULL, -- عدد الاجوله 
	Tons_price decimal(18, 0) NOT NULL,
	required_value decimal(18, 0) NOT NULL, --القيمه=الكميه بالطن ف سعر الطن
	discount_3arbon decimal(18, 0)  NULL,
	discount_seeds decimal(18, 0)  NULL,
	discount_agel decimal(18, 0)  NULL,
	discount_RefrColdAccount decimal(18, 0)  NULL,
	required_after_discount decimal(18, 0) NOT NULL,
	date_of_paid datetime  NULL,
	--paid decimal(18, 0) NOT NULL, -- السداد=المدفوع من القيمه المطلوبه
	add_other_accounts decimal(18, 0)  NULL,
	dicount_other_accounts decimal(18, 0)  NULL,
	remain_Creditor decimal(18, 0)  NULL, --المتبقى (دائن)
	remain_Debtor decimal(18, 0)  NULL,--المتبقى (مدين)
	payment_method nvarchar(20) not null,--نوع السداد = بنك او نقدى او ايصال
	bank_name nvarchar(50) null , --لو نوع السداد عن طريق البنك
	voucher_num int null, --رقم الايصال = لو نوع السداد عن طريق ايصال
	[store_place_id] [int] NULL,
	notes nvarchar(max),
 CONSTRAINT [PK_FarmarAccount_details] PRIMARY KEY (FarmarAccount_details_id)
 );
 go
 ------------------------------------------------------------------------------------------
 --CREATE TABLE dbo.payment_sales_seeds_method(
	--payment_sales_seeds_method_id int IDENTITY(1,1) NOT NULL,
	--payment_sales_seeds_method_name nvarchar(150) not NULL,
 --CONSTRAINT [PK_payment_sales_seeds_method] PRIMARY KEY (payment_sales_seeds_method_id)
 --);
 --go
 ------------------------------------------------------------------------------------------------------
 CREATE TABLE dbo.Daily_sales_seeds(
	Daily_sales_seeds_id int IDENTITY NOT NULL,
	transaction_type nvarchar(20) not null, --نوع العميله بيع تقاوى
	person_id int NOT NULL,
	transation_date datetime NOT NULL,
	--transation_time time NOT NULL,
	potato_Types_id int NOT NULL,
	qty_tons decimal(18, 0) NOT NULL,
	qty_kilo decimal(18, 0) NULL,
	qty_num decimal(18, 0)  NULL, -- عدد الاجوله 
	Package_price decimal(18, 0) NOT NULL,
	value decimal(18, 0) NOT NULL, --القيمه=عدد الاجوله ف سعر الجوال
	payment_sales_seeds_method nvarchar (20) not null ,
	remain_Creditor decimal(18, 0)  NULL, --المتبقى (دائن)
	remain_Debtor decimal(18, 0)  NULL,--المتبقى (مدين)
	far9_agel decimal(18, 0)  NULL,
	required_after_far9_agel decimal(18, 0)  NULL,
	add_other_accounts decimal(18, 0)  NULL,
	dicount_other_accounts decimal(18, 0)  NULL,
	total_required_value decimal(18, 0) not NULL,
	[payed] [decimal](18, 0) NOT NULL,
	[pa9y_many] [decimal](18, 0) NULL,
	[store_place_id] [int] NOT NULL,
	notes nvarchar(max),
 CONSTRAINT [PK_Daily_sales_seeds] PRIMARY KEY (Daily_sales_seeds_id)
 );
 go
------------------------------------------------------------------------------------------------
 create table Cash (
Cash_id int Identity not null,
Cash_date datetime not null,
Total_Income decimal (18 ,2) not null ,
Total_Outcome decimal (18 ,2) not null ,
notes nvarchar(max) NULL,
constraint PK_Cash primary key (Cash_id)
);
go
----------------
 --foregin keys :)
 
 -------------------------------------------------------------------------------
 --------------------------------------------------------------------------
-- alter table Persons  ADD CONSTRAINT FK_Person_type  FOREIGN KEY(Person_type_id) REFERENCES Person_type(Person_type_id);
 ------------------------------------------------------------------------------
 --alter table CustomerAccount_total  ADD CONSTRAINT FK_CustomerAccount_total_Person  FOREIGN KEY(Person_id) REFERENCES Persons(Person_id);
 --alter table CustomerAccount_total  ADD CONSTRAINT FK_CustomerAccount_total_transaction_type  FOREIGN KEY(transaction_type_id) REFERENCES transaction_type(transaction_type_id);
 -----------------------------------------------------------------------------
 alter table CustomerAccount_details  ADD CONSTRAINT FK_CustomerAccount_details_Person  FOREIGN KEY(Person_id) REFERENCES Persons(Person_id);
-- alter table CustomerAccount_details  ADD CONSTRAINT FK_CustomerAccount_details_transaction_type  FOREIGN KEY(transaction_type_id) REFERENCES transaction_type(transaction_type_id);
 alter table CustomerAccount_details  ADD CONSTRAINT FK_CustomerAccount_details_potato_Types FOREIGN KEY(potato_Types_id) REFERENCES potato_Types(potato_Types_id);
 --alter table CustomerAccount_details  ADD CONSTRAINT FK_CustomerAccount_details_payment_method FOREIGN KEY(payment_method_id) REFERENCES payment_method(payment_method_id);
 ----------------------------------------------------------------------------------
-- alter table CampanyAccount_total  ADD CONSTRAINT FK_CampanyAccount_total_Person  FOREIGN KEY(Person_id) REFERENCES Persons(Person_id);
 --alter table CampanyAccount_total  ADD CONSTRAINT FK_CampanyAccount_total_transaction_type  FOREIGN KEY(transaction_type_id) REFERENCES transaction_type(transaction_type_id);
 -----------------------------------------------------------------------------
 alter table CampanyAccount_details  ADD CONSTRAINT FK_CampanyAccount_details_Person  FOREIGN KEY(Person_id) REFERENCES Persons(Person_id);
 --alter table CampanyAccount_details  ADD CONSTRAINT FK_CampanyAccount_details_transaction_type  FOREIGN KEY(transaction_type_id) REFERENCES transaction_type(transaction_type_id);
 alter table CampanyAccount_details  ADD CONSTRAINT FK_CampanyAccount_details_potato_Types FOREIGN KEY(potato_Types_id) REFERENCES potato_Types(potato_Types_id);
 --alter table CampanyAccount_details  ADD CONSTRAINT FK_CampanyAccount_details_payment_method FOREIGN KEY(payment_method_id) REFERENCES payment_method(payment_method_id);
----------------------------------------------------------------------------------
 --alter table FarmarAccount_total  ADD CONSTRAINT FK_FarmarAccount_total_Person  FOREIGN KEY(Person_id) REFERENCES Persons(Person_id);
 --alter table FarmarAccount_total  ADD CONSTRAINT FK_FarmarAccount_total_transaction_type  FOREIGN KEY(transaction_type_id) REFERENCES transaction_type(transaction_type_id);
 -----------------------------------------------------------------------------
 alter table FarmarAccount_details  ADD CONSTRAINT FK_FarmarAccount_details_Person  FOREIGN KEY(Person_id) REFERENCES Persons(Person_id);
 --alter table FarmarAccount_details  ADD CONSTRAINT FK_FarmarAccount_details_transaction_type  FOREIGN KEY(transaction_type_id) REFERENCES transaction_type(transaction_type_id);
 alter table FarmarAccount_details  ADD CONSTRAINT FK_FarmarAccount_details_potato_Types FOREIGN KEY(potato_Types_id) REFERENCES potato_Types(potato_Types_id);
 --alter table FarmarAccount_details  ADD CONSTRAINT FK_FarmarAccount_details_payment_method FOREIGN KEY(payment_method_id) REFERENCES payment_method(payment_method_id);
  ---------------------------------------------------------------------------------------------------------
 alter table Daily_sales_seeds  ADD CONSTRAINT FK_Daily_sales_seeds_Person  FOREIGN KEY(Person_id) REFERENCES Persons(Person_id);
 --alter table Daily_sales_seeds  ADD CONSTRAINT FK_Daily_sales_seeds_transaction_type  FOREIGN KEY(transaction_type_id) REFERENCES transaction_type(transaction_type_id);
 alter table Daily_sales_seeds  ADD CONSTRAINT FK_Daily_sales_seeds_potato_Types FOREIGN KEY(potato_Types_id) REFERENCES potato_Types(potato_Types_id);
 --alter table Daily_sales_seeds  ADD CONSTRAINT FK_Daily_sales_seeds_payment_sales_seeds_method FOREIGN KEY(payment_sales_seeds_method_id) REFERENCES payment_sales_seeds_method(payment_sales_seeds_method_id);
  ---------------------------------------------------------------------------------------------------------
 alter table daily_stores_seed  ADD CONSTRAINT FK_daily_stores_seed_Person  FOREIGN KEY(Person_id) REFERENCES Persons(Person_id);
 alter table daily_stores_seed  ADD CONSTRAINT FK_daily_stores_seed_potato_Types FOREIGN KEY(potato_Types_id) REFERENCES potato_Types(potato_Types_id);
  ---------------------------------------------------------------------------------------------------------
 -- alter table Emp  ADD CONSTRAINT FK_Emp_Type_id  FOREIGN KEY(Emp_Type_id) REFERENCES Emp_Type(Emp_Type_id);
  ---------------------------------------------------------------------------------------------------------
  alter table monthly_salary_employee  ADD CONSTRAINT FK_monthly_salary_employee_Emp_id  FOREIGN KEY(Emp_id) REFERENCES Emp(Emp_id);
  ---------------------------------------------------------------------------------------------------------
  alter table weekly_salary_employee  ADD CONSTRAINT FK_weekly_salary_employee_Emp_id  FOREIGN KEY(Emp_id) REFERENCES Emp(Emp_id);
  ---------------------------------------------------------------------------------------------------------
  alter table Daily_salary_employee  ADD CONSTRAINT FK_Daily_salary_employee_Emp_id  FOREIGN KEY(Emp_id) REFERENCES Emp(Emp_id);
  ---------------------------------------------------------------------------------------------------------
  ALTER TABLE [dbo].[Store_place]  ADD  CONSTRAINT [FK_Store_place_Emp] FOREIGN KEY([Store_place_id])REFERENCES Emp([Emp_id]);
  ----------------------------------------------------------------------------------------------------------
  ALTER TABLE [dbo].[CampanyAccount_details] ADD  CONSTRAINT [FK_CampanyAccount_details_Store_place_id] FOREIGN KEY([store_place_id])REFERENCES [dbo].[Store_place] ([Store_place_id])
  ----------------------------------------------------------------------------------------------------------
  ALTER TABLE [dbo].[CustomerAccount_details] ADD  CONSTRAINT [FK_CustomerAccount_details_Store_place_id] FOREIGN KEY([store_place_id])REFERENCES [dbo].[Store_place] ([Store_place_id])
  ----------------------------------------------------------------------------------------------------------
  ALTER TABLE [dbo].[FarmarAccount_details] ADD  CONSTRAINT [FK_FarmarAccount_details_Store_place_id] FOREIGN KEY([store_place_id])REFERENCES [dbo].[Store_place] ([Store_place_id])
  ----------------------------------------------------------------------------------------------------------
  ALTER TABLE [dbo].Daily_sales_seeds ADD  CONSTRAINT [FK_Daily_sales_seeds_Store_place_id] FOREIGN KEY([store_place_id])REFERENCES [dbo].[Store_place] ([Store_place_id])
  ----------------------------------------------------------------------------------------------------------
 ALTER TABLE [dbo].daily_stores_seed ADD  CONSTRAINT [FK_daily_stores_seed_Store_place_id] FOREIGN KEY([store_place_id])REFERENCES [dbo].[Store_place] ([Store_place_id])
  ----------------------------------------------------------------------------------------------------------
 
  --insert statments :)

  ------------------insert into Person_type-------------------------------------\
 --insert into Person_type(Person_Type_name) values('عميل');
 --insert into Person_type(Person_Type_name) values('مزارع');
 --insert into Person_type(Person_Type_name) values('شركه');
 --insert into Person_type(Person_Type_name) values('مورد');
 --use potatos
 --go
 ------------------insert into Emp_Type-------------------------------------\
 -- insert into Emp_Type(Emp_Type_name) values('شهرى');
 --insert into Emp_Type(Emp_Type_name) values('اسبوعى');
 --insert into Emp_Type(Emp_Type_name) values('يومى');
 
 --------------------insert into payment_method-------------------------------------\
 -- insert into payment_method(payment_method_name) values('نقدى');
 --insert into payment_method(payment_method_name) values('بنك');
 --insert into payment_method(payment_method_name) values('ايصال');
 --insert into payment_method(payment_method_name) values('اخرى');
 
 -------------------insert into transaction_type-------------------------------------\
 -- insert into transaction_type(transaction_type_name) values('بيع بطاطس');
 --insert into transaction_type(transaction_type_name) values('بيع تقاوى');
 --insert into transaction_type(transaction_type_name) values('شراء بطاطس');
 --insert into transaction_type(transaction_type_name) values('شراء تقاوى');

 --------------------insert into payment_sales_seeds_method-------------------------------------\
 -- insert into payment_sales_seeds_method(payment_sales_seeds_method_name) values('نقدى');
 -- insert into payment_sales_seeds_method(payment_sales_seeds_method_name) values('من حساب سابق');
 -- insert into payment_sales_seeds_method(payment_sales_seeds_method_name) values('آجل');