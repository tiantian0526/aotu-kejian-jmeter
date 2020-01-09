#!/bin/bash

jmeter -n -t src/kejian.jmx -l src/result_`date +%Y%m%d%H%M%S`.jtl -e -o src/rpt
sleep 1
echo "test end"


#cp -R src/ /data/
#cd /data
#mv src src_`date +%Y%m%d%H%M%S`
#cd /usr/target/


echo "start java"
java -jar /usr/target/bin/test.jar
