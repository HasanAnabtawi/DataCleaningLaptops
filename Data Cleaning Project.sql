



--Select all of data 

Select * From [Portfolio project].[dbo].[laptopData]



-- Select the data with blank rows

Select * From [Portfolio project].[dbo].[laptopData]
where [Id]='';


-- Delete the Blank rows

Delete From [Portfolio project].[dbo].[laptopData]
where [Id]='';


--Delete MSI Company records from the dataset 
Delete From [Portfolio project].[dbo].[laptopData]
where [Company]='MSI';




--Cpu Manufacturer Company splitting



Alter Table [Portfolio project].[dbo].[laptopData]
Add Cpu_Manufacturer Varchar(50);

update [Portfolio project].[dbo].[laptopData]
set Cpu_Manufacturer=SUBSTRING(Cpu,1,CHARINDEX(' ',Cpu,1));


-- Cpu Model splitting

Alter Table [Portfolio project].[dbo].[laptopData]
Add Cpu_Model Varchar(50);


update [Portfolio project].[dbo].[laptopData]
set Cpu_Model=SUBSTRING(Cpu,CHARINDEX(' ',Cpu,1),LEN(Cpu));


--Gpu Manufacturer Company splitting

Alter Table [Portfolio project].[dbo].[laptopData]
Add Gpu_Manufacturer Varchar(50);

update [Portfolio project].[dbo].[laptopData]
set Gpu_Manufacturer=SUBSTRING(Gpu,1,CHARINDEX(' ',Gpu,1));


-- Cpu Model splitting

Alter Table [Portfolio project].[dbo].[laptopData]
Add Gpu_Model Varchar(50);

update [Portfolio project].[dbo].[laptopData]
set Gpu_Model=SUBSTRING(Gpu,CHARINDEX(' ',Gpu,1),LEN(Gpu));
















