--주문 받은 횟수가 높은 담당자 순서로 리스트 출력

SELECT Emp.EmployeeID, Ord.EmployeeID
FROM Employees Emp
         LEFT JOIN ORDERS Ord
                   on Emp.EmployeeID = Ord.EmployeeID
ORDER BY Ord.CustomerID DESC
;

-- gpt ver

SELECT Emp.EmployeeID, COUNT(Ord.OrderID) AS "주문받은횟수"
FROM Employees Emp
         LEFT JOIN Orders Ord ON Emp.EmployeeID = Ord.EmployeeID
GROUP BY Emp.EmployeeID
ORDER BY "주문받은횟수" DESC;