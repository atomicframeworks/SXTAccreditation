INSERT_SQL=$(cat << EOM

  INSERT INTO SXTLABS.LEARN_Biscuits (TABLENAME, USER_ID, Insert_Timestamp, BISCUIT_NAME, BISCUIT)
  VALUES
     ('SXTTemp.Test_atomicframeworks', 'atomicframeworks', CURRENT_TIMESTAMP, 'SELECT', 'EvQBCokBCg5zeHQ6Y2FwYWJpbGl0eQoKZHFsX3NlbGVjdAodc3h0dGVtcC50ZXN0X2F0b21pY2ZyYW1ld29ya3MKFDIwMjQtMTItMzFUMjM6NTk6NTlaGAMiDwoNCIAIEgMYgQgSAxiCCDIjCiEKAggbEgYIBRICCAUaEwoECgIIBQoFCgMYgwgKBBoCCAISJAgAEiDR6dA6v6CJpp2Hv4bbkClftQqsKQN5eciUFN8JgthZcBpAKcxxneLUsmljXs9c2OMgdknn6Fvvri9QdovVQEyRNEqt90z8cUaDVKhYMGB2Ah66G3nR9zTzqd3mV8YnTVWoASIiCiBc0Gvk8190e2USDRlcCRwG-F98FxkLwLUb3RPP4ptUFA==' )
   , ('SXTTemp.Test_atomicframeworks', 'atomicframeworks', CURRENT_TIMESTAMP, 'APPEND', 'ErgBCk4KDnN4dDpjYXBhYmlsaXR5CgpkbWxfaW5zZXJ0Ch1zeHR0ZW1wLnRlc3RfYXRvbWljZnJhbWV3b3JrcxgDIg8KDQiACBIDGIEIEgMYgggSJAgAEiCceX5nlKzVYQWKA7qlYCXcLTpS5j42_CqjmmkYXeIIOxpAzF2kjHZt7gdgKmgd6CRuYis8u2PcluAb-hj2ARAQefYOPBXfOnFweNdcgQTt6NUnUFHJiE7wKtFTzlQ77rawDSIiCiDWaROG3a2ldv0YCw2JoKP0sr7lUrGvB1qyF4UNttrzpw==' )
   , ('SXTTemp.Test_atomicframeworks', 'atomicframeworks', CURRENT_TIMESTAMP, 'LOADER', 'EvYCCosCCg5zeHQ6Y2FwYWJpbGl0eQoKZG1sX2luc2VydAodc3h0dGVtcC50ZXN0X2F0b21pY2ZyYW1ld29ya3MKCmRtbF91cGRhdGUKCWRtbF9tZXJnZQoKZG1sX2RlbGV0ZQoKZHFsX3NlbGVjdAoQc3h0OnN1YnNjcmlwdGlvbgokOGNiNjBiNGItMWY2Ny00MjNjLWFhZDEtZTVkZjQ3OGEwYzA1GAMiDwoNCIAIEgMYgQgSAxiCCCIPCg0IgAgSAxiDCBIDGIIIIg8KDQiACBIDGIQIEgMYgggiDwoNCIAIEgMYhQgSAxiCCCIPCg0IgAgSAxiGCBIDGIIIMhAKDgoCCBsSCAiHCBIDGIgIEiQIABIg8KfY5-OXB1TQsT1zhH3JKIQ7K0-MO4gASTwUHYG85SQaQBDotD7M2gklDpcOFCKc-IOgMMYY5gjGxMcUwZvMDEVXqsie8n8OH0PqMV7ox51P1HqKqKOSbKrlU-uJ1_dVmQUiIgog8_ulvKYYwlXlRlBhKQGjYgI4Rhpc4ZrE8XKeYefW_9Q=' )

EOM
)

sxtcli sql \
  --url=$API_URL \
  --accessToken=$ACCESS_TOKEN \
  --sqlText="$INSERT_SQL" \
  --biscuits=$INSERT_ONLY_BISCUIT