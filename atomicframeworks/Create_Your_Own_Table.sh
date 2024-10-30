CREATE_SQL=$(cat << EOM

  CREATE TABLE SXTTemp.Test_atomicframeworks
  ( MyID              INTEGER
  , MyBigint          BIGINT
  , MyText            VARCHAR
  , MyDate            DATE
  , MyBoolean         BOOLEAN
  , MyDecimal         DECIMAL(18,2)
  , MyFloat           FLOAT
  , MyJson            JSONB
  , MyTimestamp       TIMESTAMP
  , primary key(MyID)
  )
  with "public_key=$RESOURCE_PUBLIC_KEY,access_type=permissioned"

EOM
)