#!/bin/bash
## Semaphore Arrays - pid 검사를 통해 종료된 pid 값을 가진 Semaphore Arrays를 종료 시킨다. 
for a in `/usr/bin/ipcs -s|awk '$2~/[0-9]/{print $2}'`
  do sem_pid=`ipcs -si $a|sed '/^$/d'|tail -1|awk '$5~/[0-9]/{print $5}'`
  if [[ -z  `ps -e|awk '$1~/^'$sem_pid'$/{print}'` ]];then /usr/bin/ipcrm -s $a;fi
  done
