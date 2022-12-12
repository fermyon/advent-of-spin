POST http://localhost:3000/distance-latlong
{
    "d1": {
        "lat": 0,
        "long": 0,
    },
    "d2": {
        "lat": 0,
        "long": 0
    }
}

HTTP/* 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.distance" == 0

POST http://localhost:3000/distance-latlong
{
    "d1": {
        "lat": 0.1,
        "long": 0.1,
    },
    "d2": {
        "lat": 0.3,
        "long": 0.3
    }
}

HTTP/* 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.distance" == 17

POST http://localhost:3000/distance-latlong
{
    "d1": {
        "lat": -0.1,
        "long": -0.1,
    },
    "d2": {
        "lat": 0.3,
        "long": 0.3
    }
}

HTTP/* 200
[Asserts]
header "Content-Type" == "application/json"
jsonpath "$.distance" == 34
