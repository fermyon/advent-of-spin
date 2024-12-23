# No Spoilers here :D 
# Test 1: Check for the solution
GET http://localhost:3000/api/my
HTTP 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.favorite" != null