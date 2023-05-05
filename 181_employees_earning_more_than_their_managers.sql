# https://leetcode.com/problems/employees-earning-more-than-their-managers/
# Write your MySQL query statement below

select e.Name as Employee
from Employee as e
inner join Employee as m
on e.ManagerId = m.id
where e.Salary > m.Salary;