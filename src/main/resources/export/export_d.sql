delete from m_item_type where time_type = ${time_type} and time_id = '${time_id}'; -- 删除Rdb表数据，Rdb语法
@m_item_type -- Rdb表名
select cast(time_type as smallint) time_type,
       time_id,
       cast(item_type as smallint) item_type,
       user_no,
       item_no,
       shop_no,
       warehouse_no -- hive数据查询,字段名、数据类型与Rdb保持一致
from dm.m_item_type
where time_type = ${time_type}
  and time_id = '${time_id}';
