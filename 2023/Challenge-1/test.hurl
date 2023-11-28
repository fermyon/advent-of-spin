# Test 1: Check there's an index.html to take a picture of
GET http://localhost:3000/index.html

HTTP 200

# Test 2: Posting a key called 'advent', with a random value
POST http://localhost:3000/data?advent
{
    "value": "of Spin"
}

HTTP 201

# Tets 3: Getting the key we just posted to check it was persisted
GET http://localhost:3000/data?advent

HTTP 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.value" == "of Spin"
