# Test how many present can be in Santa's sack, when he has to travel the least
# Please note, that we will a different set of numbers when validating your submission
POST http://localhost:3000/
{
    "place": "North Pole",
    "characters": ["Santa Claus", "The Grinch", "a pingvin"],
    "objects": ["A spoon", "Two presents", "Palm tree"]
}

HTTP 200
[Asserts]
jsonpath "$.story" != null
