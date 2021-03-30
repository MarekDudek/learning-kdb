
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

/- update
update salevalue:price*quantity from sales
update totalqunatity:sums quantity from sales
update totalqunatity:sums quantity by fruit from sales
update price:11 from sales where fruit=`banana
update price:11 from `sales where fruit=`banana

/- delete
delete grocer, quantity from sales
delete from sales where grocer=`jane

/- delete column
delete price from `sales
/- delete table
delete sales from `.
tables[]
/- delete everything
delete from `.
\a

cars:([]
    brand:`symbol$();
    model:`symbol$();
    purchasedate:`date$()
)

`cars insert (`bwm;`318;2012.09.08)

`cars insert (`audi`ford;`a5`fiesta;2013.01.21 2013.06.20)
`cars insert cars
`cars insert delete model from cars
cars,:cars

/- upsert
fruitprice:([fruit:`apple`banana] price:10 20; quantity:100 50)
`fruitprice upsert (`apple;11;800)
`fruitprice upsert ([] fruit:`apple`orange;price: 11 23; quantity: 800 98)
`fruitprice upsert ([]price:89 21; fruit:`banana`pineapple)
fruitprice

cars