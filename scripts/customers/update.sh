curl --include --request PATCH "http://localhost:4741/customers/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "customer": {
    "name": "'"${NAME}"'",
    "zip": "'"${ZIP}"'",
    "services": "'"${SERVICES}"'",
    "max_price": "'"${MAX_PRICE}"'",
    "best_day": "'"${BEST_DAY}"'",
    "best_time": "'"${BEST_TIME}"'"
  }
}'
