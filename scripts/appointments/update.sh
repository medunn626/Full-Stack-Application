curl --include --request PATCH "http://localhost:4741/appointments/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "appointment": {
    "barber_id": "'"${BARBER_ID}"'",
    "date": "'"${DATE}"'"
  }
}'
