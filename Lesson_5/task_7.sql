-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

use shop_ip;

select date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))), '%W') as `weekday`,
	   count(*) as count_birthday
from users
group by `weekday`;