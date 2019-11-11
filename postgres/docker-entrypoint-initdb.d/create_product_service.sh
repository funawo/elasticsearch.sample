#!/bin/sh
set -e

psql -U $POSTGRES_USER -c " \
    create table product_service ( \
        id SERIAL NOT NULL, \
        hznflg varchar(2), \
        product_service_name varchar(5000), \
        rui_cd varchar(1000), \
        PRIMARY KEY (id) \
    );"
psql -U $POSTGRES_USER -c "\copy public.product_service (hznflg, product_service_name, rui_cd) from '/tmp/saiyo_mei.csv' with csv header"
