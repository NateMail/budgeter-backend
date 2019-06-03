curl "http://localhost:4741/monthlies" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "monthly": {
      "income": "'"${INC}"'",
      "deposited": "'"${DEP}"'"
    }
  }'
