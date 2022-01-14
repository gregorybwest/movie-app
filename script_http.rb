require "http"

puts HTTP.get("http://localhost:3000/movies").body

puts HTTP.get("http://localhost:3000/movies/2").body



