delete from m_item_type where time_type = ${time_type} and time_id = '${time_id}';  -- 删除mysql中表数据，mysql语法
@m_item_type -- MySQL表名
select time_type, time_id, item_type, user_no, item_no, shop_no, warehouse_no  -- hive数据查询
from dm.m_item_type
where time_type = ${time_type} and time_id = '${time_id}';
