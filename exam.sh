#!/bin/bash
function get_card {
echo "$(date)" >> ./exam_TANCHALEUNE/exam_bash/sales.txt
for x in 'rtx3060' 'rtx3070' 'rtx3080' 'rtx3090' 'rx6700'
do
result=`curl -s "http://0.0.0.0:5000/$x"`
echo $x:$result >> ./exam_TANCHALEUNE/exam_bash/sales.txt

done
}
get_card

#echo "Cron Job" >> ./exam_TANCHALEUNE/exam_bash/cron.txt
