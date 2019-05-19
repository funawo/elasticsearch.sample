#!/bin/sh
set -e

psql -U $POSTGRES_USER -c " \
    create table test2 ( \
        id varchar(10) primary key, \
	name varchar(50) , \
	name_kana varchar(50) , \
	sex varchar(3), \
	phone varchar(20), \
	birthday date \
    );"
psql -U $POSTGRES_USER -c "\copy public.test2 from '/tmp/personal_infomation.csv' with csv header"
