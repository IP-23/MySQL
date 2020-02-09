-- 5. Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
-- Отсортируйте записи в порядке, заданном в списке IN.

use shop_ip;

select *, field(id, 5, 1, 2) as weight 
from catalogs
where id in (1, 2, 5)
order by weight asc;
