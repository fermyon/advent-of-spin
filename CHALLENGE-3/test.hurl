GET http://localhost:3000/

HTTP/* 200
[Asserts]
header "Content-Type" == "text/html"
body contains "<h1>Welcome to the Advent of Spin!</h1>"
body contains "Santa's on his way"
