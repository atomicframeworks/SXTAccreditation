# Create query to get all the times BananaGun token has been burned
# --give me each transaction id, from address, and number of tokensm and the date of transaction to the burn address(0x000000000000000000000000000000000000dead) and make sure the token sent address is 0x38e68a37e401f7271568cecaac63c6b1e19130b4 (BananaGun Token)

CREATE_VIEW_SQL=$(cat << EOM

CREATE VIEW SXTTemp.bananagun_burn_events_atomicframeworks
with "public_key=$RESOURCE_PUBLIC_KEY, access_type=public_read"
as
---
SELECT
  t.transaction_hash,
  t.from_,
  t.value_,
  t.time_stamp
FROM
  ETHEREUM.ERC20_EVT_TRANSFER t
WHERE
  t.to_ = '0x000000000000000000000000000000000000dead'
  AND t.contract_address = '0x38e68a37e401f7271568cecaac63c6b1e19130b4';

EOM
)
 
 
 

sxtcli sql \
  --url=$API_URL \
  --accessToken=$ACCESS_TOKEN \
  --sqlText="$CREATE_VIEW_SQL" \
  --biscuits=$ADMIN_BISCUIT




##### Create materalized view



CREATE_MATERIALIZED_VIEW_SQL=$(cat << EOM

CREATE VIEW SXTTemp.mv_bananagun_burn_events_atomicframeworks
with "public_key=$RESOURCE_PUBLIC_KEY, access_type=public_read, refresh_interval=1440"
as
---
SELECT
  t.transaction_hash,
  t.from_,
  t.value_,
  t.time_stamp
FROM
  ETHEREUM.ERC20_EVT_TRANSFER t
WHERE
  t.to_ = '0x000000000000000000000000000000000000dead'
  AND t.contract_address = '0x38e68a37e401f7271568cecaac63c6b1e19130b4';

EOM
)
	
	
sxtcli sql \
  --url=$API_URL \
  --accessToken=$ACCESS_TOKEN \
  --sqlText="$CREATE_MATERIALIZED_VIEW_SQL" \
  --biscuits=$ADMIN_BISCUIT