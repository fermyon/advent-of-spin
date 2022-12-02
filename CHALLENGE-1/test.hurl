GET http://localhost:3000/

HTTP/* 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.message" == "Hello, World!"
