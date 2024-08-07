--주문 받은 횟수가 높은 담당자 순서로 리스트 출력

SELECT Emp.EmployeeID, Ord.CustomerID
FROM Employees Emp
         LEFT JOIN ORDERS Ord
                   on Emp.EmployeeID = Ord.CustomerID
ORDER BY Ord.CustomerID DESC
;