-- execute group by

select * from [dbo].[Sales];

select paymentmethod,productid, sum(totalamount) [total amount] from [dbo].[Sales]
group by PaymentMethod,productid
--order by ProductID