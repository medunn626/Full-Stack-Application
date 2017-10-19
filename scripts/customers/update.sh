curl --include --request PATCH "http://localhost:4741/customers/${ID}" \
--header "Content-Type: application/json" \
--data '{
  "customer": {
    "zip": "'"${ZIP}"'",
    "services": "'"${SERVICES}"'",
    "max_price" "'"${MAX_PRICE}"'",
    "born_on": "'"${BORN_ON}"'",
    "best_day": "'"${BEST_DAY}"'",
    "best_time": "'"${BEST_TIME}"'"
  }
}'
