# https://leetcode.com/problems/combine-two-tables/

# Write your MySQL query statement below

select firstName,lastName,city,state
from Person as person
left join Address as address
on person.personId = address.personId