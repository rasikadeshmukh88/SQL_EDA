use `awesome chocolates`;
show tables;
select * from sales;

# show few columns from sales table
select SaleDate,Customers from sales;

# Adding calculated column
select SaleDate,Amount,Boxes,Amount/Boxes from sales;

#Naming a calculated column
select SaleDate,Amount,Boxes,Amount/Boxes as 'amountperboxes' from sales;

#Use of where clause(filters the records)
select * from sales where Amount>10000;

#Use of ORDER BY
select * from sales where Amount>10000 ORDER BY Amount desc;

select * from sales where GeoID='G1' ORDER BY Amount desc ;

select * from sales where Amount>10000 and SaleDate>='2022-01-01';

#Using year function
select SaleDate,Amount from sales where Amount>10000 and year(SaleDate)=2022;

#Use of BETWEEN
select * from sales where Boxes >0 and Boxes < 50;

select * from sales where Boxes between 0 and 50;

#Using weekday function in SQL
select SaleDate,Amount,Boxes, weekday(SaleDate) as 'DayOfWeek' from sales where weekday(SaleDate)=2;

#Working with people table
select * from people;

select * from people where Team='Jucies' or Team='Yummies';

# IN operator
select * from people where Team in ('Jucies','Yummies');

#Like operator
select * from people where Salesperson LIKE 'B%';
select * from people where Salesperson LIKE '%B%';

# use of case to create branching logic
select SaleDate,Amount,
case when Amount < 1000 then 'Under 1K'
when Amount < 5000 then 'Under 5K'
when Amount < 10000 then 'Under 10K'
else '10K or More'
END AS Amount_Category from sales;

