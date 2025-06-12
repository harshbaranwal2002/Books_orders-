-- create table books(
-- Book_ID	serial primary key,
-- Title varchar(200),	
-- Author	varchar(200),
-- Genre varchar(200),	
-- Published_Year	int,
-- Price  numeric(100,20),	
-- Stock int
-- );
-- select *from books;
-- drop table if exists books;


-- create table customers(
-- Customer_ID	serial primary key,
-- Name varchar(100),
-- Email varchar(100),	
-- Phone varchar(100),
-- City varchar(100),
-- Country varchar(100)
-- );
 -- drop table if exists customers;
-- select *from customers

--  create table orders(
--  Order_ID serial primary key,
--  Customer_ID int references customers(Customer_ID) ,	
--  Book_ID int references books(Book_ID),
--  Order_Date	DATE,
--  Quantity int,	
--  Total_Amount Numeric(10,2)
-- -- )
--  select *from orders

--(1).Retrive all books published in the "Fiction" genre:
-- select *from books
-- where genre='Fiction';


--(2).Find the books published after year 1950:
-- select *from books
-- where published_year>1950;

--(3).List of all employees from the canada:
-- select *from Customers
-- where Country='Canada'

--(4).Show orders placed in november 2023:
   -- select *from orders
   -- where Order_date between '01-11-2023' and '30-11-2023'


--(5).Retrive the total stocks of the book avaliavble:
 -- select SUM(stock) as Total_stocks
 -- from books

--(6).find the detail of most expensive books:
    -- select *from books order by  price desc limit 1;

	
-- (7).show all coustomers who ordered more than 1 books:
  --    select *from orders 
	 -- where Quantity >1
	 
--(8).Retrive all orders where the total amount is exceed 20$:
  --    select *from orders
	 -- where Total_amount>20

	 
--(9).List of all genres avalaible in book table:
  -- select distinct genre from books 

  --(10).Find the books with lowest stock
  -- select *from books order by stock asc limit 1;

  --(11).Calculate to generate the total revenue from the all the orders.
 --    select Sum(Total_amount) as revenue 
 -- from orders

 --ADVANCE 	QUESTIONS
 
 --(1).Select the total number of books sold by each genre:
 -- select b.Genre ,sum(o.Quantity) as Sum_of_total_books
 -- from orders o
 -- join books b on o.book_id=b.book_id
 -- group by genre
 

-- (2).Find the average price of books in fanatsy game:
	-- select avg(price) as Average_price 
	-- from books 
	-- where genre='Fantasy'

--(3).List of customers who placed at least two orders:
  --    select customer_id ,count(order_id) as total_order_cunt 
	 -- from orders 
	 -- group by customer_id
	 -- Having count(order_id)>=2

--(4).Find the most frequent ordered books:
 --    select book_id, count(order_id) as order_count
	-- from orders
	-- group by book_id
	-- order by order_count desc

--(5).show the top most 3 most expensive books of fantasy Genre:
-- select *from books 
-- where Genre='fantasy'
-- order by price desc limit 3

--(6).Total number of books sold by each author
-- select b.author ,sum(o.quantity) as total_books_sold
-- from orders o
-- join books b on o.book_id=b.book_id
-- group by b.author;