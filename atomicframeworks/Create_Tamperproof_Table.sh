CREATE_SQL=$(cat << EOM

  CREATE TABLE SXTTemp_TP.TestTP_atomicframeworks_V1
  ( MyID              BIGINT
  , MyText            VARCHAR
  , PROOF_ORDER       BIGINT
  , primary key(MyID)
  )
with "tamperproof=true, immutable=true, access_type=public_read, public_key=$RESOURCE_PUBLIC_KEY" 

EOM
)
	
	

sxtcli sql \
  --url=$API_URL \
  --accessToken=$ACCESS_TOKEN \
  --sqlText="$CREATE_SQL" \
  --biscuits=$ADMIN_BISCUIT



##### Insert

INSERT_SQL=$(cat << EOM

INSERT INTO SXTTemp_TP.TestTP_atomicframeworks_V1
(MyID, MyText, PROOF_ORDER)  
VALUES  
  ( 1, 'Foo', 10)
, ( 2, 'Bar', 20)
, ( 3, 'Baz', 30) 
, ( 4, 'Qux', 40)
, ( 5, 'Regoob', 50)

EOM
)

sxtcli sql \
  --url=$API_URL \
  --accessToken=$ACCESS_TOKEN \
  --sqlText="$INSERT_SQL" \
  --biscuits=$ADMIN_BISCUIT



###### Select

SELECT_SQL="SELECT * FROM SXTTemp_TP.TestTP_atomicframeworks_V1"


sxtcli sql \
  --url=$API_URL \
  --accessToken=$ACCESS_TOKEN \
  --sqlText="$SELECT_SQL" \
  --biscuits=$ADMIN_BISCUIT

