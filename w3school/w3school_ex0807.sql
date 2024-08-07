--주문을 받지 못한 회사원을 찾아라

SELECT Emp.EmployeeID, Ord.CustomerID
FROM Employees Emp
         LEFT JOIN ORDERS Ord
                   on Emp.EmployeeID = Ord.CustomerID
WHERE Ord.CustomerID is null
;

-- gpt ver(Correct)
SELECT Emp.EmployeeID
FROM Employees Emp
         LEFT JOIN Orders Ord ON Emp.EmployeeID = Ord.EmployeeID
WHERE Ord.EmployeeID IS NULL;