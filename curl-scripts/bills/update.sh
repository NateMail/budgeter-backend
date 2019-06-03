curl "http://localhost:4741/bills"/${ID} \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "name": "'"${NAME}"'",
      "amount": "'"${AMOUNT}"'",
      "due": "'"${DUE}"'"
    }
  }'
