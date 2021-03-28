
sales:([]
    fruit:10?`apple`banana`orange;
    grocer:10?`dave`mark`jane;
    price:10?10;
    quantity:10?100
)

/- selects

select from sales
select quantity, fruit from sales
select grocer, quantity from sales where fruit=`apple
select grocer, quantity by fruit from sales
select sum quantity by fruit from sales
select sum quantity*price by fruit, grocer from sales
select profit: sum quantity*price by fruit, grocer from sales

select[3] from sales
select[2 3] from sales
select[>grocer] from sales
select[<grocer] fruit, price from sales where fruit in `banana`apple
select[3;<grocer] fruit, price from sales where fruit in `banana`apple

3 sublist select from sales
3 2 sublist select from sales

`grocer`fruit xasc select from sales

select [10;<price] fruit, price from sales
10#`price xasc select fruit, price from sales
10#select [<price] fruit, price from sales
`price xasc 10 sublist select fruit, price from sales

/- exec
exec fruit from sales
exec fruit, price from sales
exec fruit!price from sales
exec fruit!price by grocer from sales
