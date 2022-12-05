GET http://localhost:3000/

HTTP/* 404

GET http://localhost:3000/lowercase
{
  "value": "FeRMyon"
}

[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.message" == "fermyon"


HTTP/* 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.message" == "Hello, rawkode!"


GET http://localhost:3000/hello

HTTP/* 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.message" == "Hello, world!"

GET http://localhost:3000/hello/RaWkOdE

HTTP/* 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.message" == "Hello, rawkode!"

