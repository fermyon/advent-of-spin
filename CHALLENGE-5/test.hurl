PUT http://localhost:3000/{{key}}
{
  "value": "{{value}}"
}


HTTP/* 200

GET http://localhost:3000/{{ key }}

HTTP/* 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.value" == {{ value }}
