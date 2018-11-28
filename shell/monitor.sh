#!/bin/bash



hrly_wt=5
wkly_wt=10
mtly_wt=20



fun(){
  echo "fun is begin.timeNum:$timeNum"
  local timeNum=$1 #吃fun 後面接續的第一個參數。
  sleep $timeNum
  wait  # 等待前面的sleep

  echo "fun is end.timeNum:$timeNum"

}

fun $hrly_wt &  #要先執行完才會接續執行。
fun $wkly_wt & #拋到後面執行。

wait #需要等到上一個job（包含背景的）執行完才會接續執行。
echo "all is ending"

##
sleep 3
echo $! # 測試上一個 PID

#echo "Hello World!"
#echo "wait 3 sec!"
#sleep 3
#echo "wait 5 sec!"
#sleep 5
#echo "finished"


