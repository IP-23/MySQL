-- 1. Подсчитайте средний возраст пользователей в таблице users

use shop_ip;

select round(avg(timestampdiff(year, birthday_at, now())), 1) as age
from users;