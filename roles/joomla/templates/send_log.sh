#!/bin/bash
lines=$(cat /etc/nginx/404.log | wc -l)
email="myemail@domain.com"

if (( lines >= 10 ))
then
  echo "More than 10 404 requests been made on your webpage" | mailx -s "404 requests" ${email} | cat /dev/null > 404.log;
elif (( lines < 10 ))
then
exit
fi
