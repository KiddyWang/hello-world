select so.*
from dbo.SaleOperation so
inner join dbo.InvoiceLine il on so.SaleOperation_id = il.SaleOperation_id
inner join dbo.Invoice i on i.Booking_id = so.Sale_id
inner join dbo.CustomerILab ci on ci.Customer_id = i.Customer_id
inner join dbo.GrammarProDetail gpd on gpd.CustomerILab_id = ci.CustomerILab_id
left join dbo.CustomPriceVariableValue_lkp cpvv on cpvv.CustomPriceVariableValue_id = il.CustomPriceVariableValue_id
left join dbo.SaleOperationType_lkp sot on sot.SaleOperationType_id = so.SaleOperationType_id
where 
il.SalesItem_id = 5864 and sot.SaleOperationType_id = 3

select i.*
from dbo.InvoiceLine il 
left join dbo.SaleOperation so on so.SaleOperation_id = il.SaleOperation_id
left join dbo.Invoice i on il.Invoice_id = i.Invoice_id
left join dbo.CustomerILab ci on ci.Customer_id = i.Customer_id
left join dbo.GrammarProDetail gpd on gpd.CustomerILab_id = ci.CustomerILab_id
left join dbo.CustomPriceVariableValue_lkp cpvv on cpvv.CustomPriceVariableValue_id = il.CustomPriceVariableValue_id
left join dbo.SaleOperationType_lkp sot on sot.SaleOperationType_id = so.SaleOperationType_id
where 
il.SalesItem_id = 5864 
order by i.Customer_id, so.CompleteDate

select il.*
from dbo.InvoiceLine il where il.InvoiceLine_id = 17294740
