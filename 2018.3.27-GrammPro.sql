SELECT  * from InvoiceLine where SalesItem_id = 5864   order by insertdate desc
select * from  [dbo].[SalesItemPriceDetail] where SchoolSalesItem_id =  228686
--select * from SaleOperation

select * from dbo.CustomPriceVariableValue_lkp


select * from dbo.SaleOperation where SaleOperation_id = 6430082
select * from dbo.Invoice where Booking_id = 5682532


select * from dbo.SaleOperationType_lkp

select * from dbo.SalesItem where SalesItemName like '%GramPro%'
--select top 10 * from dbo.SalesItemBase where SalesItem_id = 5864
select top 5 * from dbo.SalesItemSetBase order by UpdateDate desc 
select top 5 * from  [dbo].[SalesItemPriceDetail] order by UpdateDate desc 
select * from dbo.SchoolSalesItem where SchoolSalesItem_id = 228686
select * from  [dbo].[SalesItemPriceDetail] where SchoolSalesItem_id =  228686
-- 5864	HF-iLab-GramPro

select top 5 * from dbo.GrammarProDetail order by insertdate desc

select * from CustomerILab where CustomerILab_id = 1422622

select * from CustomerILabDetail where CustomerILab_id = 1422622

select il.CustomPriceVariableValue_id,il.UnitPrice
,*
--, spd.CustomPriceVariableValue_id,spd.PricePerUnit,so.* 
from dbo.SaleOperation so
inner join dbo.InvoiceLine il on so.SaleOperation_id = il.SaleOperation_id
inner join dbo.SchoolSalesItem ssi on il.SchoolSalesItem_id = ssi.SchoolSalesItem_id and il.SalesItem_id = ssi.SalesItem_id
--inner join dbo.SalesItemPriceDetail spd on spd.SchoolSalesItem_id = ssi.SchoolSalesItem_id 
--and spd.CustomPriceVariableValue_id = il.CustomPriceVariableValue_id
--and spd.PricePerUnit = il.UnitPrice 
--inner join dbo.Invoice i on i.Booking_id = so.Sale_id
--inner join dbo.CustomerILab ci on ci.Customer_id = i.Customer_id
--inner join dbo.GrammarProDetail gpd on gpd.CustomerILab_id = ci.CustomerILab_id
where 
--(il.insertDate >= spd.saleDateFrom and il.insertDate <= spd.salesDateTo) and 
il.SalesItem_id = 5864


select * from dbo.SaleOperation where sale_id = 5682534
select * from dbo.InvoiceLine where SaleOperation_id = 6430084

