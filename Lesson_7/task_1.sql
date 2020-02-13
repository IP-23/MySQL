-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

use shop_ip;

INSERT INTO `orders` (user_id) VALUES 
('3'),
('1'),
('4'),
('5');

INSERT INTO `orders_products` (order_id, product_id, total) VALUES 
('1', '2', 2),
('2', '6', 2),
('3', '3', 3),
('4', '1', 1);

select distinct users.id, name
from users
join orders on orders.user_id = users.id;


