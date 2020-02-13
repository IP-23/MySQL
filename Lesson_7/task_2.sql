-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

use shop_ip;

select p.id, p.name, p.description, p.price, c.name
from products p
left join catalogs c on p.catalog_id = c.id;