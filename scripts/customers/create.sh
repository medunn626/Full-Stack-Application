curl --include --request POST "http://localhost:4741/customers" \
--header "Content-Type: application/json" \
--data '{
  "customer": {
    "name:" "'"${NAME}"'",
    "zip": "'"${ZIP}"'",
    "services": "'"${SERVICES}"'",
    "max_price" "'"${MAX_PRICE}"'",
    "best_day": "'"${BEST_DAY}"'",
    "best_time": "'"${BEST_TIME}"'"
  }
}'
