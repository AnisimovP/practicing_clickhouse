create table db1.test_table
(
    name String, -- Corrected data type declaration
    phone Int32,
    date_added Date default toDate(now()),
    customer_id Int32
)
engine = MergeTree
order by customer_id
partition by toMonth(date_added);

insert into db1.test_table (name, phone, customer_id) values('IGOR', 334556, 1);

insert into db1.test_table (name, phone, date_added, customer_id) values('DARIA', 5312312, '2021-11-11', 2);

ALTER table db1.test_table add column last_name String;

ALTER table db1.test_table drop column last_name;

TRUNCATE table db1.test_table;

drop table db1.test_table;