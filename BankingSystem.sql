1. select * from Customers
2. select * from Accounts
3. select * from Transactions
4. select * from Branches
5. select * from Employees
6. select * from CreditCards
7. select * from CreditCardTransactions
8. select * from OnlineBankingUsers
9. select * from BillPayments
10. select * from MobileBankingTransactions
11. select * from Loans
12. select * from LoanPayments
13. select * from CreditScores
14. select * from DebtCollection
15. select * from KYC
16. select * from FraudDetection
17. select * from AMLCases
18. select * from RegulatoryReports
19. select * from Departments
20. select * from Salaries
21. select * from EmployeeAttendance
22. select * from Investments
23. select * from StockTradingAccounts
24. select * from ForeignExchange
25. select * from InsurancePolicies
26. select * from Claims
27. select * from UserAccessLogs
28. select * from CyberSecurityIncidents
29. select * from Merchants
30. select * from MerchantTransactions

ALTER TABLE Customers
ADD CONSTRAINT PK_Customers
PRIMARY KEY (CustomerID);

ALTER TABLE Accounts
ADD CONSTRAINT PK_Accounts
PRIMARY KEY (AccountID);

ALTER TABLE Transactions
ADD CONSTRAINT PK_Transactions
PRIMARY KEY (TransactionID);

ALTER TABLE Branches
ADD CONSTRAINT PK_Branches
PRIMARY KEY (BranchID);

ALTER TABLE Employees
ADD CONSTRAINT PK_Employees
PRIMARY KEY (EmployeeID);

ALTER TABLE CreditCards
ADD CONSTRAINT PK_CreditCards
PRIMARY KEY (CardID);

ALTER TABLE CreditCardTransactions
ADD CONSTRAINT PK_CreditCardTransactions
PRIMARY KEY (TransactionID);

ALTER TABLE OnlineBankingUsers
ADD CONSTRAINT PK_OnlineBankingUsers
PRIMARY KEY (UserID);

ALTER TABLE BillPayments
ADD CONSTRAINT PK_BillPayments
PRIMARY KEY (PaymentID);

ALTER TABLE MobileBankingTransactions
ADD CONSTRAINT PK_MobileBankingTransactions
PRIMARY KEY (TransactionID);

ALTER TABLE Loans
ADD CONSTRAINT PK_Loans
PRIMARY KEY (LoanID);

ALTER TABLE LoanPayments
ADD CONSTRAINT PK_LoanPayments
PRIMARY KEY (PaymentID);

ALTER TABLE CreditScores
ADD CONSTRAINT PK_CreditScores
PRIMARY KEY (CustomerID);

ALTER TABLE DebtCollection
ADD CONSTRAINT PK_DebtCollection
PRIMARY KEY (DebtID);

ALTER TABLE KYC
ADD CONSTRAINT PK_KYC
PRIMARY KEY (KYCID);

ALTER TABLE FraudDetection
ADD CONSTRAINT PK_FraudDetection
PRIMARY KEY (FraudID);

ALTER TABLE AMLCases
ADD CONSTRAINT PK_AML
PRIMARY KEY (CaseID);

ALTER TABLE RegulatoryReports
ADD CONSTRAINT PK_RegulatoryReports
PRIMARY KEY (ReportID);

ALTER TABLE Departments
ADD CONSTRAINT PK_Departments
PRIMARY KEY (DepartmentID);

ALTER TABLE Salaries
ADD CONSTRAINT PK_Salaries
PRIMARY KEY (SalaryID);

ALTER TABLE EmployeeAttendance
ADD CONSTRAINT PK_EmployeeAttendance
PRIMARY KEY (AttendanceID);

ALTER TABLE Investments
ADD CONSTRAINT PK_Investments
PRIMARY KEY (InvestmentID);

ALTER TABLE StockTradingAccounts
ADD CONSTRAINT PK_StockTradingAccounts
PRIMARY KEY (AccountID);

ALTER TABLE ForeignExchange
ADD CONSTRAINT PK_ForeignExchange
PRIMARY KEY (FXID);

ALTER TABLE InsurancePolicies
ADD CONSTRAINT PK_InsurancePolicies
PRIMARY KEY (PolicyID);

ALTER TABLE Claims
ADD CONSTRAINT PK_Claims
PRIMARY KEY (ClaimID);

ALTER TABLE UserAccessLogs
ADD CONSTRAINT PK_UserAccessLogs
PRIMARY KEY (LogID);

ALTER TABLE CyberSecurityIncidents
ADD CONSTRAINT PK_CyberSecurityIncidents
PRIMARY KEY (IncidentID);

ALTER TABLE Merchants
ADD CONSTRAINT PK_Merchants
PRIMARY KEY (MerchantID);

ALTER TABLE MerchantTransactions
ADD CONSTRAINT PK_MerchantTransactions
PRIMARY KEY (TransactionID);



ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Loans
ADD CONSTRAINT FK_Loans_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE CreditCards
ADD CONSTRAINT FK_CreditCards_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE InsurancePolicies
ADD CONSTRAINT FK_InsurancePolicies_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Investments
ADD CONSTRAINT FK_Investments_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE MobileBankingTransactions
ADD CONSTRAINT FK_MobileBanking_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE BillPayments
ADD CONSTRAINT FK_BillPayments_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE ForeignExchange
ADD CONSTRAINT FK_ForeignExchange_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE StockTradingAccounts
ADD CONSTRAINT FK_StockTrading_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE KYC
ADD CONSTRAINT FK_KYC_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE AMLCases
ADD CONSTRAINT FK_AMLCases_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE CreditScores
ADD CONSTRAINT FK_CreditScores_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE DebtCollection
ADD CONSTRAINT FK_DebtCollection_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE OnlineBankingUsers
ADD CONSTRAINT FK_OnlineBanking_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Transactions
ADD CONSTRAINT FK_Transactions_Accounts
FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID);

ALTER TABLE LoanPayments
ADD CONSTRAINT FK_LoanPayments_Loans
FOREIGN KEY (LoanID) REFERENCES Loans(LoanID);

ALTER TABLE CreditCardTransactions
ADD CONSTRAINT FK_CreditCardTransactions_CreditCards
FOREIGN KEY (CardID) REFERENCES CreditCards(CardID);

ALTER TABLE Claims
ADD CONSTRAINT FK_Claims_InsurancePolicies
FOREIGN KEY (PolicyID) REFERENCES InsurancePolicies(PolicyID);

ALTER TABLE FraudDetection
ADD CONSTRAINT FK_FraudDetection_Transactions
FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID);


ALTER TABLE MerchantTransactions
ADD CONSTRAINT FK_MerchantTransactions_Merchants
FOREIGN KEY (MerchantID) REFERENCES Merchants(MerchantID);

ALTER TABLE MerchantTransactions
ADD CONSTRAINT FK_MerchantTransactions_CreditCards
FOREIGN KEY (CardID) REFERENCES CreditCards(CardID);

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Branches
FOREIGN KEY (BranchID) REFERENCES Branches(BranchID);

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Departments
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

ALTER TABLE EmployeeAttendance
ADD CONSTRAINT FK_EmployeeAttendance_Employees
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE Salaries
ADD CONSTRAINT FK_Salaries_Employees
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE UserAccessLogs
ADD CONSTRAINT FK_UserAccessLogs_Employees
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);


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




