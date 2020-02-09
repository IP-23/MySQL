-- 3. Подсчитайте произведение чисел в столбце id таблицы catalogs.

use shop_ip;

select exp(sum(log(id))) as multiplication
from catalogs;