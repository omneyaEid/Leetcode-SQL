# https://leetcode.com/problems/nth-highest-salary/
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
declare position INT;
set position = N -1 ;
  RETURN (
      # Write your MySQL query statement below.
      SELECT IFNULL((
      select distinct Salary
      from Employee
      order by Salary desc
      limit 1 offset position ),null)
  );
END