# Test how many present can be in Santa's sack, when he has to travel the least
# Please note, that we will a different set of numbers when validating your submission
POST http://localhost:3001/
{
    "kids": [5, 1, 4, 3],
    "weight": [12, 20, 23, 10],
    "capacity": 50
}

HTTP 200
[Asserts]
jsonpath "$.kids" == 12
