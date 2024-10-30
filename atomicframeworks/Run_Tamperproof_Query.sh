SQL="SELECT Event_Date, sum(TempC) as SumTemp, count(*) as CntTemp FROM SXTDemo_TP.Temperature_v01 GROUP BY Event_Date"

curl --request POST \
     --url https://api.spaceandtime.app/v2/sql/tamperproof-query \
     --header 'content-type: application/json' \
     --header "authorization: Bearer $ACCESS_TOKEN" \
     --data '{ "sqlText": "'"$SQL"'" }'



#### Normal Endpoint

SQL="SELECT Event_Date, sum(TempC) as SumTemp, count(*) as CntTemp FROM SXTDemo_TP.Temperature_v01 GROUP BY Event_Date"
     
curl --request POST \
     --url https://api.spaceandtime.app/v1/sql \
     --header 'content-type: application/json' \
     --header "authorization: Bearer $ACCESS_TOKEN" \
     --data '{ "sqlText": "'"$SQL"'" }'