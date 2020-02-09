-- iv. Написать скрипт, удаляющий сообщения «из будущего» (дата позже сегодняшней)

use vk_ip;

delete from messages where created_at > now();
