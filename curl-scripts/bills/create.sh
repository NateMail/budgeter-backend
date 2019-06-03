curl "http://localhost:4741/bills" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
        "name": "'"${NAME}"'",
        "amount": "'"${AMOUNT}"'",
        "due": "'"${DUE}"'"
    }
  }'
