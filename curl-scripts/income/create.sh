curl "http://localhost:4741/monthlies" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "monthly": {
      "income": "'"${INC}"'",
      "deposited": "'"${DEP}"'"
    }
  }'
