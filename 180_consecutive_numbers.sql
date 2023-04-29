# https://leetcode.com/problems/consecutive-numbers/

# Write your MySQL query statement below
select
    distinct Num as ConsecutiveNums
from (
        select Num, @cnt := if(@prev = (@prev := Num), @cnt + 1, 1) as freq
        from Logs,
            (
                select @cnt := 0, @prev := ( select Num from Logs limit 1 )
            ) as c
    ) as n
where
    freq > 2;