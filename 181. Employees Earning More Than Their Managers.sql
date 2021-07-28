# Write your MySQL query statement below
select e.Name as Employee from Employee as e, Employee as m where m.id = e.ManagerId and m.Salary < e.Salary