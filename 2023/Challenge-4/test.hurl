# Test that you played the game with a given Id, and that you solved it.
# We expect the id in the response to be the UUIDv4 that is your game Id. Psst... We will check in our logs that you actually solved it...
GET http://localhost:3000/

HTTP 200
