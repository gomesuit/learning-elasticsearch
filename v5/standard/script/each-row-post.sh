#!/bin/bash
lineNum=1

cat $1 | while read JSON_DATA
do
    curl -XPUT "192.168.33.10:9200/bulk_table/users/${lineNum}" -d "${JSON_DATA}" 
    lineNum=$((lineNum + 1))
done
