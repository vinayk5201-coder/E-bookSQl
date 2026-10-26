create database onlinebook;
use onlinebook;

select * from book.books;
select * from book.customers;
select * from book.orders;
-- 1) Retrieve all books in the "Fiction" genre
select * from book.books where genre='Fiction';
-- 2) retrieve number of fiction book
select COUNT(*) as fiction_books from book.books where genre ='fiction';
-- 3) find all books published after 1950
select * from book.books where published_year>1950;
-- 4)list all customers from canada
select * from book.customers where country = 'canada';
-- 5) show order placed in november 2023
select * from book.orders where Order_Date Between '1/11/2023'and '30/11/2023';
-- 6) retrieve the total number of stock available
select sum(stock) AS total_stock from book.books;
-- 7) find the detail of the most expensive book
select * from book.books where price=(select max(price) from book.books);
-- 8) show the customers who ordered more than  one book
select customer_id, quantity from book.orders where quantity>1;
-- 9) retreive all the orders where the total amount exceeds 20$
select * from book.orders where total_amount>20;
-- 10) list all the genres available in book table
select genre from book.books group by genre;
-- 11) find the book with the lowest stock
select * from book.books where stock=(select min(stock)from book.books);
-- 12) calculate the total revenue generated from all orders 
select sum(total_amount) as total_revenue from book.orders;


    



