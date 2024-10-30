# Optionally, let's test our ACCESS_TOKEN
curl --request POST \
--url "https://api.spaceandtime.app/v1/sql" \
--header "accept: application/json" \
--header "authorization: Bearer $ACCESS_TOKEN" \
--header "content-type: application/json" \
--data '{
    "sqlText": "Select count(*) as Blocks_Yesterday from Ethereum.Blocks where time_stamp between current_date-1 and current_date"
}'

# Run a Query with SXTCLI
SQL="Select cast(time_stamp as date) as Block_Date, count(*) as Block_Count from ZKSYNCERA.BLOCKS where time_stamp between current_date-3 and current_date group by 1 order by 1"

sxtcli sql --url=$API_URL --accessToken=$ACCESS_TOKEN --sqlText="$SQL"