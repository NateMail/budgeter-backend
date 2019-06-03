curl "http://localhost:4741/monthlies"/${ID} \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  # --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "monthly": {
      "income": "'"${INC}"'",
      "deposited": "'"${DEP}"'"
    }
  }'
