import Sack

let req = Sack.Request("GET", "http://google.com")
print(req.url.scheme)
