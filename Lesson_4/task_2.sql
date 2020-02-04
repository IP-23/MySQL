-- ii. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке

use vk_ip;

select distinct firstname from users order by firstname asc;
