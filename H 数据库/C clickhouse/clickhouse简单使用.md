

```
									       修订记录
```

| 日期 | 修订版本 | 修改章节 | 修改描述 | 作者 |
| ---- | -------- | -------- | -------- | ---- |
| 5.21 | 0.1      | 全部     | 创建文档 | 王涛 |

### 进入clickhouse

`clickhouse-client`

```
root@v1:/mnt/workspace/wt# clickhouse-client
ClickHouse client version 21.4.6.55 (official build).
Connecting to localhost:9000 as user default.
Connected to ClickHouse server version 21.4.6 revision 54447.

v1 :) 
```

### 退出数据库

`exit`

```
v1 :) exit
Bye.
```



### 数据库查看

`show databases`

```
v1 :) show databases

SHOW DATABASES

Query id: 038d75d9-7d2e-47b9-93c8-aebc2749c903

┌─name──────┐
│ default   │
│ link_001  │
│ link_002  │
│ link_1234 │
│ link_None │
│ sa        │
│ system    │
└───────────┘
```

### 选择具体的数据库

`use <db_name>`

```
v1 :) use link_001

USE link_001

Query id: 4c17e932-7f4f-4683-8467-6259ff30b4c6

Ok.

0 rows in set. Elapsed: 0.003 sec. 
```

### 查看数据库下的表

`show tables`

```
v1 :) show tables

SHOW TABLES

Query id: dfad7993-909c-485e-bfd0-6279ab778fdb

┌─name───────────────────────────────────────────┐
│ .inner_id.0a8c4327-0012-4437-bb35-251f156ff584 │
│ .inner_id.12726bf4-edf4-4d07-b33a-a286c2ceb246 │
│ .inner_id.1f38671f-cd5d-4fa6-be63-00e73c13acfe │
│ .inner_id.34fce136-dba6-4898-adf2-b655f111292e │
│ .inner_id.3f0bd86a-c11a-4d2a-9978-f781d5f8130d │
│ .inner_id.40980f8e-0ce5-4134-8e9a-fb0deaf9fa7b │
│ .inner_id.4c65afb1-3c9b-471b-b37f-819b33a86fca │
│ .inner_id.4caf5dbb-2499-4e0d-828b-91e761a376eb │
│ .inner_id.597e0726-a756-4bf1-931d-39d2f17a4e88 │
│ .inner_id.60b8320c-9379-4fe1-a1b4-6f9fd91da98d │
│ .inner_id.689d8f95-946a-45b6-ad6a-ddb614a279c8 │
│ .inner_id.7629f174-a125-4301-a017-ea619ffdc04a │
│ .inner_id.7e4e093c-c0bb-4e39-b5a1-32900f4a498e │
│ .inner_id.7e78fe67-6129-42bb-806b-83d22da03339 │
│ .inner_id.8ab592d2-03e1-41c6-b254-ea80c96153a6 │
│ .inner_id.8e075266-ba02-4efa-a5c8-b8cc250108ca │
│ .inner_id.9a1cf2bf-ad6e-4fb2-bcd0-b12eae590159 │
│ .inner_id.a36b29cd-ba0b-4eea-b3d1-234579d25d06 │
│ .inner_id.d0a9ca18-fadf-4b61-99bb-43ff9e6772f0 │
│ .inner_id.deb4fe91-efce-4b37-916f-d7986ffa72f7 │
│ .inner_id.e136dfca-3985-4b93-800b-69ec0d255bdd │
│ .inner_id.ef09f81a-54c8-45ff-87e6-82adef877674 │
│ .inner_id.fdb384be-93b8-40f0-b0f7-e76da02260d6 │
│ .inner_id.ff13334b-aa60-439f-bd36-0156395ff414 │
│ t_alarm_all_all                                │
│ t_alarm_feature_value                          │
│ t_alarm_flow_all                               │
│ t_alarm_flow_baseline                          │
│ t_alarm_flow_black_list                        │
│ t_alarm_flow_domain                            │
│ t_alarm_flow_high                              │
│ t_alarm_flow_mail                              │
│ t_alarm_flow_rate                              │
│ t_alarm_flow_session                           │
│ t_alarm_flow_sudden                            │
│ t_alarm_trade_all                              │
│ t_alarm_trade_baseLine                         │
│ t_alarm_trade_log                              │
│ t_alarm_trade_statistic                        │
│ t_alarm_trade_sudden                           │
│ t_alarm_voip_all                               │
│ t_alarm_voip_between_network_segment_statistic │
│ t_alarm_voip_network_segment_statistic         │
│ t_alarm_voip_session                           │
│ t_alarm_voip_statistic                         │
│ t_alarm_voip_terminal                          │
│ t_alarm_voip_terminal_session                  │
│ t_traffic_recall                               │
│ t_traffic_recall_summary                       │
│ t_voip_traffic                                 │
│ t_voip_traffic_summary                         │
│ v_traffic_aggregate                            │
│ v_traffic_compare_day                          │
│ v_traffic_compare_five_minute                  │
│ v_traffic_compare_hour                         │
│ v_traffic_compare_minute                       │
│ v_traffic_compare_second                       │
│ v_traffic_compare_ten_minute                   │
│ v_traffic_compare_ten_second                   │
│ v_traffic_timeline_day                         │
│ v_traffic_timeline_five_minute                 │
│ v_traffic_timeline_hour                        │
│ v_traffic_timeline_minute                      │
│ v_traffic_timeline_second                      │
│ v_traffic_timeline_ten_minute                  │
│ v_traffic_timeline_ten_second                  │
│ v_voip_traffic_aggregate_session               │
│ v_voip_traffic_aggregate_terminal              │
│ v_voip_traffic_timeline_day                    │
│ v_voip_traffic_timeline_five_minute            │
│ v_voip_traffic_timeline_hour                   │
│ v_voip_traffic_timeline_minute                 │
│ v_voip_traffic_timeline_second                 │
│ v_voip_traffic_timeline_ten_minute             │
│ v_voip_traffic_timeline_ten_second             │
└────────────────────────────────────────────────┘

75 rows in set. Elapsed: 0.016 sec. 
```

### 查看表下的数据

`select * from <table_name> limit 10`

```
v1 :) select * from t_alarm_feature_value

SELECT *
FROM t_alarm_feature_value

Query id: de89bc2e-996f-437a-8eaa-3bd97df9cc50

┌─name────────────────┬───record_time─┬────start_time─┬─alarm_level─┬─alarm_rule─────────────────┬─is_ipv6─┬─src_ip───────────┬─src_port─┬─src_country─┬─src_province─┬─src_city─┬─dst_ip───────────┬─dst_port─┬─dst_country─┬─dst_province─┬─dst_city─┐
│ feature_value_alarm │ 1622627761225 │ 1622627761225 │           1 │ 命中特征值字符串aaabbbbccc │       0 │ ::192.168.221.26 │     8080 │ 中国        │ 湖北         │ 武汉     │ ::192.168.221.28 │     9090 │ 中国        │ 浙江         │ 杭州     │
└─────────────────────┴───────────────┴───────────────┴─────────────┴────────────────────────────┴─────────┴──────────────────┴──────────┴─────────────┴──────────────┴──────────┴──────────────────┴──────────┴─────────────┴──────────────┴──────────┘
┌─name──────────┬─record_time─┬─start_time─┬─alarm_level─┬─alarm_rule────┬─is_ipv6─┬─src_ip───────────┬─src_port─┬─src_country───┬─src_province──┬─src_city──────┬─dst_ip───────────┬─dst_port─┬─dst_country───┬─dst_province──┬─dst_city──────┐
│ Michele Gomez │  1624113245 │ 1624113245 │         183 │ Michele Gomez │     183 │ ::117.221.158.25 │    58265 │ Michele Gomez │ Michele Gomez │ Michele Gomez │ ::117.221.158.25 │    58265 │ Michele Gomez │ Michele Gomez │ Michele Gomez │
└───────────────┴─────────────┴────────────┴─────────────┴───────────────┴─────────┴──────────────────┴──────────┴───────────────┴───────────────┴───────────────┴──────────────────┴──────────┴───────────────┴───────────────┴───────────────┘

2 rows in set. Elapsed: 0.005 sec. 
```

### 常用的工具类语法

#### 查看建表语句

`show create table <table_name>`

```
v1 :) show create table t_alarm_feature_value

SHOW CREATE TABLE t_alarm_feature_value

Query id: 97951b32-ca44-437f-ae46-3e7c30a45839

┌─statement──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ CREATE TABLE link_001.t_alarm_feature_value
(
    `name` String,
    `record_time` UInt64,
    `start_time` UInt64,
    `alarm_level` UInt8,
    `alarm_rule` String,
    `is_ipv6` UInt8,
    `src_ip` IPv6,
    `src_port` UInt16,
    `src_country` String,
    `src_province` String,
    `src_city` String,
    `dst_ip` IPv6,
    `dst_port` UInt16,
    `dst_country` String,
    `dst_province` String,
    `dst_city` String
)
ENGINE = MergeTree
PARTITION BY toYYYYMMDD(toDateTime(record_time))
ORDER BY record_time
SETTINGS index_granularity = 8192 │
└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘

1 rows in set. Elapsed: 0.017 sec. 

```

#### 查看表字段名称和类型

`desc <table_name>`

```
v1 :) desc t_alarm_feature_value

DESCRIBE TABLE t_alarm_feature_value

Query id: 065113b6-be41-4471-a09e-8a98d1cc6ef4

┌─name─────────┬─type───┬─default_type─┬─default_expression─┬─comment─┬─codec_expression─┬─ttl_expression─┐
│ name         │ String │              │                    │         │                  │                │
│ record_time  │ UInt64 │              │                    │         │                  │                │
│ start_time   │ UInt64 │              │                    │         │                  │                │
│ alarm_level  │ UInt8  │              │                    │         │                  │                │
│ alarm_rule   │ String │              │                    │         │                  │                │
│ is_ipv6      │ UInt8  │              │                    │         │                  │                │
│ src_ip       │ IPv6   │              │                    │         │                  │                │
│ src_port     │ UInt16 │              │                    │         │                  │                │
│ src_country  │ String │              │                    │         │                  │                │
│ src_province │ String │              │                    │         │                  │                │
│ src_city     │ String │              │                    │         │                  │                │
│ dst_ip       │ IPv6   │              │                    │         │                  │                │
│ dst_port     │ UInt16 │              │                    │         │                  │                │
│ dst_country  │ String │              │                    │         │                  │                │
│ dst_province │ String │              │                    │         │                  │                │
│ dst_city     │ String │              │                    │         │                  │                │
└──────────────┴────────┴──────────────┴────────────────────┴─────────┴──────────────────┴────────────────┘

16 rows in set. Elapsed: 0.004 sec. 

```

