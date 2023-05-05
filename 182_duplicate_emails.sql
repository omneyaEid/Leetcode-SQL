# https://leetcode.com/problems/duplicate-emails/
# Write your MySQL query statement below

SELECT Email
from Person
GROUP BY Email
HAVING count(Email) > 1 ;