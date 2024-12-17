# Test 1: Check there's an gift-suggestions view
GET http://localhost:3000/#/gift-suggestions
HTTP 200


# Test 2: Getting Riley Parker's gift suggestions
POST http://localhost:3000/api/generate-gift-suggestions
{
    "name": "Riley Parker",
    "age" : 15,
    "likes": "Computers, Programming, Mechanical Keyboards"
}
HTTP 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.name" == "Riley Parker"
jsonpath "$.giftSuggestions" != null

# Test 3: Passing a wrong payload to gift suggestions endpoint
POST http://localhost:3000/api/generate-gift-suggestions
{
    "foo": "bar"
}
HTTP 400