# Test 1: Check there's an index.html to take a picture of
GET http://localhost:3000/#/naughty-or-nice

HTTP 200


# Test 2: Getting John Doe's naughty-or-nice-score
GET http://localhost:3000/api/naughty-or-nice/John%20Doe

HTTP 200

[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.name" == "John Doe"
jsonpath "$.score" > 0
jsonpath "$.score" < 100