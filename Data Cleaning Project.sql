



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
Select SUBSTRING(Cpu,1,CHARINDEX(' ',Cpu,1)) Cpu_Manufacturer From [Portfolio project].[dbo].[laptopData]

-- Cpu Model splitting
Select SUBSTRING(Cpu,CHARINDEX(' ',Cpu,1),LEN(Cpu)) Cpu_Model  From [Portfolio project].[dbo].[laptopData]

--Gpu Manufacturer Company splitting
Select SUBSTRING(Gpu,1,CHARINDEX(' ',Gpu,1)) Gpu_Manufacturer From [Portfolio project].[dbo].[laptopData]

-- Cpu Model splitting
Select SUBSTRING(Gpu,CHARINDEX(' ',Gpu,1),LEN(Gpu)) Gpu_Model  From [Portfolio project].[dbo].[laptopData]














