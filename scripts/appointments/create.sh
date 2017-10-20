curl --include --request POST "http://localhost:4741/appointments" \
--header "Content-Type: application/json" \
--data '{
  "appointment": {
    "customer_id": "'"${CUSTOMER_ID}"'",
    "barber_id": "'"${BARBER_ID}"'",
    "date": "'"${DATE}"'"
  }
}'
