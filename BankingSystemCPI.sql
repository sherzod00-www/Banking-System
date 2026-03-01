1. select top 3 CustomerID, sum(Balance) as TotalBalance
from Accounts group by CustomerID
order by TotalBalance desc

2. select c.CustomerID, c.FullName, count(*) as ActiveLoanCount from Loans l 
join Customers c ON l.CustomerID = c.CustomerID
where l.Status = 'Active'
group by c.CustomerID, c.FullName
having count(*) > 1

3. select t.TransactionID, t.AccountID, t.Amount, t.Date, f.RiskLevel, f.ReportedDate
from FraudDetection f
join Transactions t
on f.TransactionID = t.TransactionID

4. select a.BranchID, sum(l.Amount) as TotalLoanAmount from Loans l
join Accounts a
on l.CustomerID = a.CustomerID
group by a.BranchID

5. with LargeTransactions as (select AccountID, Amount, Date, 
lag(Date) over (partition by AccountID order by Date) as PrevDate
from Transactions
where Amount > 10000)
select * from LargeTransactions
where PrevDate is not null
and datediff(minute, PrevDate, Date) <= 60